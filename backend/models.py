from pydantic import BaseModel, EmailStr
from typing import Optional

# Modelo para /pessoas/register
class PessoaRegister(BaseModel):
    nome: str
    email: EmailStr
    telefone: Optional[str] = None
    senha: str

# Modelo para /pessoas/login
class PessoaLogin(BaseModel):
    email: EmailStr
    senha: str

# Modelo para /livros
class LivroCreate(BaseModel):
    titulo: str
    autor: str
    genero: str
    ano: Optional[str] = None 

# Modelo para /avaliacoes
class AvaliacaoCreate(BaseModel):
    livro_id: int
    usuario_id: int
    nota: int
    comentario: Optional[str] = None