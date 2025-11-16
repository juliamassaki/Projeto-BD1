import { getJSON } from './api.js';

const tbody = document.getElementById('usuariosTableBody');
const busca = document.getElementById('buscaUsuario');
const btnBuscar = document.getElementById('btnBuscar');

function linhaPessoa(p) {
  const tr = document.createElement('tr');
  tr.innerHTML = `
    <td class="p-2">${p.nome}</td>
    <td class="p-2">${p.email.trim()}</td> <td class="p-2">
      <a class="underline" style="color: #0047FF;" href="perfil.html?id=${p.id}">Ver Perfil</a>
    </td>
  `;
  return tr;
}

async function carregar(filtro = '') {
  tbody.innerHTML = '<tr><td class="p-2" colspan="3">Carregando...</td></tr>';
  try {
    const qs = filtro ? `?q=${encodeURIComponent(filtro)}` : '';
    const data = await getJSON('/pessoas' + qs); 
    
    tbody.innerHTML = '';
    if (!data.length) {
      tbody.innerHTML = '<tr><td class="p-2" colspan="3">Nenhum usuário encontrado.</td></tr>';
      return;
    }
    data.forEach(p => tbody.appendChild(linhaPessoa(p)));
  } catch (e) {
    console.error(e);
    tbody.innerHTML = '<tr><td class="p-2" colspan="3">Erro ao carregar usuários.</td></tr>';
  }
}

btnBuscar?.addEventListener('click', () => carregar(busca.value.trim()));
busca?.addEventListener('keydown', (ev) => { if (ev.key === 'Enter') { ev.preventDefault(); carregar(busca.value.trim()); } });

carregar();