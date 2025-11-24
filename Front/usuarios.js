import { postJSON, getJSON, putJSON, deleteJSON } from './api.js';

const formLogin = document.getElementById('formLogin');
const formRegister = document.getElementById('formRegister');
const boxUsuario = document.getElementById('usuarioAtual');
const btnLogout = document.getElementById('btnLogout');
const feedContainer = document.getElementById('feedUsuarioContainer');

const modal = document.getElementById('modalEdicao');
const formEdicao = document.getElementById('formEdicao');
const btnFecharModal = document.getElementById('fecharModal');
const nomeLivroEdicao = document.getElementById('nomeLivroEdicao');

let avaliacaoEmEdicao = null;


function usuarioAtual(){
  const raw = localStorage.getItem('usuario');
  return raw ? JSON.parse(raw) : null;
}

function setUsuarioLocal(u){
  localStorage.setItem('usuario', JSON.stringify(u));
  renderUsuarioAtual(); 
}

function fazerLogout() {
  localStorage.removeItem('usuario');
  renderUsuarioAtual();
  alert('Você saiu da sua conta.');
}


function abrirModalEdicao(avaliacao) {
  avaliacaoEmEdicao = avaliacao;
  nomeLivroEdicao.textContent = avaliacao.livro_titulo;
  formEdicao.nota.value = avaliacao.nota;
  formEdicao.comentario.value = avaliacao.comentario || '';
  modal.classList.remove('hidden');
}

function fecharModal() {
  modal.classList.add('hidden');
  avaliacaoEmEdicao = null;
}


async function excluirAvaliacao(livroId) {
  if(!confirm("Tem certeza que deseja excluir esta avaliação?")) return;
  const u = usuarioAtual();
  try {
    await deleteJSON(`/avaliacoes/${livroId}/${u.id}`);
    carregarFeed(u.id); 
  } catch (e) {
    alert("Erro ao excluir: " + e.message);
  }
}

formEdicao?.addEventListener('submit', async (ev) => {
  ev.preventDefault();
  if(!avaliacaoEmEdicao) return;

  const u = usuarioAtual();
  const fd = new FormData(formEdicao);
  const payload = {
    livro_id: avaliacaoEmEdicao.idLivro,
    usuario_id: u.id,
    nota: Number(fd.get('nota')),
    comentario: fd.get('comentario')
  };

  try {
    await putJSON(`/avaliacoes/${avaliacaoEmEdicao.idLivro}/${u.id}`, payload);
    alert("Avaliação atualizada!");
    fecharModal();
    carregarFeed(u.id);
  } catch (e) {
    alert("Erro ao editar: " + e.message);
  }
});

btnFecharModal?.addEventListener('click', fecharModal);


function renderAvaliacao(avaliacao) {
  const card = document.createElement('div');
  card.className = 'bg-white rounded-xl shadow-sm border border-gray-100 p-4 mb-4 relative'; 
  
  const estrelas = '⭐'.repeat(avaliacao.nota);
  const comentarioHTML = avaliacao.comentario
    ? `<p class="text-gray-600 mt-2 text-sm leading-relaxed">${avaliacao.comentario}</p>`
    : '<p class="text-gray-400 italic mt-2 text-sm">(Sem comentário)</p>';

  const blocoTopoDireito = `
    <div class="absolute top-4 right-4 flex flex-col items-end">
      <span class="text-xs text-gray-400 mb-1">${avaliacao.data_formatada}</span>
      
      <div class="flex gap-3">
        <button class="btn-editar text-xs font-medium text-blue-500 hover:text-blue-700 hover:underline transition-colors">
          Editar
        </button>
        <button class="btn-excluir text-xs font-medium text-red-500 hover:text-red-700 hover:underline transition-colors">
          Excluir
        </button>
      </div>
    </div>
  `;

  card.innerHTML = `
    ${blocoTopoDireito}

    <div class="pr-32"> <h4 class="font-bold text-gray-800 text-lg mb-1">${avaliacao.livro_titulo}</h4>
      <div class="text-yellow-400 text-sm mb-2">${estrelas}</div>
    </div>
    
    ${comentarioHTML}
  `;

  card.querySelector('.btn-editar').addEventListener('click', () => abrirModalEdicao(avaliacao));
  card.querySelector('.btn-excluir').addEventListener('click', () => excluirAvaliacao(avaliacao.idLivro));

  return card;
}

async function carregarFeed(pessoaId) {
  if (!feedContainer) return; 
  feedContainer.innerHTML = '<p class="text-gray-500 text-center py-4">Carregando avaliações...</p>';
  try {
    const lista = await getJSON(`/pessoas/${pessoaId}/avaliacoes`); 
    feedContainer.innerHTML = ''; 
    if (!lista.length) {
      feedContainer.innerHTML = `
        <div class="text-center py-8 text-gray-400">
          <p>Você ainda não fez nenhuma avaliação.</p>
          <p class="text-sm mt-2">Vá em "Livros" para começar!</p>
        </div>`;
      return;
    }
    lista.forEach(avaliacao => {
      feedContainer.appendChild(renderAvaliacao(avaliacao));
    });
  } catch (e) {
    console.error('Falha ao carregar feed', e);
    feedContainer.innerHTML = '<p class="text-red-500 text-center">Erro ao carregar suas avaliações.</p>';
  }
}

function renderUsuarioAtual(){
  const u = usuarioAtual();
  
  if (u) {
    boxUsuario.innerHTML = `Olá, <strong>${u.nome}</strong>! <span class="text-gray-400 text-xs ml-1">(${u.email})</span>`;
    btnLogout.classList.remove('hidden'); 
    formLogin.classList.add('hidden');
    formRegister.parentElement.classList.add('hidden'); 
    carregarFeed(u.id);
    
  } else {
    boxUsuario.textContent = 'Nenhum usuário ativo.';
    btnLogout.classList.add('hidden'); 
    formLogin.classList.remove('hidden');
    formRegister.parentElement.classList.remove('hidden'); 
    if(feedContainer) feedContainer.innerHTML = '<p class="text-gray-500 text-center py-4">Faça login para ver suas avaliações.</p>';
  }
}


formLogin?.addEventListener('submit', async (ev)=>{
  ev.preventDefault();
  const fd = new FormData(formLogin);
  const payload = Object.fromEntries(fd.entries());
  try {
    const u = await postJSON('/pessoas/login', payload); 
    setUsuarioLocal(u); 
    formLogin.reset();
  } catch (e) {
    alert('Email ou senha incorretos.');
  }
});

formRegister?.addEventListener('submit', async (ev)=>{
  ev.preventDefault();
  const fd = new FormData(formRegister);
  const payload = Object.fromEntries(fd.entries());

  if (payload.senha.length < 4) {
      alert('A senha precisa ter pelo menos 4 caracteres.');
      return;
  }
  
  try {
    const u = await postJSON('/pessoas/register', payload); 
    formRegister.reset();
    alert(`Bem-vindo(a), ${u.nome}! Faça login para continuar.`);
  } catch (e) {
    alert('Erro: Este email já está em uso.');
  }
});

btnLogout?.addEventListener('click', fazerLogout);

renderUsuarioAtual();
