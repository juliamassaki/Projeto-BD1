--
-- PostgreSQL database dump
--

\restrict TQdlO3uYPtOtoWO0ESBPJ2u7FqDOyus7OWuxNKwQpD7gFff6grjS7X6DyoX006E

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2025-10-12 18:32:14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 223 (class 1259 OID 16430)
-- Name: Avaliacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Avaliacao" (
    "idPessoa" integer NOT NULL,
    "idLivro" integer NOT NULL,
    "idPlat" integer NOT NULL,
    nota integer NOT NULL,
    comentario text,
    dataavaliacao timestamp with time zone NOT NULL
);


ALTER TABLE public."Avaliacao" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16415)
-- Name: Livro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Livro" (
    "idLivro" integer NOT NULL,
    titulo character(150) NOT NULL,
    autor character(100) NOT NULL,
    genero character(50) NOT NULL
);


ALTER TABLE public."Livro" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16414)
-- Name: Livro_idLivro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Livro_idLivro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Livro_idLivro_seq" OWNER TO postgres;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 219
-- Name: Livro_idLivro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Livro_idLivro_seq" OWNED BY public."Livro"."idLivro";


--
-- TOC entry 218 (class 1259 OID 16406)
-- Name: Pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pessoa" (
    "idPessoa" integer NOT NULL,
    nome character(100) NOT NULL,
    telefone character(120),
    email character(50) NOT NULL
);


ALTER TABLE public."Pessoa" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16405)
-- Name: Pessoa_idPessoa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pessoa_idPessoa_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Pessoa_idPessoa_seq" OWNER TO postgres;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 217
-- Name: Pessoa_idPessoa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pessoa_idPessoa_seq" OWNED BY public."Pessoa"."idPessoa";


--
-- TOC entry 222 (class 1259 OID 16422)
-- Name: Plataforma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Plataforma" (
    "idPlat" integer NOT NULL,
    nome character(100) NOT NULL
);


ALTER TABLE public."Plataforma" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16421)
-- Name: Plataforma_idPlat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Plataforma_idPlat_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Plataforma_idPlat_seq" OWNER TO postgres;

--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 221
-- Name: Plataforma_idPlat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Plataforma_idPlat_seq" OWNED BY public."Plataforma"."idPlat";


--
-- TOC entry 4756 (class 2604 OID 16418)
-- Name: Livro idLivro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Livro" ALTER COLUMN "idLivro" SET DEFAULT nextval('public."Livro_idLivro_seq"'::regclass);


--
-- TOC entry 4757 (class 2604 OID 16425)
-- Name: Plataforma idPlat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataforma" ALTER COLUMN "idPlat" SET DEFAULT nextval('public."Plataforma_idPlat_seq"'::regclass);


--
-- TOC entry 4924 (class 0 OID 16430)
-- Dependencies: 223
-- Data for Name: Avaliacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Avaliacao" ("idPessoa", "idLivro", "idPlat", nota, comentario, dataavaliacao) FROM stdin;
\.


--
-- TOC entry 4921 (class 0 OID 16415)
-- Dependencies: 220
-- Data for Name: Livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Livro" ("idLivro", titulo, autor, genero) FROM stdin;
\.


--
-- TOC entry 4919 (class 0 OID 16406)
-- Dependencies: 218
-- Data for Name: Pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pessoa" ("idPessoa", nome, telefone, email) FROM stdin;
\.


--
-- TOC entry 4923 (class 0 OID 16422)
-- Dependencies: 222
-- Data for Name: Plataforma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Plataforma" ("idPlat", nome) FROM stdin;
\.


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 219
-- Name: Livro_idLivro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Livro_idLivro_seq"', 1, false);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 217
-- Name: Pessoa_idPessoa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pessoa_idPessoa_seq"', 1, false);


--
-- TOC entry 4935 (class 0 OID 0)
-- Dependencies: 221
-- Name: Plataforma_idPlat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Plataforma_idPlat_seq"', 1, false);


--
-- TOC entry 4763 (class 2606 OID 16420)
-- Name: Livro Livro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Livro"
    ADD CONSTRAINT "Livro_pkey" PRIMARY KEY ("idLivro");


--
-- TOC entry 4759 (class 2606 OID 16411)
-- Name: Pessoa Pessoa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pessoa"
    ADD CONSTRAINT "Pessoa_pkey" PRIMARY KEY ("idPessoa");


--
-- TOC entry 4765 (class 2606 OID 16427)
-- Name: Plataforma Plataforma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataforma"
    ADD CONSTRAINT "Plataforma_pkey" PRIMARY KEY ("idPlat");


--
-- TOC entry 4769 (class 2606 OID 16436)
-- Name: Avaliacao pk_avaliacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT pk_avaliacao PRIMARY KEY ("idPessoa", "idLivro", "idPlat");


--
-- TOC entry 4761 (class 2606 OID 16413)
-- Name: Pessoa uq_pessoas_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pessoa"
    ADD CONSTRAINT uq_pessoas_email UNIQUE (email);


--
-- TOC entry 4767 (class 2606 OID 16429)
-- Name: Plataforma uq_plataforma_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataforma"
    ADD CONSTRAINT uq_plataforma_nome UNIQUE (nome);


--
-- TOC entry 4770 (class 2606 OID 16442)
-- Name: Avaliacao fk_avaliacao_livro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT fk_avaliacao_livro FOREIGN KEY ("idLivro") REFERENCES public."Livro"("idLivro") NOT VALID;


--
-- TOC entry 4771 (class 2606 OID 16437)
-- Name: Avaliacao fk_avaliacao_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT fk_avaliacao_pessoa FOREIGN KEY ("idPessoa") REFERENCES public."Pessoa"("idPessoa") NOT VALID;


--
-- TOC entry 4772 (class 2606 OID 16447)
-- Name: Avaliacao fk_avaliacao_plataforma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT fk_avaliacao_plataforma FOREIGN KEY ("idPlat") REFERENCES public."Plataforma"("idPlat") NOT VALID;


-- Completed on 2025-10-12 18:32:14

--
-- PostgreSQL database dump complete
--

\unrestrict TQdlO3uYPtOtoWO0ESBPJ2u7FqDOyus7OWuxNKwQpD7gFff6grjS7X6DyoX006E

