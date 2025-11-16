import { getJSON, postJSON } from './api.js';

const tbody = document.getElementById('livrosTableBody');
const form  = document.getElementById('formNovoLivro');
const busca = document.getElementById('buscaLivro');
const btnBuscar = document.getElementById('btnBuscar');
const paginationContainer = document.getElementById('paginationContainer'); // (NOVO)

let LIVROS_FILTRADOS = [];
let PAGINA_ATUAL = 1;
const ITENS_POR_PAGINA = 10;

function linhaLivro(l){
  const tr = document.createElement('tr');
  tr.innerHTML = `
    <td class="p-2">${l.titulo}</td>
    <td class="p-2">${l.autor ?? '-'}</td>
    <td class="p-2">${l.genero ?? '-'}</td>
    <td class="p-2">
      <!-- (MUDANÇA AQUI) Corrigi a classe para text-blue-600 para garantir a cor -->
      <a class="text-blue-600 underline" href="livro.html?id=${l.id}">Exibir</a>
    </td>
  `;
  return tr;
}

function renderTabela() {
  tbody.innerHTML = '';
  
  if (LIVROS_FILTRADOS.length === 0) {
    tbody.innerHTML = '<tr><td class="p-2" colspan="4">Nenhum livro encontrado.</td></tr>';
    return;
  }

  const inicio = (PAGINA_ATUAL - 1) * ITENS_POR_PAGINA;
  const fim = inicio + ITENS_POR_PAGINA;
  const livrosDaPagina = LIVROS_FILTRADOS.slice(inicio, fim);

  livrosDaPagina.forEach(l => tbody.appendChild(linhaLivro(l)));
}

function renderPaginacao() {
  paginationContainer.innerHTML = '';
  const totalPaginas = Math.ceil(LIVROS_FILTRADOS.length / ITENS_POR_PAGINA);

  if (totalPaginas <= 1) return;

  const btnPrev = document.createElement('button');
  btnPrev.innerHTML = '&laquo;'; // <<
  btnPrev.className = "px-3 py-1 rounded text-blue-600 hover:bg-blue-100 disabled:opacity-50";
  if (PAGINA_ATUAL === 1) btnPrev.disabled = true;
  btnPrev.addEventListener('click', () => {
    if (PAGINA_ATUAL > 1) {
      PAGINA_ATUAL--;
      renderTabela();
      renderPaginacao();
    }
  });
  paginationContainer.appendChild(btnPrev);

  for (let i = 1; i <= totalPaginas; i++) {
    const btnPagina = document.createElement('button');
    btnPagina.innerText = i;
    
    btnPagina.className = "px-3 py-1 rounded text-blue-600 hover:bg-blue-100";
    if (i === PAGINA_ATUAL) {
      btnPagina.className = "px-3 py-1 rounded bg-blue-600 text-white font-bold";
      btnPagina.disabled = true;
    }
    
    btnPagina.addEventListener('click', () => {
      PAGINA_ATUAL = i;
      renderTabela();
      renderPaginacao();
    });
    paginationContainer.appendChild(btnPagina);
  }
  
  const btnNext = document.createElement('button');
  btnNext.innerHTML = '&raquo;'; // >>
  btnNext.className = "px-3 py-1 rounded text-blue-600 hover:bg-blue-100 disabled:opacity-50";
  if (PAGINA_ATUAL === totalPaginas) btnNext.disabled = true;
  btnNext.addEventListener('click', () => {
    if (PAGINA_ATUAL < totalPaginas) {
      PAGINA_ATUAL++;
      renderTabela();
      renderPaginacao();
    }
  });
  paginationContainer.appendChild(btnNext);
}

async function carregar(filtro = '') {
  tbody.innerHTML = '<tr><td class="p-2" colspan="4">Carregando...</td></tr>';
  paginationContainer.innerHTML = '';
  
  try {
    const qs = filtro ? `?q=${encodeURIComponent(filtro)}` : '';
    const data = await getJSON('/livros' + qs);
    
    LIVROS_FILTRADOS = data;
    PAGINA_ATUAL = 1;
    
    renderTabela();
    renderPaginacao();
    
  } catch (e) {
    console.error(e);
    tbody.innerHTML = '<tr><td class="p-2" colspan="4">Erro ao carregar livros.</td></tr>';
  }
}

form?.addEventListener('submit', async (ev) => {
  ev.preventDefault();
  const fd = new FormData(form);
  const payload = Object.fromEntries(fd.entries());
  try {
    await postJSON('/livros', payload);
    form.reset();
    await carregar(busca.value.trim());
  } catch (e) {
    alert('Erro ao incluir livro: ' + e.message);
  }
});

btnBuscar?.addEventListener('click', () => carregar(busca.value.trim()));
busca?.addEventListener('keydown', (ev) => { if(ev.key === 'Enter') { ev.preventDefault(); carregar(busca.value.trim()); } });

carregar();