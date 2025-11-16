import { getJSON } from './api.js';

const params = new URLSearchParams(location.search);
const pessoaId = params.get('id');

const perfilBox = document.getElementById('perfilBox');
const feedContainer = document.getElementById('feedContainer');
const nomeUsuarioFeed = document.getElementById('nomeUsuarioFeed');

function renderAvaliacao(avaliacao) {
  const card = document.createElement('div');
  card.className = 'bg-white rounded-2xl shadow p-4';
  
  const estrelas = '⭐'.repeat(avaliacao.nota);
  
  const comentarioHTML = avaliacao.comentario
    ? `<p class="text-gray-700 mt-2">${avaliacao.comentario}</p>`
    : '<p class="text-gray-500 italic mt-2">(Sem comentário)</p>';

  card.innerHTML = `
    <div class="flex justify-between items-center">
      <h4 class="font-semibold text-lg">${avaliacao.livro_titulo}</h4>
      <span class="text-sm text-gray-500">${avaliacao.data_formatada}</span>
    </div>
    <div class="text-lg text-yellow-500">${estrelas}</div>
    ${comentarioHTML}
  `;
  return card;
}

async function carregarPerfil() {
  if (!pessoaId) {
    perfilBox.textContent = 'ID do usuário não informado.';
    return;
  }
  
  perfilBox.innerHTML = '<p>Carregando perfil...</p>';
  feedContainer.innerHTML = '<p class="text-white">Carregando avaliações...</p>';
  
  try {
    const pessoa = await getJSON(`/pessoas/${pessoaId}`);
    
    perfilBox.innerHTML = `
      <h2 class="text-xl mb-2">${pessoa.nome}</h2>
      <p><span class="text-gray-600">E-mail:</span> ${pessoa.email.trim()}</p>
    `;
    nomeUsuarioFeed.textContent = pessoa.nome;

    const listaFeed = await getJSON(`/pessoas/${pessoaId}/avaliacoes`);
    
    feedContainer.innerHTML = '';
    
    if (!listaFeed.length) {
      feedContainer.innerHTML = '<p class="text-white">Este usuário ainda não fez nenhuma avaliação.</p>';
      return;
    }
    
    listaFeed.forEach(avaliacao => {
      feedContainer.appendChild(renderAvaliacao(avaliacao));
    });

  } catch (e) {
    console.error('Erro ao carregar perfil', e);
    perfilBox.textContent = 'Erro ao carregar perfil do usuário.';
    feedContainer.innerHTML = '<p class="text-red-300">Erro ao carregar avaliações.</p>';
  }
}

carregarPerfil();