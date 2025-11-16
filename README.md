# Projeto-BD1: Sistema de Avaliação de Livros

## Descrição do Sistema e Fluxo de Funcionalidades

O sistema proposto é uma plataforma para avaliação de livros, projetada para permitir que usuários compartilhem suas opiniões e notas sobre diversas obras literárias.

**Fluxo de Funcionalidades:**

1.  **Cadastro e Autenticação de Usuários:**
    * O usuário se cadastra na plataforma informando nome, e-mail e telefone.
    * Para acessar o sistema, o usuário realiza o login utilizando seu e-mail.

2.  **Visualização de Livros:**
    * O usuário pode navegar por uma lista de livros já cadastrados no sistema.
    * Haverá uma funcionalidade de busca para encontrar livros por título, autor ou gênero.

3.  **Realização de Avaliações:**
    * Ao selecionar um livro, o usuário pode submeter uma avaliação.
    * A avaliação é composta por uma nota de 1 a 5 e um comentário em texto livre.
    * O sistema registrará a data e a hora da avaliação.

4.  **Consulta de Avaliações:**
    * Na página de um livro, serão exibidas todas as avaliações feitas por outros usuários, incluindo nota, comentário e a data.

## Relatórios Planejados

Para a análise dos dados, o sistema contará com os seguintes relatórios:

**1. Média de Notas por Gênero Literário**

* **Descrição:** Este relatório exibirá a nota média de todos os livros agrupados por gênero. Ele permitirá identificar quais gêneros literários são mais bem avaliados na plataforma.
* **Visualização Esperada (Gráfico de Barras):**

    ```
    +-------------------------------------------+
    |         Média de Notas por Gênero         |
    +-------------------------------------------+
    |                                           |
    |   Romance: ########## (4.5)               |
    | Ficção C.: ############# (4.8)            |
    |   Mistério: ######## (4.2)                |
    |    Fantasia: ########### (4.6)            |
    |                                           |
    +-------------------------------------------+
    ```

**2. Top 5 Livros Mais Bem Avaliados**

* **Descrição:** Uma tabela que listará os 5 livros com as maiores médias de avaliação na plataforma. O relatório incluirá o título do livro, o autor e sua nota média.
* **Visualização Esperada (Tabela):**

| Posição | Título do Livro | Autor | Nota Média |
| :--- | :--- | :--- | :--- |
| 1 | "O Senhor dos Anéis" | J.R.R. Tolkien | 4.9 |
| 2 | "Orgulho e Preconceito" | Jane Austen | 4.8 |
| 3 | "1984" | George Orwell | 4.7 |
| 4 | "Dom Quixote" | Miguel de Cervantes | 4.7 |
| 5 | "Cem Anos de Solidão" | Gabriel García Márquez| 4.6 |

**3. Número de Avaliações por Mês**

* **Descrição:** Este relatório exibirá um gráfico de barras com a quantidade total de avaliações de livros realizadas a cada mês. Ele é útil para medir o engajamento e a atividade dos usuários na plataforma ao longo do tempo.
* **Visualização Esperada (Gráfico de Barras):**

    ```
    +-------------------------------------------+
    |        Avaliações Realizadas por Mês      |
    +-------------------------------------------+
    |                                           |
    |      Agosto: ########## (10)              |
    |   Setembro: ################### (19)      |
    |    Outubro: ############# (13)            |
    |   Novembro: ###################### (22)   |
    |                                           |
    +-------------------------------------------+
    ```

## Diagrama ER
Modelo Conceitual do Sistema de Avaliação de Livros

O Diagrama Entidade-Relacionamento (ER) do sistema de gerenciamento de avaliações de livros. O modelo descreve as entidades principais, seus atributos e os relacionamentos que governam as regras de plataformas de avaliações de livros.

O modelo é composto por três Entidades Fortes (Pessoa, Livro, Plataforma) e um Relacionamento Ternário (avalia) que funciona como uma entidade associativa.
- *Cor roxa (atributo):* Indica uma Chave Primária e Estrangeira.

<img width="1123" height="781" alt="Image" src="https://github.com/user-attachments/assets/56c03125-0943-4cbd-a235-cf57d64aac7b" />

## Esquema relacional de banco de dados
- *Sublinhado unico (atributo):* Indica a Chave Primária (PK) da tabela.
- *Sublinhado duplo (atributo):* Indica uma Chave Secundária (UNIQUE) na tabela.
- *Sublinhado acima (atributo):* Indica uma Chave Estrangeira na tabela.
- *Sem sublinhado:* Atributo não-chave.
  
  <img width="1240" height="552" alt="Image" src="https://github.com/user-attachments/assets/bd39dbe0-4c14-4437-8834-118bf4e7b894" />
