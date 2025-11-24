from fastapi import APIRouter, HTTPException, status, Query
from typing import Optional
from .. import database as db
from ..models import PessoaRegister, PessoaLogin
import hashlib

router = APIRouter(prefix="/pessoas", tags=["Pessoas"])

def hash_senha(senha: str) -> str:
    """Gera um hash SHA-256 da senha."""
    return hashlib.sha256(senha.encode('utf-8')).hexdigest()

@router.post("/register", status_code=status.HTTP_201_CREATED)
def register_pessoa(pessoa: PessoaRegister):
    
    sql_check = 'SELECT "idPessoa" FROM public."Pessoa" WHERE email = %s'
    existente = db.execute_query(sql_check, (pessoa.email,)) 
    
    if existente:
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST,
                            detail="O email fornecido já está em uso.")

    hashed_password = hash_senha(pessoa.senha)

    sql_create = """
        INSERT INTO public."Pessoa" ("idPessoa", nome, email, telefone, senha) 
        VALUES (nextval('public."Pessoa_idPessoa_seq"'), %s, %s, %s, %s)
        RETURNING "idPessoa" AS id, nome, email, telefone;
    """
    params = (
        pessoa.nome,
        pessoa.email,
        pessoa.telefone,
        hashed_password
    )
    
    novo_usuario = db.execute_command_returning(sql_create, params)
    
    if not novo_usuario:
        raise HTTPException(status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
                            detail="Erro ao criar novo usuário.")
    
    return novo_usuario

@router.post("/login", status_code=status.HTTP_200_OK)
def login_pessoa(form_data: PessoaLogin):
    
    sql_find = """
        SELECT "idPessoa" AS id, nome, email, telefone, senha 
        FROM public."Pessoa" 
        WHERE email = %s
    """
    usuarios = db.execute_query(sql_find, (form_data.email,))
    
    if not usuarios:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
                            detail="Email ou senha incorretos.")
    user_db = usuarios[0]
    
    hash_da_senha_digitada = hash_senha(form_data.senha)
    
    if hash_da_senha_digitada != user_db['senha']:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
                            detail="Email ou senha incorretos.")
    # Login bem-sucedido
    del user_db['senha'] 
    return user_db


@router.get("/") 
def buscar_pessoas(q: Optional[str] = Query(None)):
    sql = 'SELECT "idPessoa" AS id, nome, email FROM public."Pessoa"'
    params = None
    if q:
        sql += ' WHERE nome ILIKE %s OR email ILIKE %s'
        params = (f"%{q}%", f"%{q}%")
    sql += ' ORDER BY nome LIMIT 20' 
    pessoas = db.execute_query(sql, params)
    return pessoas

@router.get("/{pessoa_id}") 
def get_pessoa_por_id(pessoa_id: int):
    sql = 'SELECT "idPessoa" AS id, nome, email FROM public."Pessoa" WHERE "idPessoa" = %s'
    pessoas = db.execute_query(sql, (pessoa_id,))
    if not pessoas:
        raise HTTPException(status_code=404, detail="Pessoa não encontrada")
    return pessoas[0]

@router.get("/{pessoa_id}/avaliacoes")
def get_avaliacoes_da_pessoa(pessoa_id: int):
    sql = """
        SELECT 
            L."idLivro",
            L.titulo AS livro_titulo, A.nota,
            A.comentario,
            TO_CHAR(A.dataavaliacao, 'DD/MM/YYYY') AS data_formatada
        FROM public."Avaliacao" AS A
        JOIN public."Livro" AS L ON A."idLivro" = L."idLivro"
        WHERE A."idPessoa" = %s
        ORDER BY A.dataavaliacao DESC;
    """
    avaliacoes = db.execute_query(sql, (pessoa_id,))

    return avaliacoes

