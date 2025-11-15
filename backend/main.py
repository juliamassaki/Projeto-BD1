from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from .routers import pessoa_router, livro_router, avaliacao_router, relatorio_router

app = FastAPI(
    title="Projeto BD1 - Sistema de Avaliação de Livros",
    description="Backend para o projeto de Banco de Dados I."
)

origins = [
    "http://localhost",
    "http://localhost:8080",
     "http://localhost:8082",
    "null",
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


app.include_router(pessoa_router.router)
app.include_router(livro_router.router)
app.include_router(avaliacao_router.router)
app.include_router(relatorio_router.router)

@app.get("/")
def read_root():
    return {"mensagem": "API do Sistema de Avaliação de Livros - Rodando!"}