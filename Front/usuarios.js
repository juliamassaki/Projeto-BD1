import { postJSON, getJSON } from './api.js';

const formLogin = document.getElementById('formLogin');
const formRegister = document.getElementById('formRegister');
const boxUsuario = document.getElementById('usuarioAtual');
const btnLogout = document.getElementById('btnLogout');
const feedContainer = document.getElementById('feedUsuarioContainer');


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
}

function renderUsuarioAtual(){
  const u = usuarioAtual();
  
  if (u) {
    //qnd logado
    boxUsuario.innerHTML = `
      Logado como: <strong>${u.nome.trim()}</strong>
      &lt;<span style="color: #0047FF;">${u.email.trim()}</span>&gt;
    `;
    
    btnLogout.classList.remove('hidden'); 
    formLogin.classList.add('hidden');
    formRegister.parentElement.classList.add('hidden'); 
    
    carregarFeed(u.id);
    
  } else {
    //qnd deslogado
    boxUsuario.textContent = 'Você não está logado. Faça login ou cadastre-se.';
    
    btnLogout.classList.add('hidden');
    formLogin.classList.remove('hidden');
    formRegister.parentElement.classList.remove('hidden');
    
    if(feedContainer) feedContainer.innerHTML = '<p class="text-gray-500">Faça login para ver suas avaliações.</p>';
  }
}

function renderAvaliacao(avaliacao) {
  const card = document.createElement('div');
  card.className = 'border-b border-gray-200 pb-3 mb-3'; 
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

async function carregarFeed(pessoaId) {
  if (!feedContainer) return; 
  feedContainer.innerHTML = '<p class="text-gray-500">Carregando avaliações...</p>';
  try {
    const lista = await getJSON(`/pessoas/${pessoaId}/avaliacoes`); 
    feedContainer.innerHTML = ''; 
    if (!lista.length) {
      feedContainer.innerHTML = '<p class="text-gray-500">Você ainda não fez nenhuma avaliação.</p>';
      return;
    }
    lista.forEach(avaliacao => {
      feedContainer.appendChild(renderAvaliacao(avaliacao));
    });
  } catch (e) {
    console.error('Falha ao carregar feed do usuário', e);
    feedContainer.innerHTML = '<p class="text-red-500">Erro ao carregar suas avaliações.</p>';
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
    alert('Email ou senha incorretos. Tente novamente.');
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
    alert(`Usuário ${u.nome.trim()} cadastrado com sucesso! Faça o login para continuar.`);
  } catch (e) {
    alert('Erro ao cadastrar: Este email já está em uso.');
  }
});

btnLogout?.addEventListener('click', fazerLogout);

renderUsuarioAtual();