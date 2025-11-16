import { getJSON, postJSON } from './api.js';

const params = new URLSearchParams(location.search);
const livroId = params.get('id');

const box = document.getElementById('livroBox');
const btnAvaliar = document.getElementById('btnAvaliar');
const modal = document.getElementById('avaliacaoModal');
const fechar = document.getElementById('fecharModal');
const form  = document.getElementById('formAvaliacao');
const feedContainer = document.getElementById('feedContainer');

let livroAtual = null; 

function usuarioAtual(){
  const raw = localStorage.getItem('usuario');
  return raw ? JSON.parse(raw) : null;
}

function abrir(){ 
  const modalNomeLivro = document.getElementById('modalNomeLivro');
  
  if (modalNomeLivro && livroAtual) {
    modalNomeLivro.textContent = livroAtual.titulo.trim();
  }
  
  modal.classList.remove('hidden'); 
}

function fecharM(){ modal.classList.add('hidden'); }

function renderAvaliacao(avaliacao) {
  const card = document.createElement('div');
  card.className = 'bg-white rounded-2xl shadow p-4';
  const estrelas = '⭐'.repeat(avaliacao.nota);
  const comentarioHTML = avaliacao.comentario
    ? `<p class="text-gray-700 mt-2">${avaliacao.comentario.trim()}</p>`
    : '<p class="text-gray-500 italic mt-2">(Sem comentário)</p>';

  card.innerHTML = `
    <div class="flex justify-between items-center">
      <h4 class="font-semibold text-lg">${avaliacao.nome_pessoa}</h4>
      <span class="text-sm text-gray-500">${avaliacao.data_formatada}</span>
    </div>
    <div class="text-lg text-yellow-500">${estrelas}</div>
    ${comentarioHTML}
  `;
  return card;
}

async function carregarFeed(idDoLivro) {
  if (!feedContainer) return;
  feedContainer.innerHTML = '<p class="text-white">Carregando avaliações...</p>';
  try {
    const lista = await getJSON(`/livros/${idDoLivro}/avaliacoes`);
    feedContainer.innerHTML = ''; 
    if (!lista.length) {
      feedContainer.innerHTML = '<p class="text-white">Este livro ainda não tem avaliações. Seja o primeiro!</p>';
      return;
    }
    lista.forEach(avaliacao => {
      feedContainer.appendChild(renderAvaliacao(avaliacao));
    });
  } catch (e) {
    console.error('Falha ao carregar feed', e);
    feedContainer.innerHTML = '<p class="text-red-300">Erro ao carregar avaliações.</p>';
  }
}

async function carregar(){
  if(!livroId){ box.textContent = 'Livro não informado.'; return; }
  
  try{
    const l = await getJSON(`/livros/${livroId}`);
    
    livroAtual = l; 

    box.innerHTML = `
      <h2 class="text-xl mb-2">${l.titulo.trim()}</h2>
      <p><span class="text-gray-600">Autor:</span> ${l.autor ? l.autor.trim() : '-'}</p>
      <p><span class="text-gray-600">Gênero:</span> ${l.genero ? l.genero.trim() : '-'}</p>
    `;
    await carregarFeed(livroId);

  }catch(e){
    box.textContent = 'Erro ao carregar livro.';
  }
}

btnAvaliar?.addEventListener('click', ()=>{
  const u = usuarioAtual();
  if(!u){
    alert('Você precisa definir um usuário em usuarios.html antes de avaliar.');
    location.href = 'usuarios.html';
    return;
  }
  abrir(); 
});

fechar?.addEventListener('click', fecharM);

form?.addEventListener('submit', async (ev)=>{
  ev.preventDefault();
  const u = usuarioAtual();
  if(!u){ alert('Usuário não encontrado.'); return; }
  const fd = new FormData(form);
  
  const payload = {
    livro_id: Number(livroId),
    usuario_id: Number(u.id),
    nota: Number(fd.get('nota')),
    comentario: (fd.get('comentario')||'').trim() || null
  };
  
  try{
    await postJSON('/avaliacoes', payload);
    alert('Avaliação registrada!');
    fecharM();
    form.reset();
    await carregarFeed(livroId); 
  }catch(e){
    alert('Erro ao avaliar: ' + e.message);
  }
});

carregar();