import { getJSON } from './api.js';

const generoCtx = document.getElementById('generoChart');
const top5Ctx   = document.getElementById('top5Chart');
const mesCtx    = document.getElementById('mesChart');

function mountBar(ctx, labels, data, title){
  if(!ctx) return;
  const backgroundColors = [
    'rgba(59, 130, 246, 0.7)', // Azul
    'rgba(239, 68, 68, 0.7)',  // Vermelho
    'rgba(34, 197, 94, 0.7)',  // Verde
    'rgba(234, 179, 8, 0.7)',  // Amarelo
    'rgba(168, 85, 247, 0.7)', // Roxo
    'rgba(236, 72, 153, 0.7)'  // Rosa
  ];

  const borderColors = [
    'rgb(59, 130, 246)',
    'rgb(239, 68, 68)',
    'rgb(34, 197, 94)',
    'rgb(234, 179, 8)',
    'rgb(168, 85, 247)',
    'rgb(236, 72, 153)'
  ];

  const numBars = data.length;

  new Chart(ctx, {
    type: 'bar',
    data: { 
      labels, 
      datasets: [{ 
        label: title, 
        data,
        backgroundColor: backgroundColors.slice(0, numBars),
        borderColor: borderColors.slice(0, numBars),
        borderWidth: 1
      }] 
    },
    options: { 
      responsive: true, 
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: false 
        }
      }
    }
  });
}

function mountLine(ctx, labels, data, title){
  if(!ctx) return;
  new Chart(ctx, {
    type: 'line',
    data: { labels, datasets: [{ label: title, data }] },
    options: { responsive: true, maintainAspectRatio: false }
  });
}

async function load(){
  try{
    const gen = await getJSON('/relatorios/media-por-genero');
    mountBar(generoCtx, gen.map(r=>r.genero), gen.map(r=>r.media), 'Média');

    const top = await getJSON('/relatorios/top5');
    mountBar(top5Ctx, top.map(r=>r.titulo), top.map(r=>r.media), 'Média');

    const serie = await getJSON('/relatorios/avaliacoes-por-mes');
    mountLine(mesCtx, serie.map(r=>r.mes), serie.map(r=>r.qtd), 'Avaliações');
  }catch(e){
    console.error(e);
    alert('Falha ao carregar relatórios. Ajuste API_BASE em js/api.js se necessário.');
  }
}
load();
