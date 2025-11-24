from fastapi import APIRouter, HTTPException, Query
from typing import Optional
from .. import database as db
from ..models import LivroCreate

router = APIRouter(prefix="/livros", tags=["Livros"])

@router.post("/", status_code=201)
def cadastrar_livro(livro: LivroCreate):
    sql = 'INSERT INTO public."Livro" (titulo, autor, genero) VALUES (%s, %s, %s)'
    params = (livro.titulo, livro.autor, livro.genero)
    
    resultado = db.execute_command(sql, params)
    
    if "error" in resultado.get("status", "error"):
         raise HTTPException(status_code=500, detail=resultado['status'])
    return {"status": "success", "message": "Livro cadastrado."}

@router.get("/")
def listar_livros(q: Optional[str] = Query(None)):
    sql = 'SELECT "idLivro" AS id, titulo, autor, genero FROM public."Livro"'
    params = None
    
    if q:
        sql += ' WHERE titulo ILIKE %s OR autor ILIKE %s'
        params = (f"%{q}%", f"%{q}%")
        
    sql += ' ORDER BY titulo LIMIT 50'
    
    livros = db.execute_query(sql, params)
    return livros

@router.get("/{livro_id}")
def get_livro_por_id(livro_id: int):
    sql = 'SELECT "idLivro" AS id, titulo, autor, genero FROM public."Livro" WHERE "idLivro" = %s'
    
    livros = db.execute_query(sql, (livro_id,))
    
    if not livros:
        raise HTTPException(status_code=404, detail="Livro não encontrado")
    
    return livros[0]

@router.get("/{livro_id}/avaliacoes")
def get_avaliacoes_do_livro(livro_id: int):
    """
    Busca todas as avaliações de um livro específico, 
    juntando com o nome do usuário.
    """
    sql = """
        SELECT 
            P.nome AS nome_pessoa,
            A.nota,
            A.comentario,
            TO_CHAR(A.dataavaliacao, 'DD/MM/YYYY') AS data_formatada
        FROM 
            public."Avaliacao" AS A
        JOIN 
            public."Pessoa" AS P ON A."idPessoa" = P."idPessoa"
        WHERE 
            A."idLivro" = %s
        ORDER BY 
            A.dataavaliacao DESC;
    """
    
    avaliacoes = db.execute_query(sql, (livro_id,))

    return avaliacoes
