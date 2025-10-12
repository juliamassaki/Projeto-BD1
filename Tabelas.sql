-- Table: public.Avaliacao

-- DROP TABLE IF EXISTS public."Avaliacao";

CREATE TABLE IF NOT EXISTS public."Avaliacao"
(
    "idPessoa" integer NOT NULL,
    "idLivro" integer NOT NULL,
    "idPlat" integer NOT NULL,
    nota integer NOT NULL,
    comentario text COLLATE pg_catalog."default",
    dataavaliacao timestamp with time zone NOT NULL,
    CONSTRAINT pk_avaliacao PRIMARY KEY ("idPessoa", "idLivro", "idPlat"),
    CONSTRAINT fk_avaliacao_livro FOREIGN KEY ("idLivro")
        REFERENCES public."Livro" ("idLivro") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_avaliacao_pessoa FOREIGN KEY ("idPessoa")
        REFERENCES public."Pessoa" ("idPessoa") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_avaliacao_plataforma FOREIGN KEY ("idPlat")
        REFERENCES public."Plataforma" ("idPlat") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Avaliacao"
    OWNER to postgres;


-- Table: public.Livro

-- DROP TABLE IF EXISTS public."Livro";

CREATE TABLE IF NOT EXISTS public."Livro"
(
    "idLivro" integer NOT NULL DEFAULT nextval('"Livro_idLivro_seq"'::regclass),
    titulo character(150) COLLATE pg_catalog."default" NOT NULL,
    autor character(100) COLLATE pg_catalog."default" NOT NULL,
    genero character(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Livro_pkey" PRIMARY KEY ("idLivro")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Livro"
    OWNER to postgres;


-- Table: public.Pessoa

-- DROP TABLE IF EXISTS public."Pessoa";

CREATE TABLE IF NOT EXISTS public."Pessoa"
(
    "idPessoa" integer NOT NULL,
    nome character(100) COLLATE pg_catalog."default" NOT NULL,
    telefone character(120) COLLATE pg_catalog."default",
    email character(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Pessoa_pkey" PRIMARY KEY ("idPessoa"),
    CONSTRAINT uq_pessoas_email UNIQUE (email)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Pessoa"
    OWNER to postgres;


-- Table: public.Plataforma

-- DROP TABLE IF EXISTS public."Plataforma";

CREATE TABLE IF NOT EXISTS public."Plataforma"
(
    "idPlat" integer NOT NULL DEFAULT nextval('"Plataforma_idPlat_seq"'::regclass),
    nome character(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Plataforma_pkey" PRIMARY KEY ("idPlat"),
    CONSTRAINT uq_plataforma_nome UNIQUE (nome)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Plataforma"
    OWNER to postgres;
