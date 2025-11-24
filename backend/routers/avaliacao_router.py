from fastapi import APIRouter, HTTPException
from .. import database as db
from ..models import AvaliacaoCreate

router = APIRouter(prefix="/avaliacoes", tags=["Avaliações"])

@router.post("/", status_code=201)
def registrar_avaliacao(avaliacao: AvaliacaoCreate):
    
    # idPlat está fixa como 1
    id_plataforma_fixo = 1
    
    sql = """
        INSERT INTO public."Avaliacao" 
            ("idPessoa", "idLivro", "idPlat", nota, comentario, dataavaliacao)
        VALUES 
            (%s, %s, %s, %s, %s, NOW())
    """
    
    params = (
        avaliacao.usuario_id, 
        avaliacao.livro_id, 
        id_plataforma_fixo, 
        avaliacao.nota, 
        avaliacao.comentario
    )
    
    resultado = db.execute_command(sql, params)
    
    if "error" in resultado.get("status", "error"):
         raise HTTPException(status_code=500, detail=f"Erro ao registrar: {resultado['status']}")

    return {"status": "success", "message": "Avaliação registrada."}

@router.put("/{livro_id}/{pessoa_id}")
def atualizar_avaliacao(livro_id: int, pessoa_id: int, avaliacao: AvaliacaoCreate):
    sql = """
        UPDATE public."Avaliacao"
        SET nota = %s,
            comentario = %s,
            dataavaliacao = NOW()
        WHERE "idLivro" = %s AND "idPessoa" = %s AND "idPlat" = 1
    """
    params = (avaliacao.nota, avaliacao.comentario, livro_id, pessoa_id)
    
    resultado = db.execute_command(sql, params)
    
    if "error" in resultado.get("status", "error"):
         raise HTTPException(status_code=500, detail=f"Erro ao atualizar: {resultado['status']}")
    return {"status": "success", "message": "Avaliação atualizada."}

@router.delete("/{livro_id}/{pessoa_id}")
def deletar_avaliacao(livro_id: int, pessoa_id: int):
    sql = """
        DELETE FROM public."Avaliacao"
        WHERE "idLivro" = %s AND "idPessoa" = %s AND "idPlat" = 1
    """
    params = (livro_id, pessoa_id)
    
    resultado = db.execute_command(sql, params)
    
    if "error" in resultado.get("status", "error"):
         raise HTTPException(status_code=500, detail=f"Erro ao deletar: {resultado['status']}")
    return {"status": "success", "message": "Avaliação removida."}
