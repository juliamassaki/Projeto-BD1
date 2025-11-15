import os
import psycopg2
import psycopg2.extras 
import random
from faker import Faker
from datetime import datetime
import csv
import re
import hashlib

DB_NAME = "projeto_bd1"
DB_USER = "postgres"
DB_PASSWORD = "1234"
DB_HOST = "localhost"

NOME_ARQUIVO_LIVROS = "500_livros_famosos_unicos.csv"
NOME_ARQUIVO_COMENTARIOS = "3000_comentarios_genericos.csv"

QTD_USUARIOS = 1000
QTD_AVALIACOES_POR_USUARIO = 3
ID_PLATAFORMA_PADRAO = 1 

fake = Faker('pt_BR')
Faker.seed(0) 
random.seed(0)

def hash_senha(senha: str) -> str:
    """Gera um hash SHA-256 da senha."""
    return hashlib.sha256(senha.encode('utf-8')).hexdigest()

print(f"--- Iniciando script de carga (COM SENHAS HASHED via hashlib) ---")

print(f"Lendo livros...")
livros_para_inserir = []
titulos_adicionados = set()
try:
    with open(NOME_ARQUIVO_LIVROS, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            titulo = row.get('title') or 'Título Desconhecido'
            if not titulo or titulo in titulos_adicionados:
                continue
            titulos_adicionados.add(titulo) 
            autor = row.get('author') or 'Autor Desconhecido'
            genero = row.get('genre') or 'Gênero Desconhecido'
            try:
                ano_str = row.get('year')
                ano = int(ano_str) if ano_str and int(ano_str) > 0 else None
            except ValueError:
                ano = None 
            titulo_pad = (titulo[:150]).ljust(150)
            autor_pad = (autor[:100]).ljust(100)
            genero_pad = (genero.strip()[:50]).ljust(50) 
            livros_para_inserir.append((titulo_pad, autor_pad, genero_pad, ano))
except FileNotFoundError:
    print(f"\n--- ERRO! Arquivo '{NOME_ARQUIVO_LIVROS}' não encontrado! ---")
    exit()
except Exception as e:
    print(f"\n--- ERRO AO LER O CSV DE LIVROS! ---: {e}")
    exit()
print(f"{len(livros_para_inserir)} livros únicos lidos com sucesso.")

print(f"Lendo comentários...")
lista_comentarios = []
try:
    with open(NOME_ARQUIVO_COMENTARIOS, mode='r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            comentario_bruto = row.get('comentario')
            if comentario_bruto:
                comentario_limpo = comentario_bruto.strip().strip('"')
                comentario_limpo = re.sub(r'\s\(\d+\)$', '', comentario_limpo)
                lista_comentarios.append(comentario_limpo)
except FileNotFoundError:
    print(f"\n--- ERRO! Arquivo '{NOME_ARQUIVO_COMENTARIOS}' não encontrado! ---")
    exit()
except Exception as e:
    print(f"\n--- ERRO AO LER O CSV DE COMENTÁRIOS! ---: {e}")
    exit()
print(f"{len(lista_comentarios)} comentários lidos com sucesso.")


print(f"Gerando {QTD_USUARIOS} usuários (com senhas hashed)...")
pessoas_para_inserir = []
for i in range(QTD_USUARIOS):
    nome = fake.name()
    email = fake.unique.email()
    
    senha_plana = fake.password(length=12) 
    senha_hash = hash_senha(senha_plana)
    
    if i == 0:
        print("--- Exemplo de Usuário de Teste ---")
        print(f"  Email: {email}")
        print(f"  Senha: {senha_plana}  <-- (Anote esta senha para testar o login!)")
        print("-----------------------------------")

    pessoas_para_inserir.append((
        nome.ljust(100), 
        email.ljust(50), 
        senha_hash
    ))

print("Dados falsos gerados. Conectando ao banco...")

try:
    conn = psycopg2.connect(
        host=DB_HOST,
        database=DB_NAME,
        user=DB_USER,
        password=DB_PASSWORD
    )
    cursor = conn.cursor()
    print("Conexão bem-sucedida!")

    print("Limpando tabelas antigas (Avaliacao, Pessoa, Livro)...")
    cursor.execute('TRUNCATE TABLE public."Avaliacao" CASCADE')
    cursor.execute('TRUNCATE TABLE public."Pessoa" CASCADE')
    cursor.execute('TRUNCATE TABLE public."Livro" CASCADE')
    cursor.execute('ALTER SEQUENCE public."Pessoa_idPessoa_seq" RESTART WITH 1')
    cursor.execute('ALTER SEQUENCE public."Livro_idLivro_seq" RESTART WITH 1')

    print(f"Inserindo {len(livros_para_inserir)} livros únicos...")
    sql_livro = 'INSERT INTO public."Livro" (titulo, autor, genero, ano) VALUES (%s, %s, %s, %s)'
    psycopg2.extras.execute_batch(cursor, sql_livro, livros_para_inserir)

    print(f"Inserindo {len(pessoas_para_inserir)} usuários...")
    sql_pessoa = 'INSERT INTO public."Pessoa" ("idPessoa", nome, email, senha) VALUES (nextval(\'public."Pessoa_idPessoa_seq"\'), %s, %s, %s)'
    psycopg2.extras.execute_batch(cursor, sql_pessoa, pessoas_para_inserir)

    print("Buscando IDs de livros e pessoas criados...")
    cursor.execute('SELECT "idLivro" FROM public."Livro"')
    livro_ids = [row[0] for row in cursor.fetchall()]
    cursor.execute('SELECT "idPessoa" FROM public."Pessoa"')
    pessoa_ids = [row[0] for row in cursor.fetchall()]
    print(f"Temos {len(livro_ids)} IDs de livros e {len(pessoa_ids)} IDs de pessoas.")

    total_avaliacoes = QTD_USUARIOS * QTD_AVALIACOES_POR_USUARIO
    print(f"Gerando e inserindo {total_avaliacoes} avaliações...")
    avaliacoes_para_inserir = []
    
    for pessoa_id in pessoa_ids:
        if not livro_ids: break
        num_a_sortear = min(len(livro_ids), QTD_AVALIACOES_POR_USUARIO)
        livros_escolhidos_ids = random.sample(livro_ids, num_a_sortear)
        for livro_id in livros_escolhidos_ids:
            nota = random.randint(1, 5)
            data = fake.date_time_between(start_date='-2y', end_date='now')
            comentario = None
            if lista_comentarios and random.random() < 0.7: 
                comentario = random.choice(lista_comentarios)
            avaliacoes_para_inserir.append((
                pessoa_id, livro_id, ID_PLATAFORMA_PADRAO, 
                nota, comentario, data
            ))

    sql_avaliacao = 'INSERT INTO public."Avaliacao" ("idPessoa", "idLivro", "idPlat", nota, comentario, dataavaliacao) VALUES (%s, %s, %s, %s, %s, %s)'
    psycopg2.extras.execute_batch(cursor, sql_avaliacao, avaliacoes_para_inserir)

    print("Enviando dados para o banco (commit)...")
    conn.commit()
    print("Carga concluída com sucesso!")

except Exception as e:
    print("\n--- ERRO! ---")
    print(f"Tipo de erro: {type(e)}")
    print(f"Mensagem: {e}")
    if 'conn' in locals() and conn:
        conn.rollback() 

finally:
    if 'conn' in locals() and conn:
        cursor.close()
        conn.close()
        print("Conexão com o banco fechada.")