import psycopg2
from psycopg2.extras import RealDictCursor
import os

DB_HOST = os.getenv("DB_HOST", "localhost")
DB_NAME = os.getenv("DB_NAME", "projeto_bd1")
DB_USER = os.getenv("DB_USER", "postgres")
DB_PASSWORD = os.getenv("DB_PASSWORD", "1234") 

def get_db_connection():
    """Cria e retorna uma nova conexão com o banco."""
    try:
        conn = psycopg2.connect(
            host=DB_HOST,
            database=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD
        )
        return conn
    except Exception as e:
        print(f"Erro ao conectar ao PostgreSQL: {e}")
        return None

def execute_query(query, params=None):
    """Executa uma consulta (SELECT) e retorna os resultados como dicts."""
    conn = get_db_connection()
    if conn is None:
        return []
    
    with conn.cursor(cursor_factory=RealDictCursor) as cursor:
        cursor.execute(query, params)
        results = cursor.fetchall()
    conn.close()
    return results

def execute_command(command, params=None):
    """Executa um comando (INSERT, UPDATE, DELETE) e commita."""
    conn = get_db_connection()
    if conn is None:
        return {"status": "error", "message": "Falha na conexão"}
        
    try:
        with conn.cursor() as cursor:
            cursor.execute(command, params)
        conn.commit()
        status = "success"
    except Exception as e:
        conn.rollback() 
        status = f"error: {e}"
    finally:
        conn.close()
    
    return {"status": status}

def execute_command_returning(command, params=None):
    """Executa um comando (INSERT) e retorna o resultado (RETURNING)."""
    conn = get_db_connection()
    if conn is None:
        return None
        
    result = None
    try:
        with conn.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute(command, params)
            result = cursor.fetchone()
        conn.commit()
    except Exception as e:
        conn.rollback() 
        print(f"Erro no execute_command_returning: {e}")
    finally:
        conn.close()
    
    return result