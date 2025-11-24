export const API_BASE = (window.API_BASE ?? 'http://localhost:8000');

async function handle(r){
  if(!r.ok){
    const text = await r.text().catch(()=> '');
    const err = new Error(`${r.status} ${r.statusText} ${text}`);
    err.status = r.status;
    throw err;
  }
  const ct = r.headers.get('content-type') || '';
  return ct.includes('application/json') ? r.json() : r.text();
}

export async function getJSON(path){
  return handle(await fetch(API_BASE + path, { credentials: 'include' }));
}

export async function postJSON(path, data){
  return handle(await fetch(API_BASE + path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    credentials: 'include',
    body: JSON.stringify(data)
  }));
}

export async function putJSON(path, data){
  return handle(await fetch(API_BASE + path, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    credentials: 'include',
    body: JSON.stringify(data)
  }));
}

export async function deleteJSON(path){
  return handle(await fetch(API_BASE + path, {
    method: 'DELETE',
    credentials: 'include'
  }));
}
