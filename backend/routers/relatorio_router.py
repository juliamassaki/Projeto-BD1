from fastapi import APIRouter
from .. import database as db

router = APIRouter(prefix="/relatorios", tags=["Relatórios"])

@router.get("/media-por-genero")
def get_media_por_genero():
    sql = """
        SELECT
            L.genero,
            COALESCE(AVG(A.nota), 0) as media
        FROM 
            public."Livro" AS L
        LEFT JOIN 
            public."Avaliacao" AS A ON A."idLivro" = L."idLivro"
        GROUP BY 
            L.genero
        ORDER BY 
            media DESC;
    """
    return db.execute_query(sql)

@router.get("/top5")
def get_top_5_livros():
    sql = """
        SELECT 
            L.titulo,
            AVG(A.nota) as media
        FROM 
            public."Avaliacao" AS A
        JOIN 
            public."Livro" AS L ON A."idLivro" = L."idLivro"
        GROUP BY 
            L."idLivro", L.titulo
        ORDER BY 
            media DESC
        LIMIT 5;
    """
    return db.execute_query(sql)

@router.get("/avaliacoes-por-mes")
def get_avaliacoes_por_mes():
    sql = """
        SELECT 
            TO_CHAR(dataavaliacao, 'YYYY-MM') AS mes,
            COUNT(*) AS qtd
        FROM 
            public."Avaliacao"
        GROUP BY 
            mes
        ORDER BY 
            mes;
    """

    return db.execute_query(sql)
