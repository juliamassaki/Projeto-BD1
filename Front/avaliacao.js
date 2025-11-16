import { getJSON, postJSON } from './api.js';

const inputBusca   = document.getElementById('buscaLivroInput');
const datalist     = document.getElementById('listaLivros');
const hiddenId     = document.getElementById('livroIdSelecionado');
const form         = document.getElementById('formAvaliacaoRapida');

let cacheLivros = [];
let ultimoTexto = ''; 

function usuarioAtual(){
  const raw = localStorage.getItem('usuario');
  return raw ? JSON.parse(raw) : null;
}

function labelLivro(l){
  const autor = l.autor ?? '-';
  return `${l.titulo} — ${autor}`;
}

function preencherDatalist(lista){
  datalist.innerHTML = '';
  lista.forEach(l => {
    const opt = document.createElement('option');
    opt.value = labelLivro(l);
    datalist.appendChild(opt);
  });
}

async function buscarLivros(texto){
  if (texto === ultimoTexto) return;
  ultimoTexto = texto;

  try{
    const qs = texto && texto.length >= 3 ? `?q=${encodeURIComponent(texto)}` : '';
    const lista = await getJSON('/livros' + qs);
    cacheLivros = (Array.isArray(lista) ? lista : []).map(l => ({
    ...l,
    id: l.id, 
    titulo: l.titulo.trim(),
    autor: l.autor.trim(),
    genero: (l.genero || '').trim() 
    }));
    preencherDatalist(cacheLivros);
  }catch(e){
    cacheLivros = [];
    datalist.innerHTML = '';
    console.error('Falha ao buscar livros:', e);
  }
}

function resolverIdPeloTexto(texto){
  const alvo = cacheLivros.find(l => labelLivro(l).toLowerCase() === texto.toLowerCase());
  return alvo ? Number(alvo.id) : null;
}

function debouncer(fn, wait=250){
  let t;
  return (...args)=>{
    clearTimeout(t);
    t = setTimeout(()=> fn(...args), wait);
  };
}

const debouncedSearch = debouncer((e)=>{
  const txt = inputBusca.value.trim();
  buscarLivros(txt);
}, 250);

inputBusca.addEventListener('input', debouncedSearch);

inputBusca.addEventListener('change', ()=>{
  const txt = inputBusca.value.trim();
  const id = resolverIdPeloTexto(txt);
  hiddenId.value = id || '';
});

buscarLivros('');

form?.addEventListener('submit', async (ev)=>{
  ev.preventDefault();

  const u = usuarioAtual();
  if(!u){
    alert('Defina um usuário em usuarios.html antes de avaliar.');
    location.href = 'usuarios.html';
    return;
  }

  if(!hiddenId.value){
    const tentativaId = resolverIdPeloTexto(inputBusca.value.trim());
    if(tentativaId) hiddenId.value = tentativaId;
  }

  const livroId = Number(hiddenId.value);
  if(!livroId){
    alert('Selecione um livro válido a partir das sugestões.');
    inputBusca.focus();
    return;
  }

  const fd = new FormData(form);
  const payload = {
    livro_id: livroId,
    usuario_id: Number(u.id),
    nota: Number(fd.get('nota')),
    comentario: (fd.get('comentario') || '').trim() || null
  };

  try{
    await postJSON('/avaliacoes', payload);
    alert('Avaliação registrada!');
    form.reset();
    hiddenId.value = '';
  }catch(e){
    alert('Erro ao avaliar: ' + e.message);
  }
});
