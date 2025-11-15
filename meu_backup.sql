--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 15.8

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: Livro_idLivro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Livro_idLivro_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Livro_idLivro_seq" OWNER TO postgres;

--
-- Name: Livro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Livro" (
    "idLivro" integer DEFAULT nextval('public."Livro_idLivro_seq"'::regclass) NOT NULL,
    titulo character(150) NOT NULL,
    autor character(100) NOT NULL,
    genero character(50) NOT NULL,
    ano integer
);


ALTER TABLE public."Livro" OWNER TO postgres;

--
-- Name: Pessoa_idPessoa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pessoa_idPessoa_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pessoa_idPessoa_seq" OWNER TO postgres;

--
-- Name: Pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pessoa" (
    "idPessoa" integer DEFAULT nextval('public."Pessoa_idPessoa_seq"'::regclass) NOT NULL,
    nome character(100) NOT NULL,
    telefone character(120),
    email character(50) NOT NULL,
    senha character varying(255)
);


ALTER TABLE public."Pessoa" OWNER TO postgres;

--
-- Name: Plataforma_idPlat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Plataforma_idPlat_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Plataforma_idPlat_seq" OWNER TO postgres;

--
-- Name: Plataforma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Plataforma" (
    "idPlat" integer DEFAULT nextval('public."Plataforma_idPlat_seq"'::regclass) NOT NULL,
    nome character(100) NOT NULL
);


ALTER TABLE public."Plataforma" OWNER TO postgres;

--
-- Data for Name: Avaliacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Avaliacao" ("idPessoa", "idLivro", "idPlat", nota, comentario, dataavaliacao) FROM stdin;
1	109	1	4	A construção do universo é detalhada e muito bem feita.	2024-07-25 12:18:41-03
1	50	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-05-11 19:13:21-03
1	98	1	4	A construção do universo é detalhada e muito bem feita.	2025-05-15 06:46:54-03
2	65	1	2	\N	2025-05-07 16:09:45-03
2	18	1	5	\N	2024-07-22 20:06:28-03
2	37	1	5	\N	2024-02-21 09:12:39-03
3	104	1	2	Uma obra que surpreende pela profundidade emocional.	2025-09-17 21:22:37-03
3	78	1	1	\N	2024-08-09 03:18:11-03
3	116	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-01-27 09:18:35-03
4	46	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-11-14 18:36:29-03
4	56	1	5	O livro traz boas reflexões e personagens bem construídos.	2023-12-29 08:41:43-03
4	41	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-11-30 00:59:02-03
5	118	1	4	\N	2024-12-19 07:49:58-03
5	2	1	1	Uma leitura rápida, porém cheia de significado.	2024-12-08 21:01:55-03
5	12	1	2	\N	2025-02-08 16:38:14-03
6	91	1	2	\N	2025-05-19 03:29:55-03
6	112	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-18 19:23:22-03
6	9	1	5	Uma leitura rápida, porém cheia de significado.	2024-02-24 17:50:12-03
7	41	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-03-07 05:31:44-03
7	113	1	3	\N	2024-07-04 12:47:05-03
7	66	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-03-22 16:49:11-03
8	27	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-04-02 02:42:01-03
8	124	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-12-06 05:26:11-03
8	103	1	3	Uma obra que surpreende pela profundidade emocional.	2025-10-26 11:05:59-03
9	24	1	2	Uma obra que surpreende pela profundidade emocional.	2024-04-08 01:28:19-03
9	25	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-10-05 23:12:30-03
9	106	1	2	\N	2025-07-11 01:23:25-03
10	119	1	1	\N	2024-06-04 07:08:11-03
10	5	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-08 10:48:40-03
10	108	1	5	Uma obra que surpreende pela profundidade emocional.	2024-09-17 20:56:16-03
11	109	1	5	\N	2024-02-11 17:38:00-03
11	28	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-31 12:52:53-03
11	115	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-06-08 05:08:33-03
12	118	1	3	Uma obra que surpreende pela profundidade emocional.	2024-11-18 02:58:33-03
12	126	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-09-16 12:49:14-03
12	102	1	3	\N	2025-08-06 23:04:38-03
13	32	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-03-16 21:05:48-03
13	3	1	3	\N	2025-07-01 01:29:06-03
13	94	1	3	Uma leitura rápida, porém cheia de significado.	2024-06-25 01:48:56-03
14	13	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-11-12 05:34:30-03
14	101	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-02-17 22:34:42-03
14	19	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-05-30 12:58:22-03
15	78	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-01-06 04:21:09-03
15	107	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-09-21 15:13:11-03
15	74	1	2	\N	2025-01-28 07:54:02-03
16	24	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-03 06:59:24-03
16	92	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-31 21:56:22-03
16	16	1	1	\N	2024-04-23 22:55:01-03
17	9	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-05-30 22:16:28-03
17	29	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-10-29 00:33:52-03
17	10	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-12-22 03:28:57-03
18	26	1	4	\N	2024-11-03 07:45:20-03
18	34	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-13 06:29:21-03
18	46	1	2	\N	2025-09-15 23:25:40-03
19	8	1	2	\N	2024-06-13 19:06:49-03
19	101	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-08 02:28:31-03
19	87	1	5	\N	2024-01-08 18:40:17-03
20	86	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-16 03:11:54-03
20	23	1	5	\N	2025-05-05 13:34:38-03
20	2	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-04 01:37:37-03
21	33	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-05 06:12:43-03
21	20	1	3	\N	2025-05-04 16:46:04-03
21	72	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-30 06:28:26-03
22	98	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-03-27 21:34:56-03
22	123	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-06-04 11:58:13-03
22	62	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-23 06:00:55-03
23	50	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-04-21 23:39:05-03
23	96	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-04 00:12:32-03
23	54	1	4	Uma leitura rápida, porém cheia de significado.	2024-04-28 19:03:07-03
24	73	1	1	A construção do universo é detalhada e muito bem feita.	2024-02-08 03:18:04-03
24	112	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-09-14 20:07:27-03
24	54	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-06-15 04:47:32-03
25	34	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-08 10:16:38-03
25	90	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-06-20 03:08:34-03
25	21	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-07-08 22:08:53-03
26	108	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-11-28 18:35:41-03
26	60	1	1	\N	2025-06-05 09:57:53-03
26	7	1	2	\N	2025-08-17 17:34:03-03
27	52	1	4	Uma obra que surpreende pela profundidade emocional.	2024-01-06 16:57:03-03
27	122	1	1	\N	2025-10-13 13:21:13-03
27	87	1	1	\N	2023-12-14 09:51:21-03
28	87	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-26 12:44:50-03
28	68	1	2	\N	2024-07-15 05:49:52-03
58	113	1	1	\N	2024-10-03 01:17:36-03
28	79	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-02-25 20:03:48-03
29	13	1	4	Uma leitura rápida, porém cheia de significado.	2025-09-24 10:00:29-03
29	61	1	3	\N	2024-12-12 12:30:00-03
29	110	1	1	\N	2024-06-05 01:07:44-03
30	18	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-09-16 17:21:30-03
30	84	1	3	\N	2024-11-11 00:10:12-03
30	67	1	1	Uma leitura rápida, porém cheia de significado.	2024-08-15 03:01:32-03
31	34	1	3	\N	2024-07-25 21:55:58-03
31	72	1	1	\N	2023-11-26 22:51:47-03
31	41	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-10-23 06:36:25-03
32	83	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-13 12:45:00-03
32	116	1	2	Uma obra que surpreende pela profundidade emocional.	2024-05-18 20:24:03-03
32	59	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-08-29 18:57:36-03
33	35	1	3	\N	2024-02-05 16:46:32-03
33	43	1	3	\N	2025-11-09 06:32:54-03
33	44	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-04-27 11:31:23-03
34	20	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-05 14:03:26-03
34	126	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-03 03:32:33-03
34	75	1	2	\N	2025-06-11 10:23:55-03
35	40	1	5	\N	2025-05-29 01:10:01-03
35	23	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-04-06 08:47:11-03
35	110	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-01-14 02:29:38-03
36	72	1	4	A obra aborda temas importantes de maneira leve e acessível.	2023-12-12 12:36:10-03
36	117	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-08 12:37:20-03
36	62	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-14 03:17:01-03
37	43	1	2	\N	2024-04-27 06:22:26-03
37	95	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-25 04:56:48-03
37	88	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-02-01 12:48:54-03
38	26	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-01-31 05:16:12-03
38	96	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-30 21:28:53-03
38	29	1	4	\N	2024-02-08 14:37:14-03
39	101	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-03-03 19:12:53-03
39	75	1	2	\N	2024-06-24 03:55:45-03
39	92	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-05-16 13:43:14-03
40	56	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-11-01 23:56:06-03
40	25	1	1	\N	2025-10-29 00:12:08-03
40	46	1	4	\N	2025-03-22 15:58:54-03
41	26	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-06-04 05:44:47-03
41	16	1	1	\N	2024-10-23 21:28:56-03
41	64	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-22 16:46:27-03
42	26	1	3	Uma obra que surpreende pela profundidade emocional.	2025-03-05 02:08:49-03
42	59	1	1	\N	2025-01-26 14:18:31-03
42	49	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-09-26 17:36:47-03
43	82	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-29 08:05:54-03
43	88	1	4	\N	2024-08-24 13:02:59-03
43	55	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-11-08 13:12:25-03
44	2	1	3	\N	2025-10-19 08:36:50-03
44	44	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-06-14 01:35:39-03
44	91	1	5	\N	2024-06-13 12:12:58-03
45	108	1	3	\N	2024-08-21 00:06:32-03
45	49	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-25 16:30:02-03
45	75	1	5	\N	2025-03-14 20:52:26-03
46	6	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2023-12-09 15:19:20-03
46	9	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-09-30 02:27:31-03
46	29	1	2	\N	2025-04-18 17:49:37-03
47	59	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-20 04:44:08-03
47	124	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-19 06:42:24-03
47	48	1	5	\N	2025-09-19 04:26:42-03
48	10	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-07 12:17:54-03
48	96	1	4	\N	2024-08-13 19:51:38-03
48	55	1	4	\N	2025-06-19 08:25:42-03
49	125	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-19 20:26:14-03
49	50	1	1	\N	2023-11-19 12:57:55-03
49	78	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-01-15 01:10:20-03
50	43	1	3	\N	2023-12-04 08:24:09-03
50	9	1	3	\N	2025-02-26 18:06:56-03
50	64	1	4	\N	2024-03-28 01:48:16-03
51	8	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-02-05 05:38:49-03
51	21	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-07-06 10:49:26-03
51	83	1	4	Uma obra que surpreende pela profundidade emocional.	2024-06-10 08:42:51-03
52	114	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-06-22 17:50:41-03
52	111	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-07-05 09:21:45-03
52	78	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-04-26 14:45:14-03
53	13	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-06-05 08:57:59-03
53	61	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-03-13 00:40:52-03
53	100	1	1	\N	2025-05-19 16:11:31-03
54	84	1	4	\N	2024-07-08 20:08:16-03
54	45	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-17 02:09:00-03
54	25	1	5	\N	2025-02-15 20:43:09-03
55	79	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-07-11 11:04:19-03
55	81	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-05-17 15:34:10-03
55	120	1	4	\N	2025-09-08 19:27:51-03
56	118	1	1	A construção do universo é detalhada e muito bem feita.	2025-06-15 22:38:59-03
56	96	1	1	\N	2024-01-03 04:59:51-03
56	112	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-03 09:02:53-03
57	59	1	1	\N	2024-03-08 06:36:58-03
57	46	1	1	Uma obra que surpreende pela profundidade emocional.	2025-03-13 22:17:20-03
57	102	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-03-05 10:45:33-03
58	28	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-02-14 17:27:51-03
58	30	1	5	Uma leitura rápida, porém cheia de significado.	2024-04-04 06:07:11-03
59	19	1	5	Uma leitura rápida, porém cheia de significado.	2024-11-06 19:52:20-03
59	55	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-16 01:09:59-03
59	115	1	4	\N	2025-09-01 20:58:55-03
60	94	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-02 23:43:59-03
60	123	1	1	A construção do universo é detalhada e muito bem feita.	2024-09-06 20:22:10-03
60	4	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-05-18 18:48:08-03
61	16	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-05 21:02:22-03
61	46	1	1	\N	2024-07-10 11:13:19-03
61	89	1	2	\N	2025-02-20 17:47:07-03
62	10	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-01-01 13:57:56-03
62	77	1	1	\N	2025-07-03 08:43:50-03
62	115	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-04-25 16:49:48-03
63	120	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-08-10 04:58:46-03
63	78	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-06-15 11:46:18-03
63	30	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-04-18 18:08:52-03
64	47	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-02 09:12:08-03
64	43	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-11-07 08:56:50-03
64	61	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-01-07 09:41:15-03
65	21	1	2	\N	2024-09-25 12:49:01-03
65	49	1	2	Uma obra que surpreende pela profundidade emocional.	2024-05-27 04:09:24-03
65	115	1	2	\N	2024-05-05 07:26:40-03
66	38	1	1	\N	2024-11-03 04:06:46-03
66	48	1	5	Uma obra que surpreende pela profundidade emocional.	2024-01-07 11:37:34-03
66	54	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-01-02 04:47:54-03
67	71	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-09-10 13:47:33-03
67	54	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-13 05:31:29-03
67	95	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-03-02 16:37:44-03
68	8	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-01-12 07:38:36-03
68	49	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-02-04 00:20:24-03
68	53	1	3	\N	2024-12-06 05:54:04-03
69	12	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-26 13:17:41-03
69	122	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-12-23 10:02:40-03
69	24	1	4	\N	2023-11-19 03:37:22-03
70	24	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-09-10 15:30:03-03
70	99	1	3	\N	2025-01-26 02:39:31-03
70	54	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-08-23 11:45:30-03
71	82	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-27 17:42:34-03
71	12	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-22 10:17:55-03
71	62	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-03 01:04:02-03
72	39	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-28 23:20:10-03
72	70	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2023-11-20 10:01:46-03
72	78	1	5	\N	2025-01-03 23:20:34-03
73	36	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-10-20 06:31:16-03
73	81	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-11-04 00:55:31-03
73	126	1	5	\N	2024-08-14 09:52:52-03
74	91	1	1	\N	2023-11-28 20:45:14-03
74	51	1	3	A construção do universo é detalhada e muito bem feita.	2024-01-25 08:30:54-03
74	57	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-01-22 04:51:02-03
75	10	1	3	Uma obra que surpreende pela profundidade emocional.	2025-09-04 06:42:12-03
75	102	1	5	\N	2024-02-03 05:13:56-03
75	34	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2023-11-28 08:26:57-03
76	37	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-09 19:14:20-03
76	67	1	5	Uma obra que surpreende pela profundidade emocional.	2024-12-07 13:49:58-03
76	18	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-07-20 02:17:33-03
77	38	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-02-25 18:33:58-03
77	57	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-09-04 10:24:51-03
77	48	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-09 23:31:22-03
78	72	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-08-10 00:38:34-03
78	86	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-13 18:27:46-03
78	39	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-26 00:34:12-03
79	123	1	3	Uma obra que surpreende pela profundidade emocional.	2024-10-09 23:27:55-03
79	8	1	1	\N	2024-06-11 07:13:42-03
79	57	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-12-19 20:08:38-03
80	51	1	5	\N	2024-11-26 09:15:57-03
80	114	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-08-01 02:38:21-03
80	2	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-02 04:32:17-03
81	15	1	3	\N	2024-11-05 14:56:20-03
81	80	1	3	\N	2024-11-25 10:39:11-03
81	1	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-16 14:10:33-03
82	37	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2023-12-11 01:04:47-03
82	25	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-11-07 03:48:26-03
82	14	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-04 06:51:08-03
83	19	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-07-06 16:47:59-03
83	68	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-06-22 19:13:31-03
83	41	1	4	\N	2025-08-28 15:26:08-03
84	50	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-24 05:20:22-03
84	94	1	5	\N	2025-08-20 07:14:16-03
138	67	1	3	\N	2024-02-06 05:21:23-03
84	29	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-09 02:25:53-03
85	11	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-07-22 22:06:59-03
85	112	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-09-16 04:18:42-03
85	24	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-06-11 09:23:05-03
86	97	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-20 11:03:56-03
86	37	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-04 23:23:37-03
86	99	1	5	\N	2024-07-22 22:29:56-03
87	120	1	4	Uma obra que surpreende pela profundidade emocional.	2024-05-31 01:46:19-03
87	56	1	4	A construção do universo é detalhada e muito bem feita.	2024-07-27 16:00:54-03
87	75	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-06-08 22:24:36-03
88	45	1	1	A obra aborda temas importantes de maneira leve e acessível.	2025-01-17 06:26:35-03
88	1	1	2	\N	2025-03-26 09:11:48-03
88	38	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-01-31 13:20:01-03
89	59	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-05-05 09:16:16-03
89	25	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-08-01 14:44:46-03
89	44	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-04-02 15:53:50-03
90	6	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-09-04 08:04:59-03
90	25	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-03-10 02:13:32-03
90	48	1	3	Uma obra que surpreende pela profundidade emocional.	2024-09-27 10:38:04-03
91	40	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-10-11 00:49:55-03
91	67	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-19 10:16:33-03
91	111	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-23 20:14:03-03
92	93	1	4	\N	2025-06-17 15:59:03-03
92	57	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-05-05 08:39:00-03
92	7	1	1	Uma leitura rápida, porém cheia de significado.	2025-09-16 17:02:34-03
93	53	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-05 22:18:52-03
93	114	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-14 09:15:09-03
93	118	1	1	\N	2024-05-03 10:57:08-03
94	32	1	2	\N	2024-08-18 15:16:47-03
94	63	1	3	\N	2025-02-24 06:44:41-03
94	29	1	3	\N	2025-01-13 08:13:48-03
95	14	1	3	Uma leitura rápida, porém cheia de significado.	2024-05-22 15:07:45-03
95	72	1	3	\N	2024-04-18 12:47:27-03
95	116	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-10-05 12:21:02-03
96	82	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-12-08 00:22:41-03
96	34	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-04-18 07:11:48-03
96	35	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-26 11:14:24-03
97	1	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-12-06 10:15:37-03
97	95	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-30 19:19:43-03
97	69	1	1	\N	2025-04-25 00:55:43-03
98	73	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-12-20 23:57:03-03
98	46	1	2	Uma leitura rápida, porém cheia de significado.	2024-12-19 00:40:29-03
98	30	1	3	A construção do universo é detalhada e muito bem feita.	2024-04-19 04:19:53-03
99	62	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-01 03:54:30-03
99	37	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-02 05:57:10-03
99	75	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-27 23:10:44-03
100	113	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-12 22:23:45-03
100	51	1	2	\N	2025-09-15 21:20:38-03
100	20	1	4	Uma leitura rápida, porém cheia de significado.	2023-11-20 22:55:27-03
101	125	1	2	\N	2023-11-27 10:26:21-03
101	28	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-03-28 05:48:31-03
101	31	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-03-27 21:38:01-03
102	79	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-11-17 10:46:09-03
102	107	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-08-31 20:56:15-03
102	4	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-27 09:45:43-03
103	113	1	4	Uma obra que surpreende pela profundidade emocional.	2024-08-30 12:10:38-03
103	64	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-09 23:25:48-03
103	104	1	4	\N	2024-02-11 15:24:21-03
104	106	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-10-05 20:28:59-03
104	41	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-09-15 17:46:23-03
104	101	1	2	A trama é inteligente e conduzida com bastante habilidade.	2024-08-03 10:51:37-03
105	86	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-10-17 21:45:47-03
105	93	1	2	Uma obra que surpreende pela profundidade emocional.	2025-02-24 11:58:59-03
105	85	1	5	Uma leitura rápida, porém cheia de significado.	2025-05-10 07:19:38-03
106	81	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-18 09:08:37-03
106	20	1	1	O livro traz boas reflexões e personagens bem construídos.	2023-11-26 13:43:58-03
106	46	1	2	\N	2025-10-19 07:47:13-03
107	42	1	1	Uma obra que surpreende pela profundidade emocional.	2024-03-29 14:09:00-03
107	9	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-28 21:29:18-03
107	106	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-13 19:18:37-03
108	40	1	3	\N	2024-03-02 07:30:59-03
108	23	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-03 13:12:25-03
108	84	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-01-19 16:35:32-03
109	91	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-05-07 17:38:06-03
109	60	1	4	\N	2025-05-01 15:52:35-03
109	98	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-02-20 08:14:42-03
110	80	1	5	\N	2023-12-26 14:12:55-03
192	114	1	4	\N	2024-07-14 17:37:45-03
110	112	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-11-10 23:12:19-03
110	85	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-29 16:00:14-03
111	123	1	2	\N	2024-07-22 09:27:38-03
111	104	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-01 23:28:29-03
111	115	1	4	\N	2025-08-08 01:33:28-03
112	77	1	4	\N	2024-02-09 16:01:34-03
112	14	1	5	Uma leitura rápida, porém cheia de significado.	2024-01-30 15:34:41-03
112	80	1	3	\N	2025-01-30 05:24:23-03
113	94	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-02-01 08:25:01-03
113	49	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-11 23:57:48-03
113	4	1	2	Uma obra que surpreende pela profundidade emocional.	2025-10-24 16:03:20-03
114	95	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2023-11-22 05:25:38-03
114	97	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-12-24 17:13:40-03
114	52	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-03-13 01:50:00-03
115	99	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-20 10:48:42-03
115	69	1	1	Uma leitura rápida, porém cheia de significado.	2024-09-23 09:05:22-03
115	74	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-02-15 05:56:07-03
116	7	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-10 01:24:07-03
116	3	1	5	\N	2025-05-06 06:21:46-03
116	35	1	3	\N	2024-01-26 01:39:44-03
117	98	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-04 14:31:14-03
117	27	1	2	Uma leitura rápida, porém cheia de significado.	2025-04-18 11:32:28-03
117	68	1	2	A construção do universo é detalhada e muito bem feita.	2024-08-21 10:41:30-03
118	69	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-02 21:29:55-03
118	88	1	3	\N	2025-09-16 17:03:09-03
118	113	1	1	Uma leitura rápida, porém cheia de significado.	2024-02-11 16:49:44-03
119	73	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-08-13 08:05:16-03
119	20	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-24 16:58:46-03
119	122	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-10-24 22:55:26-03
120	1	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-06-14 11:52:16-03
120	101	1	3	\N	2024-09-17 14:15:23-03
120	19	1	4	\N	2024-04-27 13:37:19-03
121	86	1	3	\N	2024-12-14 06:48:22-03
121	105	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-26 21:30:31-03
121	85	1	3	\N	2024-03-21 15:03:52-03
122	23	1	1	Uma leitura rápida, porém cheia de significado.	2024-09-24 04:22:35-03
122	68	1	5	A construção do universo é detalhada e muito bem feita.	2024-03-07 06:46:45-03
122	22	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-29 03:57:07-03
123	35	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-14 17:54:22-03
123	40	1	3	\N	2025-08-23 15:50:10-03
123	37	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-05-11 04:14:17-03
124	44	1	4	\N	2024-06-30 05:17:10-03
124	25	1	1	\N	2024-05-29 19:26:13-03
124	91	1	2	\N	2025-04-16 17:31:34-03
125	90	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-04 04:51:10-03
125	119	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-12 06:28:19-03
125	101	1	5	\N	2025-09-25 08:29:03-03
126	98	1	1	Uma obra que surpreende pela profundidade emocional.	2023-12-21 15:30:28-03
126	30	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-29 02:37:41-03
126	116	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-24 05:12:29-03
127	74	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-05-27 01:05:20-03
127	115	1	1	A construção do universo é detalhada e muito bem feita.	2023-12-30 05:40:48-03
127	31	1	4	\N	2025-09-03 17:36:52-03
128	115	1	1	\N	2024-09-04 16:12:45-03
128	104	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-04-01 04:40:48-03
128	91	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-05-23 14:27:27-03
129	33	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-14 07:34:09-03
129	56	1	3	Uma leitura rápida, porém cheia de significado.	2024-09-09 01:32:16-03
129	113	1	3	A construção do universo é detalhada e muito bem feita.	2024-09-05 23:13:15-03
130	50	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-05-09 16:38:16-03
130	56	1	5	Uma obra que surpreende pela profundidade emocional.	2025-08-27 00:52:18-03
130	100	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-01-28 06:42:06-03
131	42	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-29 12:20:30-03
131	106	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-03 10:29:18-03
131	4	1	3	Uma leitura rápida, porém cheia de significado.	2025-10-30 20:00:21-03
132	25	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-13 21:27:09-03
132	92	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-05-15 08:01:57-03
132	15	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-06-15 11:09:43-03
133	77	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-11-27 07:17:25-03
133	19	1	2	\N	2024-04-19 23:58:48-03
133	52	1	4	\N	2025-09-01 21:08:40-03
134	92	1	1	\N	2024-02-09 05:45:06-03
134	98	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-28 01:04:47-03
134	93	1	4	\N	2025-11-12 20:50:05-03
135	45	1	1	A construção do universo é detalhada e muito bem feita.	2025-02-16 23:41:26-03
135	103	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-03-13 12:52:53-03
135	75	1	3	\N	2024-12-09 15:01:04-03
136	33	1	5	\N	2024-07-20 19:03:18-03
136	101	1	2	\N	2023-12-17 16:47:05-03
136	34	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-02-03 19:11:00-03
137	81	1	5	Uma obra que surpreende pela profundidade emocional.	2025-04-23 06:35:44-03
137	75	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-06-03 22:09:33-03
137	23	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-12-18 14:04:46-03
138	21	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-07-13 20:28:18-03
138	91	1	1	O livro traz boas reflexões e personagens bem construídos.	2023-12-05 20:23:50-03
139	44	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-07-26 08:51:53-03
139	1	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-25 14:24:01-03
139	105	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-09-24 06:24:05-03
140	16	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-04-26 07:58:25-03
140	18	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-07-25 09:42:32-03
140	41	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-05-14 19:48:54-03
141	8	1	4	\N	2025-04-15 23:45:54-03
141	90	1	5	\N	2024-04-17 20:59:53-03
141	40	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-07-22 08:54:13-03
142	53	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-01-22 05:35:33-03
142	7	1	3	A construção do universo é detalhada e muito bem feita.	2024-05-15 04:23:09-03
142	57	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-06-06 23:55:30-03
143	59	1	2	\N	2025-04-25 10:09:05-03
143	103	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-11-10 00:27:33-03
143	34	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-02-14 18:39:33-03
144	52	1	1	Uma obra que surpreende pela profundidade emocional.	2023-11-17 10:53:02-03
144	79	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-15 08:23:13-03
144	89	1	5	\N	2025-10-29 07:59:23-03
145	102	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-04-17 06:41:43-03
145	101	1	1	\N	2025-03-28 09:32:09-03
145	110	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-10 15:44:32-03
146	61	1	2	\N	2025-10-07 10:29:28-03
146	124	1	3	\N	2025-07-15 11:13:44-03
146	5	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-02-27 01:06:54-03
147	121	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-02 10:24:01-03
147	71	1	2	\N	2024-03-27 09:02:37-03
147	90	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-03-16 17:04:04-03
148	62	1	4	A construção do universo é detalhada e muito bem feita.	2024-09-11 22:25:33-03
148	123	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-10-22 06:03:22-03
148	114	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-11 11:43:33-03
149	60	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-10-31 18:24:45-03
149	47	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-03-12 01:27:18-03
149	113	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-01-20 21:33:49-03
150	103	1	1	Uma obra que surpreende pela profundidade emocional.	2024-09-10 03:39:56-03
150	23	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-09-26 22:48:13-03
150	20	1	1	Uma obra que surpreende pela profundidade emocional.	2023-12-21 16:11:30-03
151	100	1	4	\N	2024-05-18 05:05:48-03
151	20	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-27 17:39:06-03
151	87	1	3	\N	2025-10-05 02:00:39-03
152	119	1	5	Uma obra que surpreende pela profundidade emocional.	2024-04-06 03:44:23-03
152	18	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-07 15:11:44-03
152	47	1	3	\N	2025-10-13 12:17:24-03
153	56	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-08-27 15:23:49-03
153	115	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-23 09:26:59-03
153	32	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-03-22 06:33:01-03
154	36	1	3	Uma leitura rápida, porém cheia de significado.	2025-08-28 12:23:10-03
154	114	1	5	\N	2024-09-14 15:43:16-03
154	68	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-01-11 03:43:47-03
155	42	1	4	\N	2024-06-20 06:29:03-03
155	112	1	1	Uma obra que surpreende pela profundidade emocional.	2025-08-15 16:41:02-03
155	103	1	2	\N	2024-01-05 00:46:42-03
156	4	1	4	A construção do universo é detalhada e muito bem feita.	2025-04-25 14:57:56-03
156	99	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-15 20:45:57-03
156	54	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-11-29 18:31:34-03
157	21	1	3	\N	2025-01-09 08:49:09-03
157	76	1	1	\N	2025-04-30 18:59:35-03
157	118	1	3	A construção do universo é detalhada e muito bem feita.	2025-04-27 13:34:48-03
158	99	1	5	\N	2024-09-21 08:03:23-03
158	61	1	2	\N	2025-11-04 07:22:39-03
158	81	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-08-29 18:25:23-03
159	42	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-05-29 00:25:27-03
159	38	1	1	A trama é inteligente e conduzida com bastante habilidade.	2023-12-10 13:25:33-03
159	49	1	4	\N	2024-10-20 06:31:45-03
160	45	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-02-05 04:34:56-03
160	18	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-24 09:19:12-03
160	17	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-07-10 16:35:25-03
161	91	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-11-22 09:06:02-03
161	88	1	2	A construção do universo é detalhada e muito bem feita.	2024-05-29 12:19:37-03
161	10	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-18 21:24:00-03
162	18	1	3	\N	2024-01-08 13:10:41-03
162	105	1	5	\N	2024-12-19 19:29:43-03
162	64	1	3	A construção do universo é detalhada e muito bem feita.	2025-10-02 18:11:04-03
163	99	1	2	Uma leitura rápida, porém cheia de significado.	2024-10-15 00:03:07-03
163	111	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-10-14 04:19:15-03
163	34	1	4	\N	2024-07-02 14:21:01-03
164	96	1	2	\N	2024-10-21 18:14:09-03
164	72	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-08-24 07:33:39-03
164	40	1	5	Uma leitura rápida, porém cheia de significado.	2025-05-18 20:16:48-03
165	53	1	2	Uma obra que surpreende pela profundidade emocional.	2024-01-17 09:07:45-03
764	14	1	3	\N	2024-09-04 02:33:59-03
165	105	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-04-27 16:58:10-03
165	13	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-03-05 07:13:29-03
166	90	1	5	\N	2024-01-26 03:26:12-03
166	27	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-06-30 02:06:19-03
166	77	1	5	Uma obra que surpreende pela profundidade emocional.	2025-09-29 14:40:19-03
167	102	1	1	\N	2023-12-09 15:57:22-03
167	5	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-10 16:22:29-03
167	2	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-09-24 02:33:39-03
168	33	1	2	\N	2025-08-05 23:49:10-03
168	86	1	5	Uma obra que surpreende pela profundidade emocional.	2024-07-09 11:19:52-03
168	63	1	5	\N	2025-06-28 07:10:45-03
169	22	1	2	\N	2024-09-12 22:18:20-03
169	4	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-03-09 01:12:47-03
169	106	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-10-30 12:45:41-03
170	52	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-12-03 10:07:05-03
170	34	1	2	\N	2024-06-11 04:48:37-03
170	3	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2023-12-20 07:40:53-03
171	119	1	5	A construção do universo é detalhada e muito bem feita.	2024-10-24 00:58:40-03
171	103	1	5	\N	2024-05-30 10:13:04-03
171	12	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-02-14 21:42:27-03
172	35	1	4	A construção do universo é detalhada e muito bem feita.	2024-01-31 19:28:59-03
172	107	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-16 22:16:46-03
172	65	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-13 19:10:54-03
173	110	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-13 04:58:33-03
173	78	1	4	Uma leitura rápida, porém cheia de significado.	2025-01-25 17:17:34-03
173	107	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-27 23:03:14-03
174	30	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-20 05:16:13-03
174	105	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-06-03 05:04:12-03
174	15	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-08-10 15:20:27-03
175	1	1	4	Uma obra que surpreende pela profundidade emocional.	2025-02-09 00:39:54-03
175	5	1	4	\N	2024-04-24 13:28:49-03
175	111	1	1	\N	2025-09-08 11:56:10-03
176	72	1	3	\N	2025-10-25 17:30:27-03
176	45	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-03-27 18:32:06-03
176	112	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-12 12:43:33-03
177	64	1	5	\N	2025-09-28 15:55:26-03
177	46	1	1	A construção do universo é detalhada e muito bem feita.	2025-03-25 08:02:46-03
177	122	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-06-11 18:21:56-03
178	124	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-09 12:26:30-03
178	49	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-10 16:49:44-03
178	111	1	3	Uma obra que surpreende pela profundidade emocional.	2024-10-18 21:16:16-03
179	107	1	4	A construção do universo é detalhada e muito bem feita.	2024-09-12 06:11:55-03
179	100	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-01-13 01:06:58-03
179	16	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-14 11:58:27-03
180	125	1	3	\N	2023-11-30 18:10:44-03
180	52	1	4	\N	2025-09-18 16:24:58-03
180	99	1	1	Uma leitura rápida, porém cheia de significado.	2025-10-08 23:11:24-03
181	120	1	2	\N	2025-08-10 00:33:59-03
181	32	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-03 05:52:11-03
181	96	1	4	\N	2024-12-08 07:24:50-03
182	60	1	5	\N	2024-03-16 20:03:17-03
182	66	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-07-26 14:48:48-03
182	126	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-23 01:05:55-03
183	67	1	1	A construção do universo é detalhada e muito bem feita.	2024-10-27 05:33:11-03
183	88	1	2	\N	2024-02-29 17:17:13-03
183	1	1	4	\N	2024-08-19 18:03:02-03
184	74	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-02-05 12:12:45-03
184	99	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-09-29 14:58:37-03
184	6	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-12 08:04:06-03
185	2	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-11-13 12:25:42-03
185	49	1	5	\N	2024-07-08 04:49:08-03
185	69	1	2	Uma obra que surpreende pela profundidade emocional.	2024-03-20 16:37:42-03
186	26	1	5	\N	2025-05-26 05:42:45-03
186	109	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-04-30 23:44:16-03
186	1	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-31 11:32:29-03
187	49	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-08 11:59:11-03
187	61	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-11 18:01:35-03
187	104	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-09-30 18:21:37-03
188	48	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-03 18:32:28-03
188	106	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-29 20:33:34-03
188	44	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-11-07 04:05:16-03
189	19	1	2	A trama é inteligente e conduzida com bastante habilidade.	2024-12-19 18:54:27-03
189	80	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-08-02 03:50:40-03
189	99	1	5	A obra aborda temas importantes de maneira leve e acessível.	2023-12-04 22:58:46-03
190	89	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-03-16 19:58:50-03
190	117	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-11-15 16:28:06-03
190	61	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-11-13 21:21:59-03
191	49	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-02-21 02:33:33-03
191	11	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-25 10:05:42-03
191	73	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-03-27 21:37:31-03
192	1	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-09-16 11:47:30-03
192	71	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-07-05 23:33:56-03
193	30	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-31 03:10:13-03
193	57	1	2	\N	2025-05-30 11:17:08-03
193	37	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-10-22 22:06:25-03
194	39	1	1	\N	2024-09-04 00:38:03-03
194	120	1	2	Uma obra que surpreende pela profundidade emocional.	2024-03-16 00:13:28-03
194	67	1	5	\N	2025-10-20 14:44:05-03
195	99	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-06-15 15:59:57-03
195	116	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-05-17 22:25:15-03
195	60	1	1	\N	2025-09-27 11:09:51-03
196	103	1	3	\N	2023-11-27 02:24:28-03
196	99	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2023-11-24 23:22:46-03
196	124	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-09-30 05:25:12-03
197	92	1	5	Uma leitura rápida, porém cheia de significado.	2025-08-18 12:30:50-03
197	109	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-09-24 16:45:39-03
197	77	1	5	\N	2024-06-18 04:34:42-03
198	77	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-16 08:27:59-03
198	57	1	3	A construção do universo é detalhada e muito bem feita.	2024-08-12 20:35:12-03
198	5	1	1	A construção do universo é detalhada e muito bem feita.	2025-10-01 07:21:36-03
199	32	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-11-14 22:55:32-03
199	57	1	1	\N	2024-10-02 14:03:38-03
199	112	1	5	Uma obra que surpreende pela profundidade emocional.	2025-08-11 13:11:57-03
200	82	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-03-16 06:55:31-03
200	37	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-10-23 10:14:13-03
200	114	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-01-12 05:25:23-03
201	41	1	1	Uma leitura rápida, porém cheia de significado.	2025-06-23 07:15:00-03
201	109	1	2	\N	2024-05-22 01:40:38-03
201	60	1	4	\N	2025-02-01 21:07:07-03
202	91	1	3	\N	2024-11-29 12:09:30-03
202	70	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-29 07:09:32-03
202	27	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-11-06 09:09:58-03
203	70	1	1	\N	2023-12-01 07:58:45-03
203	27	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-05 17:37:36-03
203	82	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-06 12:18:30-03
204	9	1	4	\N	2024-04-06 08:40:28-03
204	11	1	2	Uma obra que surpreende pela profundidade emocional.	2023-12-04 12:49:56-03
204	78	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-03-03 16:22:15-03
205	99	1	5	\N	2025-02-07 05:20:57-03
205	104	1	1	Uma leitura rápida, porém cheia de significado.	2025-04-04 12:15:36-03
205	31	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-04-29 05:18:50-03
206	15	1	3	\N	2023-12-22 09:17:18-03
206	76	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-10-17 00:22:22-03
206	58	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-01-10 14:31:36-03
207	34	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-15 21:00:36-03
207	120	1	5	Uma obra que surpreende pela profundidade emocional.	2024-01-02 10:39:32-03
207	12	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-10-29 13:53:30-03
208	50	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-12 13:55:45-03
208	94	1	2	\N	2024-10-09 21:39:42-03
208	112	1	1	O livro traz boas reflexões e personagens bem construídos.	2023-12-17 09:31:41-03
209	32	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-05-12 20:29:39-03
209	5	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-15 10:17:12-03
209	81	1	2	\N	2024-12-03 22:24:07-03
210	70	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-09-05 01:38:18-03
210	8	1	4	\N	2023-11-18 16:07:11-03
210	44	1	3	Uma leitura rápida, porém cheia de significado.	2025-03-18 09:34:55-03
211	13	1	4	\N	2025-06-17 14:00:03-03
211	79	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-23 03:30:13-03
211	72	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-06-09 07:39:45-03
212	17	1	5	\N	2025-10-03 04:25:53-03
212	63	1	2	Uma obra que surpreende pela profundidade emocional.	2024-05-04 05:58:17-03
212	5	1	2	\N	2025-04-05 23:18:59-03
213	89	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-08-22 23:12:42-03
213	85	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-03-18 11:44:18-03
213	124	1	3	\N	2024-04-10 01:49:19-03
214	71	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-08-13 12:01:55-03
214	110	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-03 15:06:56-03
214	26	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-04 00:09:31-03
215	40	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-04 17:09:23-03
215	112	1	1	Uma obra que surpreende pela profundidade emocional.	2024-06-06 18:27:45-03
215	91	1	2	\N	2024-08-27 11:14:45-03
216	126	1	5	A construção do universo é detalhada e muito bem feita.	2023-12-25 08:57:33-03
216	26	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-24 00:39:10-03
216	66	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-07-04 01:37:03-03
217	126	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-04-06 21:45:42-03
217	60	1	4	Uma obra que surpreende pela profundidade emocional.	2023-11-17 23:02:14-03
217	42	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-25 10:04:03-03
218	82	1	1	\N	2024-12-13 11:59:11-03
218	109	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-02 09:00:19-03
218	35	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-26 05:30:48-03
219	32	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-12-24 00:22:32-03
219	109	1	1	\N	2024-02-12 19:07:15-03
848	108	1	4	\N	2024-07-14 00:26:59-03
219	114	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-02-19 18:14:15-03
220	33	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-08-15 14:46:50-03
220	122	1	1	Uma obra que surpreende pela profundidade emocional.	2025-09-10 02:03:13-03
220	41	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-01-05 13:37:29-03
221	104	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-07-24 07:04:48-03
221	62	1	1	\N	2023-12-01 18:14:07-03
221	50	1	2	\N	2023-12-29 03:53:27-03
222	2	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-11 13:37:00-03
222	115	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-07 23:42:37-03
222	97	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-29 13:24:01-03
223	90	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-16 13:43:43-03
223	120	1	3	Uma obra que surpreende pela profundidade emocional.	2025-11-09 12:29:24-03
223	119	1	2	\N	2025-07-15 13:20:14-03
224	101	1	5	\N	2025-09-21 12:53:29-03
224	19	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-09-05 18:25:22-03
224	24	1	4	\N	2025-04-28 12:56:29-03
225	91	1	2	\N	2024-08-25 16:18:04-03
225	121	1	2	\N	2024-09-16 02:38:44-03
225	21	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2023-11-18 19:04:56-03
226	68	1	1	\N	2025-04-05 02:37:26-03
226	100	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-04-17 12:44:25-03
226	39	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-26 23:11:49-03
227	50	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-08-14 08:12:08-03
227	69	1	5	Uma obra que surpreende pela profundidade emocional.	2025-06-30 16:27:35-03
227	68	1	1	\N	2024-03-05 07:22:34-03
228	126	1	4	Uma obra que surpreende pela profundidade emocional.	2025-06-19 15:29:21-03
228	32	1	4	\N	2024-08-21 06:36:13-03
228	96	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-10-23 05:29:17-03
229	115	1	5	Uma obra que surpreende pela profundidade emocional.	2025-07-29 07:31:54-03
229	98	1	1	\N	2024-11-01 22:24:49-03
229	21	1	1	Uma obra que surpreende pela profundidade emocional.	2024-08-16 23:28:56-03
230	89	1	4	\N	2024-11-20 10:26:43-03
230	58	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-03-14 09:09:38-03
230	32	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-03-21 00:07:21-03
231	45	1	3	\N	2024-07-30 09:37:06-03
231	86	1	3	Uma leitura rápida, porém cheia de significado.	2025-11-14 00:59:35-03
231	46	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-17 18:22:33-03
232	104	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-19 11:06:02-03
232	94	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-04 04:55:10-03
232	120	1	4	\N	2025-02-10 19:45:08-03
233	121	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-02 07:49:30-03
233	104	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-03-06 22:22:59-03
233	90	1	4	Uma leitura rápida, porém cheia de significado.	2025-09-06 12:24:20-03
234	39	1	5	\N	2025-05-15 23:53:39-03
234	87	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-08 02:36:31-03
234	105	1	5	Uma obra que surpreende pela profundidade emocional.	2024-08-19 07:54:12-03
235	104	1	5	\N	2024-12-27 02:50:49-03
235	77	1	5	\N	2024-10-24 22:25:16-03
235	67	1	4	\N	2025-11-11 04:24:44-03
236	34	1	4	\N	2024-04-03 10:07:29-03
236	56	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-05-06 15:02:10-03
236	39	1	2	\N	2024-11-07 05:54:55-03
237	59	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-26 00:12:52-03
237	89	1	3	\N	2024-11-22 19:19:39-03
237	9	1	1	\N	2024-12-27 22:46:54-03
238	28	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-26 00:13:11-03
238	121	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-05-13 04:54:33-03
238	115	1	1	Uma obra que surpreende pela profundidade emocional.	2023-11-25 03:28:05-03
239	3	1	2	\N	2023-12-26 20:35:43-03
239	78	1	3	\N	2025-11-09 08:35:41-03
239	118	1	2	A trama é inteligente e conduzida com bastante habilidade.	2024-10-10 05:08:16-03
240	95	1	3	Uma leitura rápida, porém cheia de significado.	2025-09-28 23:41:17-03
240	47	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-11-28 08:28:33-03
240	110	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-07-13 19:27:18-03
241	46	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-02-22 08:37:18-03
241	95	1	2	Uma obra que surpreende pela profundidade emocional.	2025-09-06 00:02:59-03
241	27	1	5	Uma obra que surpreende pela profundidade emocional.	2024-12-07 21:21:31-03
242	76	1	2	\N	2025-05-07 02:20:37-03
242	81	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-27 03:29:49-03
242	121	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-05-07 00:38:43-03
243	120	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-12 06:53:44-03
243	18	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-10-25 15:46:28-03
243	65	1	3	\N	2025-09-27 06:44:47-03
244	41	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2023-11-18 00:54:07-03
244	126	1	5	\N	2024-03-17 16:28:56-03
244	85	1	3	\N	2024-08-11 15:11:04-03
245	10	1	2	\N	2025-06-02 16:41:39-03
245	59	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-05-08 13:16:47-03
245	103	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-05 08:17:22-03
246	86	1	4	\N	2024-08-13 14:46:07-03
246	21	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-10 15:46:10-03
246	78	1	2	\N	2024-07-20 20:17:09-03
247	62	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-11-13 16:46:43-03
247	38	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-23 11:45:54-03
247	88	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-11-13 07:33:50-03
248	103	1	1	A obra aborda temas importantes de maneira leve e acessível.	2025-01-25 12:11:49-03
248	10	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-07 19:21:01-03
248	2	1	1	O livro traz boas reflexões e personagens bem construídos.	2023-11-24 15:16:55-03
249	11	1	5	\N	2023-12-05 15:41:26-03
249	90	1	2	A construção do universo é detalhada e muito bem feita.	2025-01-18 04:02:33-03
249	51	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-10 01:46:02-03
250	17	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-03-14 12:52:36-03
250	72	1	1	\N	2025-10-02 10:24:28-03
250	94	1	4	\N	2025-09-16 03:14:53-03
251	19	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-01-20 00:07:03-03
251	72	1	2	\N	2024-11-20 20:18:13-03
251	121	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-11-12 03:32:49-03
252	33	1	1	\N	2024-09-24 05:14:20-03
252	28	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-01-10 14:15:58-03
252	52	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-07-26 13:48:53-03
253	99	1	5	Uma obra que surpreende pela profundidade emocional.	2024-01-21 18:00:38-03
253	19	1	3	Uma obra que surpreende pela profundidade emocional.	2024-04-14 10:27:07-03
253	107	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-07 02:53:06-03
254	12	1	3	Uma obra que surpreende pela profundidade emocional.	2025-05-19 17:17:57-03
254	48	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-07-28 16:21:57-03
254	27	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-06-11 03:04:50-03
255	50	1	5	Uma obra que surpreende pela profundidade emocional.	2025-11-10 08:25:30-03
255	100	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-14 11:28:24-03
255	52	1	2	A construção do universo é detalhada e muito bem feita.	2024-07-13 16:11:12-03
256	41	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-11-09 14:11:06-03
256	19	1	4	A construção do universo é detalhada e muito bem feita.	2025-09-14 06:41:54-03
256	113	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-01-05 06:11:12-03
257	39	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-08-18 00:50:17-03
257	46	1	5	Uma obra que surpreende pela profundidade emocional.	2025-08-22 13:37:51-03
257	121	1	2	\N	2025-10-26 09:11:41-03
258	5	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-03 04:54:10-03
258	93	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-22 07:39:42-03
258	50	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-04-25 00:56:30-03
259	99	1	5	A construção do universo é detalhada e muito bem feita.	2024-08-10 04:41:48-03
259	80	1	1	\N	2024-08-31 04:18:59-03
259	32	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-09-13 14:50:55-03
260	24	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-07-22 08:31:54-03
260	44	1	1	\N	2024-02-29 22:18:59-03
260	35	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-03-13 04:46:58-03
261	96	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-08-07 04:12:26-03
261	93	1	2	\N	2024-03-03 22:54:43-03
261	114	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-01-20 12:19:08-03
262	107	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-14 14:16:31-03
262	50	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-12 23:47:50-03
262	90	1	4	\N	2025-10-02 17:31:25-03
263	77	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-12 13:26:55-03
263	106	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-30 04:50:01-03
263	125	1	5	\N	2025-10-09 15:46:08-03
264	111	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-03-10 17:39:56-03
264	81	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-05-13 06:43:04-03
264	19	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-07-23 05:14:46-03
265	69	1	3	\N	2024-07-01 00:29:02-03
265	76	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-07-27 09:01:40-03
265	111	1	2	Uma obra que surpreende pela profundidade emocional.	2025-04-05 00:05:48-03
266	109	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-21 21:33:46-03
266	98	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-12-23 03:48:54-03
266	33	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-10-13 01:35:35-03
267	77	1	2	\N	2024-02-08 06:39:02-03
267	46	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-10 02:59:59-03
267	78	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-15 20:02:02-03
268	26	1	4	A construção do universo é detalhada e muito bem feita.	2025-11-14 03:49:27-03
268	46	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-19 23:51:52-03
268	109	1	5	\N	2023-11-17 03:22:25-03
269	109	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-02-01 14:17:12-03
269	72	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-12 17:05:21-03
269	59	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-18 00:10:46-03
270	115	1	2	\N	2025-01-25 23:09:11-03
270	8	1	5	\N	2024-02-10 04:15:26-03
270	43	1	4	Uma obra que surpreende pela profundidade emocional.	2024-05-07 20:11:10-03
271	110	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-11-05 04:23:56-03
271	118	1	1	\N	2025-05-02 05:53:21-03
271	62	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-04 09:12:18-03
272	110	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-09 14:37:17-03
272	85	1	1	\N	2024-12-25 21:57:00-03
272	75	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-18 19:03:41-03
273	106	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-21 21:52:18-03
273	120	1	4	\N	2023-12-01 15:33:37-03
273	94	1	5	\N	2025-07-01 19:23:33-03
274	119	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-06-22 11:32:23-03
274	79	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-19 13:34:57-03
848	1	1	3	\N	2024-09-25 07:50:31-03
274	68	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-05-03 13:26:03-03
275	34	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-09 01:29:31-03
275	64	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-04-15 09:47:00-03
275	101	1	4	\N	2025-07-01 21:28:14-03
276	24	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-12-20 07:18:48-03
276	26	1	4	Uma leitura rápida, porém cheia de significado.	2024-09-04 06:02:40-03
276	112	1	1	\N	2025-07-06 00:08:44-03
277	90	1	3	\N	2025-01-22 08:48:32-03
277	80	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-04-16 12:49:49-03
277	110	1	2	\N	2024-10-06 02:08:04-03
278	87	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-02-22 17:21:38-03
278	1	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-27 14:42:15-03
278	54	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-09-14 23:45:34-03
279	113	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-04-26 07:27:40-03
279	57	1	1	Uma obra que surpreende pela profundidade emocional.	2024-11-16 12:54:26-03
279	30	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-25 11:14:47-03
280	28	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-31 17:40:30-03
280	37	1	1	\N	2025-02-03 08:28:47-03
280	71	1	1	A obra aborda temas importantes de maneira leve e acessível.	2025-03-29 22:15:23-03
281	92	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-26 01:18:34-03
281	112	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-07-28 06:42:50-03
281	118	1	1	Uma obra que surpreende pela profundidade emocional.	2023-12-13 01:40:25-03
282	49	1	3	\N	2024-01-04 04:04:11-03
282	66	1	4	\N	2024-03-08 19:08:58-03
282	7	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-01-16 09:38:33-03
283	92	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-01-03 23:54:14-03
283	70	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-09-05 11:48:39-03
283	73	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-08-29 09:09:51-03
284	51	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-04-20 09:21:02-03
284	12	1	4	\N	2024-06-30 04:14:32-03
284	13	1	2	A construção do universo é detalhada e muito bem feita.	2024-05-03 23:41:14-03
285	31	1	4	A construção do universo é detalhada e muito bem feita.	2025-06-05 18:04:24-03
285	13	1	2	A construção do universo é detalhada e muito bem feita.	2025-02-13 21:24:37-03
285	77	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-28 07:54:45-03
286	66	1	2	Uma leitura rápida, porém cheia de significado.	2024-08-21 17:44:57-03
286	17	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-11-26 11:25:17-03
286	78	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-02 23:30:20-03
287	82	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-06-20 14:27:53-03
287	81	1	1	\N	2024-10-10 10:38:09-03
287	78	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-07 10:28:22-03
288	28	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-06-15 14:29:36-03
288	106	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-11-04 23:55:55-03
288	1	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-05-29 18:44:02-03
289	120	1	3	\N	2023-12-14 15:31:17-03
289	86	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-08 22:13:54-03
289	115	1	3	A construção do universo é detalhada e muito bem feita.	2025-01-02 17:55:42-03
290	12	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-10 23:27:23-03
290	30	1	1	Uma obra que surpreende pela profundidade emocional.	2025-08-02 06:02:39-03
290	111	1	5	\N	2024-05-03 14:26:49-03
291	48	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-15 06:08:53-03
291	95	1	3	A construção do universo é detalhada e muito bem feita.	2024-01-28 16:25:42-03
291	87	1	3	\N	2025-08-26 11:33:22-03
292	108	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-25 02:57:24-03
292	25	1	4	Uma leitura rápida, porém cheia de significado.	2024-12-10 00:56:53-03
292	26	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-10 23:20:46-03
293	85	1	2	\N	2025-02-17 20:47:41-03
293	20	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-09-18 10:17:36-03
293	68	1	2	\N	2025-09-09 18:56:55-03
294	55	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-26 11:43:27-03
294	34	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-01 22:32:02-03
294	95	1	4	\N	2025-06-09 14:11:13-03
295	108	1	4	O livro traz boas reflexões e personagens bem construídos.	2023-12-11 21:08:27-03
295	5	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-10-11 21:10:08-03
295	39	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-05 22:09:59-03
296	6	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-03 04:38:11-03
296	4	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-02 07:29:35-03
296	111	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-10-01 07:48:54-03
297	16	1	5	\N	2025-10-14 02:02:56-03
297	87	1	5	A construção do universo é detalhada e muito bem feita.	2024-06-04 02:32:34-03
297	106	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-01-30 23:52:11-03
298	91	1	2	\N	2024-02-17 04:07:31-03
298	77	1	2	\N	2024-08-06 19:07:13-03
298	87	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-02 02:16:11-03
299	14	1	3	A construção do universo é detalhada e muito bem feita.	2025-07-26 14:42:51-03
299	36	1	3	Uma obra que surpreende pela profundidade emocional.	2025-11-14 10:40:30-03
299	13	1	1	Uma obra que surpreende pela profundidade emocional.	2024-05-16 05:55:23-03
300	8	1	3	A construção do universo é detalhada e muito bem feita.	2024-01-18 16:24:28-03
300	45	1	1	\N	2023-11-19 17:08:39-03
300	43	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-04-07 16:20:30-03
301	76	1	2	\N	2024-04-28 17:42:41-03
301	93	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-19 12:30:49-03
301	19	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-24 01:54:29-03
302	71	1	3	\N	2024-02-26 09:46:48-03
302	126	1	5	\N	2024-07-21 17:17:47-03
302	17	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-10 02:31:24-03
303	84	1	2	\N	2024-11-13 16:31:57-03
303	82	1	3	\N	2025-10-25 06:46:04-03
303	35	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-11 09:55:08-03
304	58	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-07-02 19:06:31-03
304	4	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-03-31 07:50:50-03
304	50	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-06-13 04:30:10-03
305	96	1	2	\N	2023-12-17 22:26:42-03
305	67	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-21 11:31:44-03
305	25	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-09-22 05:01:45-03
306	34	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-10-30 14:13:20-03
306	66	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-30 12:10:08-03
306	52	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-08 18:49:07-03
307	111	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-18 05:08:59-03
307	105	1	5	\N	2025-01-07 16:26:27-03
307	14	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-09-26 05:35:17-03
308	124	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-08-04 20:43:10-03
308	83	1	4	A construção do universo é detalhada e muito bem feita.	2024-09-14 07:01:48-03
308	16	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-11-12 15:16:12-03
309	53	1	1	\N	2024-03-02 23:21:43-03
309	47	1	5	\N	2024-04-17 14:54:18-03
309	75	1	2	Uma obra que surpreende pela profundidade emocional.	2024-01-28 15:03:35-03
310	110	1	4	Uma leitura rápida, porém cheia de significado.	2024-09-14 02:19:44-03
310	90	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-18 22:38:08-03
310	50	1	3	Uma obra que surpreende pela profundidade emocional.	2025-02-17 15:00:09-03
311	36	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-17 06:57:05-03
311	68	1	1	\N	2025-05-12 10:04:43-03
311	16	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-07 06:58:50-03
312	58	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-10-12 13:01:07-03
312	109	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-05-31 20:52:19-03
312	26	1	2	\N	2025-08-09 14:47:42-03
313	52	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-29 20:01:00-03
313	2	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-08 06:53:03-03
313	14	1	5	\N	2025-03-26 01:50:22-03
314	114	1	5	A construção do universo é detalhada e muito bem feita.	2025-10-17 15:51:52-03
314	12	1	2	\N	2025-05-08 13:40:12-03
314	14	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-06-07 15:00:32-03
315	22	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-23 09:31:51-03
315	60	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-15 22:02:29-03
315	34	1	1	A construção do universo é detalhada e muito bem feita.	2024-04-19 23:55:25-03
316	81	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-11-01 07:39:57-03
316	99	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-01-21 12:12:36-03
316	49	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-07-10 02:43:44-03
317	24	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-03-30 11:42:01-03
317	55	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-02-20 23:28:16-03
317	82	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-01-29 02:55:13-03
318	113	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-11 17:06:40-03
318	96	1	2	\N	2025-01-16 01:54:37-03
318	92	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-07-12 05:59:42-03
319	48	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-08-27 04:37:19-03
319	61	1	1	Uma obra que surpreende pela profundidade emocional.	2025-08-20 23:40:10-03
319	80	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-03-19 00:13:53-03
320	122	1	3	Uma leitura rápida, porém cheia de significado.	2023-12-03 22:04:47-03
320	90	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-08-28 18:03:35-03
320	78	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-10-24 04:36:45-03
321	73	1	4	\N	2025-11-14 11:07:40-03
321	27	1	1	\N	2025-11-13 15:41:03-03
321	9	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-24 05:45:50-03
322	27	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-30 00:30:21-03
322	11	1	3	\N	2024-02-22 23:07:29-03
322	55	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-22 07:55:03-03
323	107	1	4	Uma obra que surpreende pela profundidade emocional.	2025-02-22 16:21:32-03
323	98	1	3	A construção do universo é detalhada e muito bem feita.	2025-06-24 15:00:44-03
323	111	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-15 17:02:51-03
324	53	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-01-08 00:56:04-03
324	49	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-27 09:16:14-03
324	101	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-05-11 18:58:20-03
325	52	1	4	\N	2024-03-28 08:51:17-03
325	87	1	4	\N	2025-03-13 16:56:28-03
325	106	1	5	\N	2025-01-04 18:16:04-03
326	39	1	3	Uma leitura rápida, porém cheia de significado.	2025-08-18 18:24:36-03
326	61	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-26 23:20:44-03
326	71	1	4	\N	2024-09-23 22:41:58-03
327	40	1	2	\N	2024-01-24 21:41:40-03
327	9	1	2	A construção do universo é detalhada e muito bem feita.	2024-11-07 21:54:59-03
327	88	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-30 19:54:34-03
328	113	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-03-27 19:03:17-03
328	9	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-05-28 02:12:50-03
328	100	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-26 21:50:13-03
329	56	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-12 05:44:10-03
329	87	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-07-23 03:35:52-03
329	23	1	2	\N	2024-01-21 07:28:44-03
330	14	1	4	\N	2024-07-14 05:37:05-03
330	85	1	3	\N	2024-09-21 04:25:39-03
330	15	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-11-13 02:06:36-03
331	76	1	3	\N	2024-05-03 04:48:32-03
331	105	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-11-14 16:00:15-03
331	35	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-14 15:09:43-03
332	82	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-25 07:28:39-03
332	40	1	4	Uma leitura rápida, porém cheia de significado.	2024-08-04 21:33:34-03
332	71	1	3	Uma obra que surpreende pela profundidade emocional.	2024-03-12 20:34:44-03
333	8	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-01-25 03:22:49-03
333	1	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-13 14:27:36-03
333	5	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-02-07 17:23:14-03
334	18	1	1	\N	2025-06-19 16:53:49-03
334	102	1	5	\N	2025-02-19 06:02:36-03
334	14	1	1	O livro traz boas reflexões e personagens bem construídos.	2023-11-16 09:17:55-03
335	120	1	1	Uma leitura rápida, porém cheia de significado.	2024-05-12 13:37:07-03
335	63	1	4	\N	2024-03-21 23:44:41-03
335	56	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-12-13 11:53:00-03
336	110	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-19 09:05:28-03
336	48	1	5	\N	2024-08-07 08:36:03-03
336	94	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-12 10:37:45-03
337	102	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-01-07 08:20:03-03
337	49	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-02-27 12:35:58-03
337	115	1	4	\N	2024-04-23 21:41:29-03
338	31	1	1	A construção do universo é detalhada e muito bem feita.	2025-09-01 01:24:40-03
338	73	1	3	\N	2023-12-28 23:45:44-03
338	89	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-06-13 09:00:17-03
339	2	1	3	\N	2024-06-22 04:13:30-03
339	1	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-10-20 09:24:53-03
339	19	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-25 21:53:49-03
340	95	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-17 18:21:33-03
340	62	1	2	\N	2024-09-22 14:17:23-03
340	86	1	2	\N	2023-12-08 22:25:27-03
341	45	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-01-24 03:12:00-03
341	105	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-04-26 15:53:39-03
341	96	1	2	A construção do universo é detalhada e muito bem feita.	2024-02-08 13:59:39-03
342	25	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-10-13 07:07:23-03
342	82	1	3	\N	2024-12-04 22:33:30-03
342	15	1	1	\N	2025-01-22 06:25:37-03
343	100	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-06 03:39:38-03
343	119	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-04-16 15:29:34-03
343	50	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-05-28 13:19:50-03
344	118	1	3	\N	2024-10-09 10:52:10-03
344	34	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-27 10:57:14-03
344	6	1	3	A trama é inteligente e conduzida com bastante habilidade.	2023-12-27 20:07:15-03
345	23	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-11 19:35:06-03
345	33	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-06-21 04:23:43-03
345	48	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-06 05:24:20-03
346	37	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-10-29 14:17:11-03
346	105	1	5	Uma leitura rápida, porém cheia de significado.	2024-12-07 11:21:43-03
346	89	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-05-04 01:04:19-03
347	105	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-12-16 12:34:03-03
347	26	1	4	\N	2025-10-06 18:50:59-03
347	118	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-15 00:04:10-03
348	124	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-13 22:09:22-03
348	106	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-02 22:26:29-03
348	45	1	2	\N	2024-04-09 01:40:09-03
349	94	1	4	\N	2024-10-23 01:57:56-03
349	111	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-09-28 09:45:18-03
349	82	1	5	\N	2023-12-08 23:11:26-03
350	53	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2023-11-26 05:06:52-03
350	97	1	4	\N	2025-01-22 13:06:04-03
350	51	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-30 03:27:13-03
351	120	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2023-12-15 12:22:50-03
351	21	1	1	\N	2025-11-15 05:58:11-03
351	117	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-02-16 12:05:35-03
352	67	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-05-24 08:13:05-03
352	116	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-11 21:09:14-03
352	83	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-01-18 02:45:26-03
353	33	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-07-29 13:58:20-03
353	93	1	4	\N	2025-07-03 18:51:07-03
353	37	1	5	\N	2024-05-28 06:30:50-03
354	26	1	4	\N	2024-07-11 23:16:44-03
354	55	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-09-13 18:56:31-03
354	35	1	3	\N	2025-08-11 00:48:58-03
355	4	1	4	\N	2024-06-12 20:25:52-03
355	64	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-07-16 16:44:59-03
355	87	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-18 14:37:37-03
356	116	1	2	\N	2025-01-06 11:26:18-03
356	61	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-17 23:07:35-03
356	75	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-07-31 07:54:47-03
357	13	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-11-11 18:21:45-03
357	22	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-02 15:54:54-03
357	101	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-08-03 01:03:49-03
358	63	1	5	\N	2024-10-22 06:02:56-03
358	44	1	2	\N	2024-08-16 13:24:06-03
358	91	1	3	\N	2025-11-12 05:22:19-03
359	34	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-08-15 04:46:07-03
359	51	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-14 21:19:03-03
359	105	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-22 18:55:31-03
360	120	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-28 07:12:23-03
360	44	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-01-30 00:38:05-03
360	25	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-14 20:14:15-03
361	18	1	1	A construção do universo é detalhada e muito bem feita.	2025-09-11 15:53:46-03
361	73	1	4	\N	2024-11-08 14:47:53-03
361	34	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-10-03 11:02:37-03
362	80	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-15 05:38:49-03
362	87	1	3	Uma leitura rápida, porém cheia de significado.	2024-05-17 10:23:37-03
362	15	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-05-17 10:17:12-03
363	28	1	3	\N	2023-11-21 11:49:57-03
363	12	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-05-06 12:09:22-03
363	54	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-02-28 21:02:41-03
364	98	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-01-16 18:36:26-03
364	55	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-17 04:45:38-03
364	81	1	4	Uma obra que surpreende pela profundidade emocional.	2024-08-22 19:14:24-03
365	60	1	3	\N	2024-11-24 17:09:49-03
365	125	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-04-20 09:32:33-03
365	17	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-12 07:34:42-03
366	41	1	3	Uma obra que surpreende pela profundidade emocional.	2025-06-21 06:46:09-03
366	23	1	1	Uma leitura rápida, porém cheia de significado.	2024-10-11 09:08:55-03
366	12	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-27 07:24:59-03
367	25	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-10-25 18:27:24-03
367	85	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-10-28 00:09:19-03
367	84	1	1	\N	2025-08-23 17:40:51-03
368	115	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-09-15 12:27:56-03
368	34	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-05 05:20:45-03
368	91	1	2	\N	2025-08-24 17:51:42-03
369	8	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-04-10 11:19:49-03
369	118	1	5	\N	2025-08-13 17:29:52-03
369	15	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-24 18:57:08-03
370	13	1	3	\N	2023-12-19 17:46:29-03
370	28	1	4	\N	2025-08-24 07:59:34-03
370	110	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-08-21 08:44:20-03
371	98	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-12-22 18:12:49-03
371	44	1	3	\N	2024-05-31 17:39:03-03
371	81	1	2	\N	2024-02-26 03:57:29-03
372	106	1	2	A construção do universo é detalhada e muito bem feita.	2024-04-18 18:40:03-03
372	93	1	4	\N	2025-07-09 17:45:14-03
372	11	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-07-20 09:28:07-03
373	103	1	4	\N	2025-08-24 10:03:11-03
373	101	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-06-14 16:21:51-03
373	39	1	2	\N	2024-08-06 04:08:46-03
374	9	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-06-22 11:02:14-03
374	17	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-13 22:16:18-03
374	118	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-12 03:56:17-03
375	41	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-02-29 18:31:52-03
375	85	1	4	\N	2024-01-20 22:54:08-03
375	64	1	3	\N	2024-12-18 01:27:44-03
376	3	1	5	\N	2025-07-18 07:25:49-03
376	80	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-12 01:56:57-03
376	88	1	1	A trama é inteligente e conduzida com bastante habilidade.	2023-12-05 13:19:22-03
377	15	1	5	\N	2024-07-11 07:52:48-03
377	7	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-19 19:17:52-03
377	59	1	4	\N	2025-05-06 17:42:42-03
378	41	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-04-24 16:43:53-03
378	78	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-08-28 18:23:38-03
378	102	1	1	\N	2024-12-26 20:03:27-03
379	62	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-28 01:01:45-03
379	104	1	2	\N	2024-09-11 03:44:55-03
379	18	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-28 13:38:55-03
380	86	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-02 08:26:40-03
380	25	1	2	\N	2024-01-04 00:12:09-03
380	99	1	3	\N	2024-09-11 09:57:39-03
381	84	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-02-23 10:52:42-03
381	122	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-10-31 22:13:53-03
381	68	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-11 19:02:36-03
382	73	1	4	\N	2025-01-19 04:03:29-03
382	1	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-07-16 05:30:23-03
382	114	1	1	Uma obra que surpreende pela profundidade emocional.	2025-07-17 00:41:15-03
383	120	1	3	\N	2024-03-16 03:18:31-03
383	117	1	3	\N	2024-03-10 00:24:54-03
383	115	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-01 01:22:09-03
384	63	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-05-21 02:44:33-03
384	43	1	4	\N	2024-03-01 04:45:38-03
384	104	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-02-16 16:05:13-03
385	120	1	3	\N	2024-05-20 10:52:38-03
385	52	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-30 16:22:18-03
385	115	1	4	\N	2024-07-14 18:01:09-03
386	52	1	2	\N	2024-12-12 20:13:57-03
386	55	1	2	A construção do universo é detalhada e muito bem feita.	2023-12-15 07:53:42-03
386	95	1	5	\N	2025-01-27 15:09:18-03
387	25	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-15 04:17:32-03
387	10	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-08-26 03:56:06-03
387	112	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-25 13:10:42-03
388	56	1	1	\N	2023-12-09 11:26:38-03
388	124	1	1	Uma leitura rápida, porém cheia de significado.	2024-11-19 09:11:20-03
388	24	1	1	\N	2025-09-25 03:50:59-03
389	93	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-19 23:06:01-03
389	13	1	2	Uma leitura rápida, porém cheia de significado.	2024-06-06 06:24:47-03
389	114	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-04-10 12:20:45-03
390	17	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-02-19 06:54:43-03
390	43	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-28 17:04:43-03
390	74	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-02-17 03:51:37-03
391	108	1	2	\N	2024-04-02 15:14:30-03
391	13	1	2	A obra aborda temas importantes de maneira leve e acessível.	2023-12-14 09:50:11-03
391	96	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-10-29 02:47:32-03
392	42	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-01 11:40:39-03
392	22	1	4	A trama é inteligente e conduzida com bastante habilidade.	2023-12-27 17:37:50-03
392	58	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-05 01:05:40-03
393	103	1	4	A construção do universo é detalhada e muito bem feita.	2025-06-23 19:31:10-03
393	43	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-11-07 03:41:43-03
393	119	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-07-25 04:41:54-03
394	8	1	2	\N	2024-09-07 16:48:40-03
394	45	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-03-25 18:02:43-03
394	43	1	1	\N	2024-04-09 10:39:24-03
395	80	1	2	\N	2024-04-26 09:29:16-03
395	81	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-25 20:11:26-03
395	21	1	1	\N	2025-01-21 14:01:23-03
396	105	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-10 21:47:04-03
396	125	1	1	\N	2024-11-24 19:41:43-03
396	35	1	4	\N	2025-03-23 02:48:06-03
397	17	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-01-22 07:01:14-03
397	104	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-25 04:19:14-03
397	105	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-09-30 05:33:35-03
398	54	1	3	\N	2024-07-20 11:21:05-03
398	104	1	5	\N	2025-09-08 01:19:47-03
398	4	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-10-08 14:45:24-03
399	111	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-02-02 04:25:49-03
399	58	1	4	\N	2024-10-01 00:10:48-03
399	112	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-09-19 18:54:26-03
400	47	1	2	\N	2025-04-28 18:33:55-03
400	126	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-21 00:31:48-03
400	76	1	4	\N	2025-01-31 13:23:02-03
401	92	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2023-12-23 02:17:07-03
401	125	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-07-23 21:37:13-03
401	109	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-07-10 18:36:42-03
402	96	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-25 23:25:04-03
402	125	1	4	\N	2024-07-22 08:27:25-03
402	122	1	2	\N	2024-07-19 17:31:10-03
403	95	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-01-08 02:44:23-03
403	96	1	4	\N	2024-10-02 09:16:54-03
403	61	1	3	A construção do universo é detalhada e muito bem feita.	2024-03-31 07:14:14-03
404	45	1	2	A construção do universo é detalhada e muito bem feita.	2025-02-07 18:42:51-03
404	38	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-29 09:00:40-03
404	103	1	3	\N	2024-06-23 23:59:36-03
405	20	1	3	\N	2024-07-07 10:44:59-03
405	39	1	5	\N	2025-07-31 19:53:22-03
405	104	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-11-22 14:32:31-03
406	106	1	4	Uma leitura rápida, porém cheia de significado.	2025-07-26 07:03:45-03
406	24	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-03-07 09:03:37-03
406	119	1	2	A construção do universo é detalhada e muito bem feita.	2024-11-29 19:09:24-03
407	72	1	1	\N	2025-05-04 13:49:40-03
407	92	1	2	\N	2024-07-11 05:10:40-03
407	78	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-24 14:50:10-03
408	100	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-24 19:13:14-03
408	34	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-05 16:30:01-03
408	28	1	2	A obra aborda temas importantes de maneira leve e acessível.	2023-11-29 21:36:04-03
409	26	1	5	\N	2024-03-31 17:10:12-03
409	67	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-27 00:54:08-03
409	38	1	5	\N	2024-01-01 04:48:49-03
410	1	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-12-03 13:55:41-03
410	114	1	2	Uma obra que surpreende pela profundidade emocional.	2023-12-11 13:20:15-03
410	80	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-09-26 15:54:06-03
411	43	1	3	\N	2025-09-28 02:58:41-03
411	124	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-03-01 15:51:20-03
411	36	1	1	\N	2023-12-22 09:57:38-03
412	108	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-16 07:44:22-03
412	83	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-10-28 02:26:17-03
412	77	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2023-11-30 07:45:10-03
413	59	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-11-02 13:39:58-03
413	69	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-12-27 08:21:35-03
413	9	1	2	\N	2024-02-27 09:45:53-03
414	84	1	1	\N	2024-10-01 12:58:09-03
414	71	1	4	Uma obra que surpreende pela profundidade emocional.	2025-05-28 12:35:33-03
414	14	1	2	\N	2024-05-16 20:32:03-03
415	4	1	4	Uma obra que surpreende pela profundidade emocional.	2024-02-28 16:12:24-03
415	86	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-23 23:32:20-03
415	41	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-06-21 05:01:48-03
416	125	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-02 10:44:24-03
416	81	1	2	Uma leitura rápida, porém cheia de significado.	2024-10-20 12:04:56-03
416	7	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-07-19 20:30:52-03
417	97	1	3	\N	2024-11-13 07:10:13-03
417	42	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-12-02 19:35:10-03
417	43	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-03-30 12:02:56-03
418	103	1	5	\N	2024-06-13 19:59:29-03
418	104	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-12-27 14:24:26-03
418	15	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-14 12:51:35-03
419	17	1	4	\N	2025-10-01 07:34:49-03
419	72	1	3	\N	2024-12-24 02:17:39-03
419	81	1	5	Uma leitura rápida, porém cheia de significado.	2024-12-31 05:35:57-03
420	66	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-07-17 20:54:26-03
420	52	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-06-13 16:46:58-03
420	63	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-06-26 10:35:53-03
421	17	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-01-07 02:23:58-03
421	80	1	5	A construção do universo é detalhada e muito bem feita.	2024-04-10 18:06:48-03
421	124	1	3	A construção do universo é detalhada e muito bem feita.	2024-09-17 07:01:42-03
422	28	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-03-28 22:46:41-03
422	92	1	1	\N	2025-04-08 16:55:06-03
422	57	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-09-07 20:23:37-03
423	86	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-08-09 20:51:30-03
423	14	1	1	\N	2025-04-14 02:19:09-03
423	89	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-05-12 11:01:30-03
424	118	1	2	\N	2024-05-24 02:07:53-03
424	44	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-09-14 00:48:23-03
424	30	1	1	A construção do universo é detalhada e muito bem feita.	2024-04-17 14:03:26-03
425	86	1	3	\N	2025-06-12 07:12:04-03
425	22	1	1	\N	2024-02-29 07:45:09-03
425	125	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-07-30 12:22:03-03
426	15	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-03 21:09:23-03
426	33	1	1	Uma obra que surpreende pela profundidade emocional.	2024-10-04 08:27:42-03
426	103	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-03-30 09:42:26-03
427	103	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-14 12:09:22-03
427	16	1	2	\N	2024-10-03 23:27:03-03
427	37	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-20 08:42:27-03
428	10	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-09-09 00:16:20-03
428	62	1	3	\N	2024-02-27 06:41:01-03
428	103	1	1	\N	2024-10-01 05:52:44-03
429	18	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-04 20:43:16-03
429	60	1	4	A construção do universo é detalhada e muito bem feita.	2023-11-29 15:23:10-03
429	105	1	3	\N	2024-02-27 09:49:48-03
430	40	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-02-21 15:02:24-03
430	62	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-05-22 10:54:49-03
430	19	1	1	\N	2025-05-28 18:36:51-03
431	112	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-03-12 22:03:56-03
431	51	1	5	\N	2024-02-16 13:30:26-03
431	30	1	5	\N	2024-05-25 05:26:46-03
432	73	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-03-31 22:47:36-03
432	7	1	2	Uma leitura rápida, porém cheia de significado.	2025-01-20 16:10:44-03
432	52	1	1	\N	2025-06-29 22:02:59-03
433	69	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-08-18 13:54:30-03
433	78	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-02-11 18:25:18-03
433	19	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-05-11 12:22:34-03
434	125	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-08-27 16:31:38-03
434	44	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-18 05:54:40-03
434	24	1	1	\N	2025-02-07 03:59:31-03
435	115	1	1	\N	2025-04-23 08:48:58-03
435	72	1	4	A construção do universo é detalhada e muito bem feita.	2025-08-07 14:43:13-03
435	125	1	4	Uma obra que surpreende pela profundidade emocional.	2024-05-29 17:50:10-03
436	12	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-07 21:03:43-03
436	27	1	3	A construção do universo é detalhada e muito bem feita.	2024-05-07 22:38:59-03
436	6	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-07-04 00:21:13-03
437	116	1	4	\N	2025-11-14 06:58:21-03
437	9	1	1	Uma leitura rápida, porém cheia de significado.	2023-12-18 20:35:45-03
437	103	1	3	\N	2024-03-06 01:21:52-03
438	43	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-10-07 05:37:02-03
438	33	1	2	\N	2024-01-22 04:23:27-03
438	57	1	3	\N	2024-10-12 08:36:04-03
439	117	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-23 19:18:48-03
439	122	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-04-06 00:59:39-03
439	92	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-02-02 12:14:30-03
440	41	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-08-08 20:30:34-03
440	4	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-03 16:26:08-03
440	56	1	3	\N	2024-09-10 01:24:42-03
441	97	1	2	\N	2024-08-18 00:47:53-03
441	84	1	1	\N	2025-05-18 03:14:48-03
441	47	1	4	Uma leitura rápida, porém cheia de significado.	2024-06-12 11:00:13-03
442	90	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-17 22:53:59-03
442	81	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-02-15 05:02:56-03
442	37	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-14 13:18:18-03
443	22	1	1	A obra aborda temas importantes de maneira leve e acessível.	2025-03-14 04:32:56-03
443	74	1	2	\N	2025-07-09 20:11:43-03
443	88	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-09-01 20:18:03-03
444	102	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-19 00:44:06-03
444	48	1	4	\N	2025-03-08 04:30:45-03
444	95	1	5	A construção do universo é detalhada e muito bem feita.	2025-10-24 22:28:07-03
445	32	1	2	\N	2025-04-17 06:03:29-03
445	17	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-05-31 01:18:14-03
445	95	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-12-29 07:59:43-03
446	108	1	5	A construção do universo é detalhada e muito bem feita.	2024-06-09 07:29:11-03
446	93	1	4	Uma obra que surpreende pela profundidade emocional.	2025-06-07 17:43:30-03
446	103	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-09 03:49:31-03
447	91	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-02 07:29:52-03
447	67	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-16 06:07:51-03
447	27	1	5	\N	2023-12-14 16:55:30-03
448	59	1	2	\N	2025-03-10 12:40:48-03
448	74	1	3	Uma leitura rápida, porém cheia de significado.	2024-10-27 10:29:42-03
448	73	1	1	\N	2024-11-02 13:00:24-03
449	74	1	3	\N	2024-10-31 07:28:31-03
449	91	1	5	Uma leitura rápida, porém cheia de significado.	2025-02-12 20:59:30-03
449	125	1	1	\N	2023-11-17 11:49:44-03
450	105	1	1	\N	2024-08-18 05:56:18-03
450	40	1	3	\N	2024-10-11 15:48:12-03
450	42	1	1	\N	2024-09-22 16:57:59-03
451	92	1	5	A construção do universo é detalhada e muito bem feita.	2024-08-12 09:06:41-03
451	43	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-05-04 21:06:46-03
451	107	1	1	Uma obra que surpreende pela profundidade emocional.	2024-05-04 11:21:57-03
452	15	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-05-04 00:22:20-03
452	67	1	3	\N	2023-11-29 11:05:14-03
452	86	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-18 21:00:51-03
453	26	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-18 17:27:19-03
453	121	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-05-08 05:21:42-03
453	96	1	5	\N	2024-11-24 11:01:25-03
454	100	1	3	Uma leitura rápida, porém cheia de significado.	2025-09-30 15:46:14-03
454	38	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-09-04 05:01:42-03
454	14	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-02 03:57:04-03
455	122	1	2	\N	2025-06-08 07:02:40-03
455	96	1	5	\N	2024-09-13 23:33:51-03
455	99	1	4	A construção do universo é detalhada e muito bem feita.	2024-07-03 15:54:52-03
456	11	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-27 20:36:49-03
456	119	1	3	\N	2024-05-22 11:06:20-03
456	88	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-09-19 16:18:09-03
457	86	1	3	\N	2023-12-31 08:32:09-03
457	44	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-14 11:11:25-03
457	23	1	3	\N	2024-03-22 23:29:50-03
458	98	1	3	Uma obra que surpreende pela profundidade emocional.	2025-01-08 10:41:31-03
458	80	1	1	\N	2024-09-26 21:38:33-03
458	81	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-19 04:28:29-03
459	38	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-01-23 20:49:25-03
459	89	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-04 18:42:18-03
459	34	1	1	\N	2025-11-13 08:52:20-03
460	7	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-10-18 16:51:50-03
460	49	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-12-11 07:29:20-03
460	57	1	1	Uma obra que surpreende pela profundidade emocional.	2025-11-11 15:52:19-03
461	28	1	4	Uma obra que surpreende pela profundidade emocional.	2024-07-18 14:01:05-03
461	90	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-10 01:26:18-03
461	23	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-10-12 14:19:44-03
462	55	1	5	A construção do universo é detalhada e muito bem feita.	2024-08-09 11:32:07-03
462	68	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-10-28 16:02:44-03
462	85	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-27 11:00:27-03
463	95	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-07-15 02:55:53-03
463	67	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-10-14 01:51:44-03
463	31	1	2	\N	2024-07-20 11:34:56-03
464	15	1	1	\N	2025-02-28 05:48:10-03
464	72	1	5	\N	2024-01-27 08:51:14-03
464	32	1	2	\N	2025-11-04 21:53:59-03
465	31	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-01-21 17:48:38-03
465	74	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-12-01 02:38:55-03
465	64	1	3	\N	2024-12-26 02:50:55-03
466	38	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-11-09 18:40:40-03
466	109	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-02-03 22:57:39-03
466	95	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-14 15:49:35-03
467	43	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-07-29 12:16:44-03
467	115	1	2	\N	2024-01-05 04:38:11-03
467	73	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-21 21:34:37-03
468	71	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-18 13:17:19-03
468	24	1	3	\N	2024-06-14 06:00:45-03
468	53	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-09 22:17:07-03
469	48	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-11 15:48:10-03
469	100	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-06-14 00:55:20-03
469	99	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-03-24 13:31:51-03
470	33	1	2	\N	2025-05-09 18:31:43-03
470	103	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-19 13:56:42-03
470	20	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-21 00:40:41-03
471	72	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-24 06:42:55-03
471	81	1	3	Uma leitura rápida, porém cheia de significado.	2025-03-04 20:21:28-03
471	80	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-10 18:40:10-03
472	13	1	3	\N	2024-01-21 15:57:54-03
472	41	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-11-01 10:40:03-03
472	20	1	3	\N	2024-08-16 22:06:54-03
473	35	1	3	\N	2024-04-08 01:26:41-03
473	112	1	4	\N	2025-01-18 16:23:14-03
473	85	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-02-16 13:49:57-03
474	77	1	5	\N	2023-12-17 14:43:13-03
474	55	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-12 22:58:19-03
474	85	1	4	Uma leitura rápida, porém cheia de significado.	2025-10-21 06:13:41-03
475	104	1	1	\N	2024-12-10 06:33:22-03
475	126	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-31 12:52:00-03
475	13	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-01-27 16:49:25-03
476	79	1	5	\N	2024-01-23 00:51:39-03
476	30	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-30 06:23:54-03
476	52	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-15 09:55:02-03
477	22	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-24 08:31:05-03
477	111	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-07-11 15:12:26-03
477	107	1	2	\N	2024-04-09 11:21:26-03
478	33	1	4	\N	2023-11-18 01:14:56-03
478	3	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-22 23:28:14-03
478	123	1	5	\N	2025-06-29 14:58:25-03
479	40	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-01-06 12:41:50-03
479	73	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-02-03 17:22:34-03
479	107	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-24 15:42:30-03
480	117	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-08-31 16:55:08-03
480	1	1	5	\N	2025-07-07 23:49:15-03
480	29	1	2	\N	2025-05-16 03:42:47-03
481	116	1	4	Uma leitura rápida, porém cheia de significado.	2023-12-13 01:13:57-03
481	50	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-04-27 00:02:44-03
481	73	1	1	\N	2025-09-10 12:57:26-03
482	51	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-06 05:14:21-03
482	85	1	3	\N	2023-12-10 13:14:51-03
482	106	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-12 21:24:26-03
483	31	1	4	\N	2024-10-03 17:09:19-03
483	102	1	2	A construção do universo é detalhada e muito bem feita.	2023-12-21 02:30:48-03
483	108	1	4	Uma leitura rápida, porém cheia de significado.	2024-03-29 10:47:42-03
484	26	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-02-25 02:03:55-03
484	68	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-09-10 22:23:51-03
484	38	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-08-13 18:51:01-03
485	27	1	5	\N	2023-12-02 15:37:04-03
485	112	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-29 06:15:41-03
485	74	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-23 00:04:52-03
486	8	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-10-27 14:45:57-03
486	36	1	3	\N	2025-09-08 10:41:10-03
486	74	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2023-12-21 00:11:44-03
487	109	1	5	\N	2025-04-18 21:18:04-03
487	14	1	1	Uma leitura rápida, porém cheia de significado.	2025-06-29 19:13:15-03
487	123	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-18 08:43:55-03
488	114	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-01-22 06:42:36-03
488	86	1	1	Uma obra que surpreende pela profundidade emocional.	2023-12-02 20:13:07-03
488	76	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-05-30 17:30:05-03
489	104	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-11-17 13:58:49-03
489	20	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-25 18:57:53-03
489	6	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-07-26 04:50:06-03
490	52	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-30 13:14:10-03
490	70	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-20 08:55:20-03
490	121	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-30 06:29:25-03
491	113	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-11-16 20:21:55-03
491	116	1	4	Uma obra que surpreende pela profundidade emocional.	2025-08-10 19:23:51-03
491	11	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-19 20:59:58-03
492	12	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-07-08 17:07:47-03
492	14	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-07-20 01:38:49-03
492	120	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-11-02 22:58:20-03
493	2	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-05-03 07:12:37-03
493	123	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-07-20 22:41:17-03
493	67	1	3	\N	2024-07-23 10:50:56-03
494	82	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-21 15:35:48-03
494	111	1	5	Uma leitura rápida, porém cheia de significado.	2025-10-12 23:07:39-03
494	43	1	5	\N	2024-02-22 20:36:34-03
495	14	1	1	\N	2025-07-15 01:50:24-03
495	34	1	1	Uma obra que surpreende pela profundidade emocional.	2025-01-22 03:43:26-03
495	56	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2023-12-30 01:49:01-03
496	31	1	3	\N	2025-09-16 02:46:39-03
496	112	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-17 10:03:12-03
496	101	1	2	\N	2024-01-23 10:25:19-03
497	29	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-20 01:59:16-03
497	17	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-01-13 14:44:38-03
497	31	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-03-28 00:29:27-03
498	28	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-19 14:34:29-03
498	80	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-26 17:17:50-03
498	105	1	2	\N	2024-01-13 07:22:28-03
499	61	1	4	A construção do universo é detalhada e muito bem feita.	2025-05-25 07:00:37-03
499	34	1	2	A construção do universo é detalhada e muito bem feita.	2024-05-23 19:23:54-03
499	101	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-15 16:46:32-03
500	50	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-05 00:58:30-03
500	22	1	2	Uma obra que surpreende pela profundidade emocional.	2025-05-15 11:08:49-03
500	17	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-03 16:43:56-03
501	58	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-10-03 03:51:57-03
501	112	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-09-02 14:57:48-03
501	125	1	1	A construção do universo é detalhada e muito bem feita.	2024-06-02 04:02:03-03
502	97	1	5	\N	2025-02-17 22:50:23-03
502	4	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-11-07 05:48:20-03
502	74	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-20 04:36:31-03
503	4	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-25 10:05:19-03
503	116	1	1	\N	2024-10-18 17:31:15-03
503	72	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-04-24 00:08:10-03
504	103	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-12-19 15:11:10-03
504	87	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-03-25 19:31:22-03
504	98	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-04-10 20:58:00-03
505	75	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-05-09 12:56:34-03
505	53	1	1	\N	2024-01-05 08:01:15-03
505	106	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-03-25 11:54:36-03
506	118	1	3	Uma leitura rápida, porém cheia de significado.	2023-12-25 06:35:49-03
506	78	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-04-18 18:17:11-03
506	117	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-15 14:46:08-03
507	120	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-07-09 01:07:28-03
507	85	1	2	A construção do universo é detalhada e muito bem feita.	2025-05-17 12:53:27-03
507	59	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-11-15 09:35:13-03
508	104	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-22 01:07:47-03
508	25	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-07 15:13:38-03
508	71	1	5	\N	2024-01-13 21:38:15-03
509	7	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-24 21:11:30-03
509	113	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-03-07 11:12:22-03
509	40	1	3	\N	2024-05-28 07:52:03-03
510	112	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-21 14:36:28-03
510	69	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-21 17:09:29-03
510	30	1	3	A construção do universo é detalhada e muito bem feita.	2025-03-11 20:50:09-03
511	56	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-02-11 04:31:40-03
511	35	1	2	\N	2025-11-12 11:59:41-03
511	38	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-08 02:07:18-03
512	32	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-01 12:55:23-03
512	53	1	4	\N	2025-01-13 14:06:05-03
512	121	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-03-28 08:37:13-03
513	51	1	5	\N	2024-06-14 08:24:20-03
513	111	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-09-02 03:16:08-03
513	9	1	1	\N	2024-10-27 03:29:09-03
514	104	1	1	Uma obra que surpreende pela profundidade emocional.	2025-10-15 03:12:26-03
514	35	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-02-05 20:11:32-03
514	34	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-10 22:44:18-03
515	103	1	1	Uma obra que surpreende pela profundidade emocional.	2024-07-17 17:46:02-03
515	93	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-06 07:10:46-03
515	49	1	1	Uma obra que surpreende pela profundidade emocional.	2024-02-02 08:14:18-03
516	72	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-01-05 07:24:45-03
516	31	1	3	\N	2025-04-20 10:17:35-03
516	22	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-01-31 19:18:16-03
517	35	1	2	A construção do universo é detalhada e muito bem feita.	2024-09-01 16:37:26-03
517	19	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-06-07 17:05:38-03
517	80	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-06-16 20:29:43-03
518	104	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-08 04:57:02-03
518	79	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-02-15 01:30:08-03
518	125	1	1	\N	2024-09-27 14:42:37-03
519	41	1	4	\N	2023-12-13 20:30:05-03
519	4	1	2	Uma leitura rápida, porém cheia de significado.	2025-10-26 19:18:51-03
519	122	1	1	Uma leitura rápida, porém cheia de significado.	2023-11-21 02:47:41-03
520	123	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-10-02 19:55:14-03
520	63	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-23 16:48:46-03
520	22	1	5	\N	2024-01-08 07:15:13-03
521	42	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-03-06 22:08:46-03
521	36	1	3	\N	2024-03-23 07:18:43-03
521	30	1	5	A construção do universo é detalhada e muito bem feita.	2025-08-08 17:56:12-03
522	14	1	1	Uma obra que surpreende pela profundidade emocional.	2023-12-28 10:23:09-03
522	59	1	4	\N	2024-06-27 22:32:34-03
522	100	1	1	\N	2024-01-26 16:49:44-03
523	23	1	4	\N	2025-08-27 04:18:30-03
523	110	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-23 15:52:00-03
523	21	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-02-03 23:41:28-03
524	4	1	3	\N	2024-03-12 05:26:53-03
524	74	1	4	\N	2025-06-22 16:55:43-03
524	99	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-03-30 18:34:06-03
525	43	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-22 09:14:04-03
525	48	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-23 15:52:08-03
525	126	1	2	Uma obra que surpreende pela profundidade emocional.	2025-08-21 14:16:18-03
526	28	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-02-01 16:58:30-03
526	69	1	5	\N	2024-06-19 11:32:46-03
526	33	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-02-13 23:41:53-03
527	121	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-07-05 09:28:09-03
527	85	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-06-15 15:54:21-03
527	54	1	1	\N	2025-09-27 03:09:55-03
528	108	1	4	\N	2024-11-26 03:15:18-03
528	81	1	4	\N	2024-01-02 13:17:32-03
528	19	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-17 03:49:56-03
529	37	1	5	A construção do universo é detalhada e muito bem feita.	2025-07-12 01:24:26-03
529	19	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-08-12 01:16:50-03
529	11	1	1	\N	2024-04-29 13:43:16-03
530	57	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-05-12 04:48:56-03
530	95	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-12-02 04:28:48-03
530	93	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-01-20 04:20:54-03
531	8	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-01-07 19:04:09-03
531	66	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-09-06 05:04:52-03
531	47	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-01-29 13:56:56-03
532	55	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-10-15 16:37:51-03
532	56	1	1	Uma leitura rápida, porém cheia de significado.	2025-02-07 08:58:02-03
532	71	1	3	\N	2025-04-29 08:18:59-03
533	65	1	2	\N	2025-08-09 06:05:21-03
533	46	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-28 00:09:41-03
533	73	1	4	\N	2024-04-16 12:19:22-03
534	49	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-21 00:06:46-03
534	36	1	5	Uma leitura rápida, porém cheia de significado.	2024-05-19 01:32:47-03
534	43	1	4	\N	2025-07-29 21:13:30-03
535	27	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-01 09:50:18-03
535	36	1	1	\N	2024-10-10 02:08:05-03
535	21	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-08-07 01:17:07-03
536	97	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-10-24 13:03:13-03
536	4	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-06-04 05:23:12-03
536	19	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-03-20 07:29:02-03
537	87	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-02-14 16:34:02-03
537	103	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-07-20 18:10:41-03
537	89	1	1	\N	2024-11-24 02:20:40-03
538	46	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-13 05:00:16-03
538	85	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-14 17:09:12-03
538	60	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-07-04 21:13:20-03
539	64	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-29 22:38:57-03
539	27	1	5	Uma leitura rápida, porém cheia de significado.	2025-08-31 22:29:03-03
539	63	1	2	\N	2024-10-10 04:25:32-03
540	68	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-19 07:53:42-03
540	59	1	3	\N	2024-07-29 04:39:33-03
540	10	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-11-02 20:28:44-03
541	44	1	2	\N	2024-01-22 19:10:49-03
541	59	1	4	O livro traz boas reflexões e personagens bem construídos.	2023-11-26 05:01:47-03
541	80	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-28 07:03:29-03
542	56	1	5	A construção do universo é detalhada e muito bem feita.	2024-06-25 12:37:46-03
542	119	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-01 05:15:25-03
542	100	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-02-28 10:43:34-03
543	120	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-11-08 08:48:57-03
543	62	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-02-09 00:54:04-03
543	80	1	2	\N	2024-02-21 11:24:23-03
544	62	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-12-22 01:43:23-03
544	114	1	2	A construção do universo é detalhada e muito bem feita.	2025-06-17 17:47:12-03
544	47	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-03-30 09:47:42-03
545	23	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-14 21:37:20-03
545	94	1	5	\N	2025-04-25 16:25:48-03
545	1	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-03-22 01:11:58-03
546	1	1	4	O livro traz boas reflexões e personagens bem construídos.	2023-12-20 07:46:36-03
546	106	1	1	\N	2024-02-21 13:07:10-03
546	83	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-12-24 06:58:44-03
547	99	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-06-20 03:34:07-03
547	124	1	4	Uma leitura rápida, porém cheia de significado.	2024-06-25 20:32:46-03
547	84	1	3	\N	2025-04-01 11:13:07-03
548	23	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-05-08 03:46:40-03
548	61	1	2	Uma obra que surpreende pela profundidade emocional.	2024-12-28 01:54:32-03
548	78	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-08 15:55:13-03
549	117	1	1	A construção do universo é detalhada e muito bem feita.	2025-06-09 09:07:13-03
549	70	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-09-15 13:36:34-03
549	85	1	1	Uma leitura rápida, porém cheia de significado.	2025-06-01 08:28:53-03
550	77	1	1	A construção do universo é detalhada e muito bem feita.	2025-04-10 08:36:22-03
550	7	1	3	\N	2024-07-29 03:14:28-03
550	115	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-22 08:06:06-03
551	72	1	3	\N	2024-09-02 17:24:31-03
551	20	1	5	\N	2024-06-21 09:12:12-03
551	11	1	2	\N	2024-01-12 02:25:04-03
552	87	1	5	\N	2025-02-10 13:02:21-03
552	79	1	5	A construção do universo é detalhada e muito bem feita.	2025-08-11 20:48:27-03
552	113	1	5	A construção do universo é detalhada e muito bem feita.	2024-03-11 08:56:45-03
553	46	1	3	A construção do universo é detalhada e muito bem feita.	2025-04-07 10:50:23-03
553	9	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-03-14 21:45:33-03
553	13	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-09 18:08:41-03
554	16	1	2	\N	2025-09-10 21:21:58-03
554	105	1	4	\N	2024-12-02 10:43:10-03
554	124	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-10-13 16:23:35-03
555	96	1	3	A construção do universo é detalhada e muito bem feita.	2025-11-09 17:49:37-03
555	74	1	1	\N	2024-06-17 02:23:01-03
555	126	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-14 00:10:13-03
556	15	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-11 22:49:31-03
556	81	1	1	\N	2024-07-24 23:06:16-03
556	95	1	1	Uma obra que surpreende pela profundidade emocional.	2025-09-22 17:48:01-03
557	35	1	5	Uma obra que surpreende pela profundidade emocional.	2025-10-03 21:48:46-03
557	116	1	1	\N	2024-11-06 21:52:51-03
557	99	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-26 14:37:12-03
558	118	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-03-29 07:55:18-03
558	101	1	3	\N	2024-10-20 08:45:07-03
558	35	1	3	Uma leitura rápida, porém cheia de significado.	2024-01-26 08:47:13-03
559	18	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-05-06 15:40:08-03
559	63	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-12-06 13:21:43-03
559	43	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-26 09:20:50-03
560	30	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-10 01:27:10-03
560	108	1	5	\N	2024-10-02 06:54:01-03
560	71	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-02 04:50:55-03
561	28	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-04 06:18:55-03
561	60	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-09 08:09:33-03
561	76	1	2	Uma leitura rápida, porém cheia de significado.	2024-05-06 05:26:53-03
562	41	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-08 02:19:33-03
562	44	1	4	\N	2024-12-05 12:34:04-03
562	92	1	1	Uma obra que surpreende pela profundidade emocional.	2025-08-21 08:55:27-03
563	48	1	3	\N	2024-11-14 17:09:41-03
563	31	1	4	\N	2025-08-21 03:45:22-03
563	17	1	3	\N	2024-01-25 02:18:01-03
564	89	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-11-04 05:50:55-03
564	86	1	2	Uma obra que surpreende pela profundidade emocional.	2025-09-16 03:54:22-03
564	25	1	3	\N	2025-03-25 14:10:37-03
565	123	1	1	\N	2024-06-04 06:32:10-03
565	49	1	1	\N	2025-04-16 20:10:44-03
565	84	1	5	A construção do universo é detalhada e muito bem feita.	2025-07-16 15:07:24-03
566	20	1	4	Uma leitura rápida, porém cheia de significado.	2025-06-22 01:15:33-03
566	22	1	3	\N	2024-10-01 17:54:54-03
566	46	1	4	\N	2025-08-26 03:47:16-03
567	58	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-13 20:06:42-03
567	87	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-09-04 03:13:34-03
567	18	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-07-28 09:06:47-03
568	86	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-09-28 14:05:47-03
568	27	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-04 02:49:21-03
568	16	1	5	\N	2025-09-29 07:01:18-03
569	79	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-02-24 04:08:58-03
569	30	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-03-10 06:11:57-03
569	3	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-03-15 01:01:48-03
570	1	1	3	\N	2025-02-11 05:47:00-03
570	39	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-10-02 03:13:29-03
570	89	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-06-21 09:49:47-03
571	94	1	5	\N	2025-08-17 04:50:26-03
571	86	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-03-05 23:54:34-03
571	56	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-05-21 13:21:29-03
572	2	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-04-10 14:13:29-03
572	48	1	1	\N	2024-08-09 16:41:42-03
572	3	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-03 11:39:37-03
573	118	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-08-19 22:20:54-03
573	49	1	5	Uma leitura rápida, porém cheia de significado.	2024-10-25 12:01:59-03
573	13	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-03-29 13:48:22-03
574	5	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-18 01:45:53-03
574	74	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-08 21:54:59-03
574	28	1	5	\N	2024-03-19 22:09:06-03
575	120	1	4	A construção do universo é detalhada e muito bem feita.	2024-04-25 07:49:47-03
575	66	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-09-07 18:16:16-03
575	61	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-06-20 01:19:17-03
576	98	1	1	Uma leitura rápida, porém cheia de significado.	2024-04-27 00:01:04-03
576	22	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-26 20:03:37-03
576	74	1	1	\N	2024-01-12 15:31:33-03
577	121	1	4	A trama é inteligente e conduzida com bastante habilidade.	2023-11-21 05:26:58-03
577	95	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-06-19 23:08:26-03
577	42	1	2	\N	2024-04-25 23:49:32-03
578	100	1	2	O livro traz boas reflexões e personagens bem construídos.	2023-12-09 12:58:19-03
578	43	1	5	A construção do universo é detalhada e muito bem feita.	2025-01-25 00:10:39-03
578	113	1	4	\N	2024-06-17 03:45:15-03
579	80	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-03-10 02:28:36-03
579	118	1	5	\N	2024-06-05 22:50:10-03
579	14	1	4	A construção do universo é detalhada e muito bem feita.	2024-10-08 13:03:41-03
580	122	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-04-08 11:15:35-03
580	110	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-26 02:18:17-03
580	53	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-02-11 20:38:03-03
581	86	1	2	\N	2025-10-01 14:34:52-03
581	34	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-01-29 19:49:43-03
581	1	1	1	Uma obra que surpreende pela profundidade emocional.	2023-12-07 11:30:05-03
582	27	1	2	\N	2024-01-13 06:20:36-03
582	76	1	4	A construção do universo é detalhada e muito bem feita.	2025-10-24 23:44:08-03
582	55	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-05-09 15:52:45-03
583	28	1	1	Uma obra que surpreende pela profundidade emocional.	2024-06-03 20:15:24-03
583	39	1	5	A construção do universo é detalhada e muito bem feita.	2024-02-20 12:26:25-03
583	120	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-07-08 14:00:08-03
584	31	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-03-11 00:36:45-03
584	84	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-11 05:03:34-03
584	67	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-05-03 12:15:09-03
585	93	1	5	\N	2024-01-17 10:40:44-03
585	35	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-15 03:58:38-03
585	26	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-05-05 05:41:02-03
586	100	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-15 04:58:24-03
586	42	1	4	Uma leitura rápida, porém cheia de significado.	2025-01-07 18:50:44-03
586	52	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-24 18:59:39-03
587	84	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-17 07:55:02-03
587	123	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-03-19 00:56:54-03
587	105	1	3	Uma leitura rápida, porém cheia de significado.	2024-02-06 05:44:52-03
588	81	1	1	\N	2025-10-08 09:05:37-03
588	57	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-14 23:06:23-03
588	116	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-18 20:41:06-03
589	114	1	4	\N	2025-01-24 22:16:25-03
589	84	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-09 05:59:32-03
589	83	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-02-28 07:24:29-03
590	70	1	1	Uma obra que surpreende pela profundidade emocional.	2024-05-24 08:29:48-03
590	45	1	5	A construção do universo é detalhada e muito bem feita.	2025-01-24 07:24:52-03
590	82	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-04 02:59:55-03
591	92	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-08-07 21:49:21-03
591	8	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-12-19 02:16:43-03
591	125	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-02-22 21:20:06-03
592	71	1	3	Uma obra que surpreende pela profundidade emocional.	2024-09-12 15:51:59-03
592	7	1	2	Uma leitura rápida, porém cheia de significado.	2025-03-06 23:58:47-03
592	34	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-03-07 17:47:10-03
593	79	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-10-27 22:25:31-03
593	53	1	2	Uma obra que surpreende pela profundidade emocional.	2024-11-09 08:51:04-03
593	33	1	2	\N	2024-12-06 20:01:34-03
594	95	1	2	\N	2024-08-03 07:33:38-03
594	32	1	3	\N	2025-02-12 18:13:42-03
594	126	1	2	\N	2024-09-19 07:15:06-03
595	92	1	1	\N	2025-10-21 06:55:14-03
595	42	1	2	\N	2024-10-27 06:16:04-03
595	20	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-07-19 10:10:52-03
596	111	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-17 22:41:13-03
596	21	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-26 08:56:33-03
596	63	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-11-30 12:50:07-03
597	38	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-23 16:40:58-03
597	40	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-04-22 16:11:55-03
597	64	1	1	\N	2025-06-27 19:18:29-03
598	42	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-01 21:15:50-03
598	51	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-21 22:06:53-03
598	48	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-06-07 07:08:33-03
599	69	1	2	\N	2024-10-20 19:39:03-03
599	20	1	1	Uma obra que surpreende pela profundidade emocional.	2025-09-07 03:01:30-03
599	88	1	1	Uma obra que surpreende pela profundidade emocional.	2025-11-12 10:06:03-03
600	29	1	3	\N	2025-03-11 21:32:55-03
600	84	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-12-08 11:49:00-03
600	65	1	5	\N	2025-08-28 02:44:27-03
601	94	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-06-21 03:28:12-03
601	61	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-10-01 12:00:10-03
601	4	1	5	A construção do universo é detalhada e muito bem feita.	2024-06-13 17:33:05-03
602	14	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-01 12:00:53-03
602	126	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-10 16:12:49-03
602	11	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-05-09 20:23:15-03
603	70	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-10-23 18:58:02-03
603	61	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-11-16 16:13:28-03
603	101	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-04 02:19:33-03
604	7	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-05-05 12:19:09-03
604	9	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-05-19 15:34:14-03
604	123	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-15 20:15:46-03
605	31	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-11-19 04:06:46-03
605	119	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-27 00:56:07-03
605	65	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-05-14 23:46:29-03
606	108	1	4	\N	2025-02-10 00:23:11-03
606	53	1	5	Uma obra que surpreende pela profundidade emocional.	2025-03-10 21:15:50-03
606	102	1	5	Uma leitura rápida, porém cheia de significado.	2023-12-04 11:14:01-03
607	60	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-09 04:44:07-03
607	124	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-19 12:46:03-03
607	39	1	5	\N	2024-12-10 10:23:12-03
608	111	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-06-10 05:34:40-03
608	116	1	1	\N	2024-01-22 07:47:57-03
608	117	1	5	\N	2024-07-20 01:10:31-03
609	102	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-08-12 05:00:08-03
609	40	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-03-12 07:52:10-03
609	85	1	5	\N	2024-02-05 05:31:25-03
610	48	1	5	\N	2024-02-05 08:44:52-03
610	119	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-04-05 00:04:53-03
610	44	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-02-20 15:49:43-03
611	62	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-11 22:20:39-03
611	25	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-04-22 21:59:05-03
611	21	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-08-31 10:08:59-03
612	28	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-08-14 13:38:47-03
612	88	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-04-26 09:38:22-03
612	95	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-07-24 19:19:37-03
613	54	1	5	\N	2024-04-04 09:27:07-03
613	111	1	4	Uma leitura rápida, porém cheia de significado.	2024-12-08 22:55:47-03
613	43	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-15 19:34:20-03
614	125	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-23 13:17:54-03
614	72	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-26 16:41:11-03
614	121	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-05-16 17:26:58-03
615	40	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-01-05 10:11:19-03
615	85	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-27 12:23:59-03
615	38	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-10-20 18:41:03-03
616	26	1	5	\N	2024-05-11 12:34:46-03
616	31	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-22 07:36:16-03
616	17	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-01-04 16:58:10-03
617	37	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-08 04:24:04-03
617	13	1	2	\N	2024-04-21 16:09:56-03
617	106	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-18 03:42:58-03
618	3	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-11-27 01:24:12-03
618	74	1	2	A construção do universo é detalhada e muito bem feita.	2023-12-29 19:21:11-03
618	58	1	1	\N	2024-07-09 19:53:45-03
619	63	1	5	\N	2025-10-14 23:57:57-03
619	55	1	1	\N	2023-11-19 09:56:13-03
619	43	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-14 07:07:29-03
620	26	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-12-12 02:14:07-03
620	89	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-11-14 05:11:15-03
620	112	1	3	\N	2025-06-23 20:24:29-03
621	65	1	1	\N	2024-11-18 01:10:39-03
621	36	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-07-12 06:43:41-03
621	97	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-12 16:11:52-03
622	92	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-11-02 03:58:48-03
622	14	1	5	\N	2023-12-29 23:11:10-03
622	7	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-05-11 20:49:41-03
623	26	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-10-12 04:07:07-03
623	103	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-12-27 14:41:22-03
623	24	1	5	Uma leitura rápida, porém cheia de significado.	2024-06-07 16:38:49-03
624	104	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2023-12-27 04:27:25-03
624	44	1	3	\N	2024-12-08 17:58:22-03
624	107	1	4	\N	2024-11-05 07:52:57-03
625	125	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-03-30 02:00:24-03
625	27	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-02-22 09:55:08-03
625	18	1	1	\N	2024-09-08 13:43:24-03
626	70	1	3	\N	2024-02-21 15:46:37-03
626	126	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-06-15 08:34:43-03
626	64	1	5	A construção do universo é detalhada e muito bem feita.	2025-03-13 10:03:39-03
627	17	1	4	\N	2025-04-26 06:53:58-03
627	58	1	5	Uma leitura rápida, porém cheia de significado.	2025-01-27 13:56:50-03
627	26	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-04-26 06:40:08-03
628	53	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-13 06:30:56-03
628	83	1	2	A construção do universo é detalhada e muito bem feita.	2025-03-27 03:48:31-03
628	103	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-08 05:39:57-03
629	118	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-21 18:01:41-03
629	27	1	1	\N	2025-05-09 03:06:26-03
629	119	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-08 10:31:04-03
630	6	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-11-11 06:14:48-03
630	70	1	1	Uma leitura rápida, porém cheia de significado.	2025-06-04 12:16:18-03
630	42	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-27 13:59:34-03
631	99	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-01-01 10:21:08-03
631	52	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-04-30 09:14:26-03
631	121	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-29 12:37:21-03
632	58	1	3	\N	2023-12-03 02:15:09-03
632	38	1	1	\N	2025-06-23 16:54:04-03
632	76	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-12-30 22:33:18-03
633	2	1	4	\N	2025-04-17 18:43:54-03
633	77	1	1	Uma leitura rápida, porém cheia de significado.	2025-05-01 19:59:04-03
633	4	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-07 14:17:52-03
634	119	1	1	\N	2025-05-11 20:44:43-03
634	9	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-04 00:48:07-03
634	106	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-12-05 17:39:14-03
635	60	1	5	\N	2025-09-11 20:05:12-03
635	4	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-02 21:53:48-03
635	69	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-07-22 16:23:25-03
636	107	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-08-03 03:55:33-03
636	42	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-04-21 04:52:24-03
636	22	1	5	A construção do universo é detalhada e muito bem feita.	2025-06-24 21:28:48-03
637	20	1	4	\N	2025-03-04 02:30:22-03
637	77	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-05-15 11:11:39-03
637	2	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-02-24 16:36:05-03
638	119	1	2	\N	2025-01-30 08:01:21-03
638	77	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-03-19 22:40:43-03
638	20	1	5	Uma obra que surpreende pela profundidade emocional.	2025-05-21 21:03:41-03
639	66	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-23 08:20:02-03
639	61	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-09-10 23:22:06-03
639	29	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-11-30 13:27:29-03
640	43	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-10-02 20:56:02-03
640	68	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-29 07:53:10-03
640	105	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-01-22 13:13:58-03
641	23	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-25 11:55:57-03
641	88	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-15 15:15:29-03
641	106	1	5	\N	2024-11-28 21:11:08-03
642	53	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-05 13:09:08-03
642	27	1	1	\N	2025-08-19 02:26:03-03
642	100	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-11-08 15:51:01-03
643	97	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-10-05 01:13:02-03
643	14	1	2	\N	2025-03-04 19:43:38-03
643	107	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-05-01 04:16:26-03
644	65	1	4	Uma obra que surpreende pela profundidade emocional.	2024-04-04 14:26:58-03
644	13	1	4	\N	2024-12-22 07:35:17-03
644	12	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-04 23:58:49-03
645	71	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-11 01:32:16-03
645	123	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-04-26 00:37:01-03
645	111	1	1	A construção do universo é detalhada e muito bem feita.	2024-05-10 21:46:03-03
646	123	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-31 15:37:29-03
646	32	1	3	Uma leitura rápida, porém cheia de significado.	2024-06-22 17:22:07-03
646	124	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-05-29 19:24:45-03
647	50	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-07-01 05:25:59-03
647	59	1	3	A construção do universo é detalhada e muito bem feita.	2024-08-10 01:18:57-03
647	17	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-10 08:18:53-03
648	123	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-11-20 08:05:02-03
648	43	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-08-04 04:59:05-03
648	34	1	5	Uma leitura rápida, porém cheia de significado.	2025-05-20 11:47:26-03
649	11	1	5	A construção do universo é detalhada e muito bem feita.	2024-10-03 03:06:34-03
649	59	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-25 04:27:35-03
649	15	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-22 11:07:24-03
650	69	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-09-16 22:39:19-03
650	113	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-07-21 01:55:03-03
650	111	1	5	\N	2024-01-25 01:08:01-03
651	8	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-11-01 03:07:06-03
651	87	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-01-12 15:34:07-03
651	49	1	5	\N	2025-03-07 15:12:01-03
652	17	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-12-24 03:19:14-03
652	30	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-01 18:41:27-03
652	114	1	3	\N	2024-12-13 20:08:52-03
653	23	1	4	\N	2024-09-17 07:13:22-03
653	21	1	4	Uma leitura rápida, porém cheia de significado.	2025-11-10 08:15:36-03
653	75	1	5	\N	2024-03-24 04:21:10-03
654	87	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-04-17 19:36:44-03
654	92	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-08-03 08:16:25-03
654	120	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-16 10:46:22-03
655	38	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-18 17:44:00-03
655	25	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-06 06:39:00-03
655	44	1	4	A trama é inteligente e conduzida com bastante habilidade.	2025-10-14 18:06:46-03
656	45	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-06-02 03:53:32-03
656	84	1	4	A construção do universo é detalhada e muito bem feita.	2025-06-09 11:27:10-03
656	40	1	2	\N	2024-02-08 08:13:22-03
657	7	1	5	\N	2024-11-08 02:35:19-03
657	33	1	4	A obra aborda temas importantes de maneira leve e acessível.	2023-12-07 21:03:05-03
657	73	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-02-17 17:57:32-03
658	4	1	3	\N	2025-02-23 15:31:38-03
658	2	1	1	\N	2025-05-03 17:12:15-03
658	77	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-23 20:20:36-03
659	91	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-10-16 03:07:33-03
659	39	1	3	\N	2024-06-15 18:30:06-03
659	109	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-02-03 21:33:23-03
660	57	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-06-29 18:27:54-03
660	106	1	5	\N	2025-08-08 18:26:01-03
660	113	1	2	\N	2024-10-30 20:56:44-03
661	13	1	3	A construção do universo é detalhada e muito bem feita.	2025-06-02 10:18:51-03
661	95	1	2	\N	2025-10-27 17:43:54-03
661	100	1	5	A construção do universo é detalhada e muito bem feita.	2025-08-14 21:29:36-03
662	44	1	4	\N	2025-06-25 08:38:10-03
662	99	1	3	\N	2024-03-28 11:22:32-03
662	87	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-02-18 09:40:40-03
663	19	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-10-17 21:27:26-03
663	18	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-02-01 00:49:29-03
663	86	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-02 01:54:25-03
664	76	1	5	A construção do universo é detalhada e muito bem feita.	2023-11-19 04:33:44-03
664	6	1	4	\N	2025-08-11 18:30:39-03
664	126	1	2	Uma obra que surpreende pela profundidade emocional.	2024-04-12 23:33:03-03
665	27	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-08-16 04:58:24-03
665	106	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-16 07:17:10-03
665	58	1	4	\N	2024-04-25 08:55:54-03
666	80	1	3	A construção do universo é detalhada e muito bem feita.	2025-09-24 08:08:35-03
666	110	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-06-24 19:39:52-03
666	94	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-09 06:32:46-03
667	59	1	4	Uma leitura rápida, porém cheia de significado.	2025-02-14 12:32:33-03
667	24	1	2	A construção do universo é detalhada e muito bem feita.	2024-07-24 11:35:53-03
667	68	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-08-15 12:58:15-03
668	40	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-13 15:55:19-03
668	123	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-05-11 12:43:45-03
668	101	1	1	A obra aborda temas importantes de maneira leve e acessível.	2025-07-06 08:00:15-03
669	118	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-02-22 03:05:54-03
669	80	1	1	\N	2025-08-27 10:01:28-03
669	82	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-10-17 21:36:20-03
670	69	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-03-27 04:41:04-03
670	73	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-11-21 13:19:35-03
670	47	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-01-24 15:43:44-03
671	62	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-01-24 01:41:20-03
671	8	1	4	\N	2024-09-29 01:19:06-03
671	98	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-20 22:43:27-03
672	126	1	5	\N	2025-04-25 10:29:50-03
672	6	1	1	\N	2025-06-02 03:25:07-03
672	41	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-01-18 21:17:09-03
673	114	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-02 22:42:52-03
673	104	1	5	A trama é inteligente e conduzida com bastante habilidade.	2023-12-29 05:14:44-03
673	77	1	2	Uma leitura rápida, porém cheia de significado.	2024-10-01 22:17:22-03
674	105	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-28 22:56:58-03
674	91	1	4	\N	2025-09-20 20:39:35-03
674	20	1	3	A construção do universo é detalhada e muito bem feita.	2025-02-10 18:35:00-03
675	43	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-25 23:17:23-03
675	114	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-07 14:28:53-03
675	122	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2023-12-18 12:16:55-03
676	62	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-02-28 05:04:40-03
676	40	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-30 09:46:14-03
676	75	1	5	\N	2024-09-21 14:01:34-03
677	11	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-01-24 08:31:01-03
677	78	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-01-15 15:52:56-03
677	109	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-01 06:04:50-03
678	36	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-01-13 23:43:17-03
678	79	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-10-14 21:57:39-03
678	52	1	5	\N	2025-10-21 09:09:14-03
679	98	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-03 23:01:00-03
679	23	1	1	\N	2025-01-16 21:20:28-03
679	122	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2025-08-11 23:47:58-03
680	123	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-09 12:42:19-03
680	9	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2023-11-16 19:22:10-03
680	84	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-07-25 21:01:45-03
681	12	1	4	Uma leitura rápida, porém cheia de significado.	2024-08-24 15:58:34-03
681	41	1	1	Uma obra que surpreende pela profundidade emocional.	2025-10-20 14:41:59-03
681	83	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-07-03 15:35:01-03
682	103	1	1	Uma obra que surpreende pela profundidade emocional.	2025-01-26 04:30:30-03
682	114	1	3	Uma obra que surpreende pela profundidade emocional.	2025-03-12 16:21:55-03
682	22	1	4	\N	2024-11-19 19:17:41-03
683	84	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-03-02 14:02:38-03
683	126	1	2	Uma leitura rápida, porém cheia de significado.	2024-11-29 12:44:01-03
683	95	1	4	\N	2025-08-25 18:28:26-03
684	89	1	2	\N	2024-03-14 10:12:52-03
684	68	1	1	Uma leitura rápida, porém cheia de significado.	2025-09-10 18:05:28-03
684	117	1	2	\N	2025-02-10 07:23:05-03
685	74	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-02-10 23:13:09-03
685	7	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-06-18 17:40:25-03
685	11	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-11 20:58:04-03
686	71	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-11-04 15:13:31-03
686	119	1	4	\N	2024-09-08 05:40:45-03
686	89	1	1	\N	2023-11-24 21:25:58-03
687	64	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-11-04 17:11:30-03
687	93	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-02-16 18:15:05-03
687	17	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-12-12 17:39:39-03
688	25	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-19 17:33:09-03
688	65	1	4	Uma obra que surpreende pela profundidade emocional.	2024-02-12 04:30:22-03
688	38	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-11 22:47:36-03
689	107	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-07-01 20:19:10-03
689	1	1	3	\N	2024-05-24 00:29:11-03
689	91	1	1	A construção do universo é detalhada e muito bem feita.	2025-10-12 05:17:42-03
690	70	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-11-03 14:00:11-03
690	44	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-02-23 07:25:31-03
690	28	1	2	Uma leitura rápida, porém cheia de significado.	2024-08-03 01:52:05-03
691	15	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-17 22:44:55-03
691	93	1	3	Uma leitura rápida, porém cheia de significado.	2024-01-16 07:48:06-03
691	7	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-04-30 16:00:52-03
692	66	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-01-30 14:23:05-03
692	72	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-08-03 04:09:46-03
692	2	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-11-12 23:35:05-03
693	117	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-01-28 01:27:40-03
693	109	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-05-27 20:05:34-03
693	66	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-24 01:39:25-03
694	78	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2023-11-19 07:03:14-03
694	5	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-02-21 17:47:45-03
694	39	1	3	\N	2025-03-23 15:23:15-03
695	78	1	4	Uma obra que surpreende pela profundidade emocional.	2023-11-20 16:06:47-03
695	72	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-06-26 21:23:08-03
695	56	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-07 05:29:16-03
696	16	1	5	Uma leitura rápida, porém cheia de significado.	2024-06-05 00:47:39-03
696	95	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-06-04 22:11:54-03
696	47	1	1	\N	2025-11-07 14:47:39-03
697	46	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-05-09 11:49:08-03
697	26	1	1	\N	2025-05-20 02:00:46-03
697	92	1	4	A construção do universo é detalhada e muito bem feita.	2025-04-15 10:44:03-03
698	35	1	5	\N	2025-03-24 01:31:58-03
698	50	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-04-23 10:58:30-03
698	124	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-11-17 06:32:53-03
699	6	1	5	A construção do universo é detalhada e muito bem feita.	2023-11-30 02:53:27-03
699	41	1	4	\N	2025-08-14 00:40:05-03
699	112	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-07-11 21:16:21-03
700	99	1	4	\N	2024-04-01 06:36:19-03
700	87	1	4	\N	2025-05-03 22:58:27-03
700	65	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-09-25 18:07:28-03
701	107	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-09 12:14:31-03
701	121	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-30 16:21:27-03
701	77	1	5	\N	2024-07-31 19:09:01-03
702	96	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-05 14:22:15-03
702	70	1	1	\N	2025-08-04 04:09:13-03
702	52	1	4	A construção do universo é detalhada e muito bem feita.	2025-05-22 08:36:37-03
703	80	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-02 04:08:48-03
703	1	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-01 11:08:43-03
703	64	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-10-09 04:31:44-03
704	95	1	4	\N	2025-07-08 21:34:38-03
704	97	1	5	\N	2025-09-01 06:41:07-03
704	47	1	4	\N	2024-02-24 00:09:12-03
705	41	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-07-12 00:50:42-03
705	121	1	5	\N	2025-04-19 16:07:05-03
705	115	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-11-28 09:17:22-03
706	81	1	3	\N	2025-01-28 05:47:55-03
706	29	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-09-02 05:49:00-03
706	44	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-11-06 04:14:57-03
707	103	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-01-27 19:44:21-03
707	114	1	4	Uma obra que surpreende pela profundidade emocional.	2024-02-28 21:31:32-03
707	107	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-12-27 21:09:18-03
708	58	1	2	\N	2024-07-09 02:10:57-03
708	81	1	2	\N	2025-09-06 20:39:53-03
708	114	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-06-26 14:05:02-03
709	43	1	1	\N	2025-07-15 22:18:08-03
709	121	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-31 05:24:39-03
709	85	1	2	\N	2024-10-12 09:23:14-03
710	28	1	1	Uma leitura rápida, porém cheia de significado.	2024-07-13 09:57:10-03
710	30	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-07-31 06:47:27-03
710	43	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-05-30 12:58:43-03
711	100	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-01-06 10:11:08-03
711	16	1	5	\N	2025-01-07 07:54:59-03
711	17	1	3	\N	2024-07-01 22:47:28-03
712	126	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-03-17 11:03:40-03
712	22	1	3	Uma leitura rápida, porém cheia de significado.	2024-09-10 23:43:13-03
712	91	1	3	Uma obra que surpreende pela profundidade emocional.	2025-01-20 13:19:58-03
713	13	1	4	Uma leitura rápida, porém cheia de significado.	2024-02-12 04:08:56-03
713	38	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-16 01:45:44-03
713	100	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-14 07:47:31-03
714	75	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-02-24 23:28:52-03
714	47	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-23 23:05:15-03
714	97	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-01-14 04:37:20-03
715	115	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-25 00:07:02-03
715	106	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-12-12 18:23:00-03
715	43	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-02-27 04:39:46-03
716	115	1	4	\N	2025-08-22 01:14:12-03
716	56	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-04 09:30:01-03
716	86	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-01 06:48:12-03
717	76	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-11-16 18:26:43-03
717	62	1	4	\N	2024-04-20 23:05:47-03
717	58	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-06-15 13:40:41-03
718	41	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-17 19:54:26-03
718	73	1	1	\N	2025-10-21 22:42:10-03
718	119	1	4	Uma obra que surpreende pela profundidade emocional.	2025-10-23 00:15:44-03
719	60	1	1	\N	2024-09-10 16:52:54-03
719	108	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-10-16 09:26:20-03
719	83	1	4	\N	2024-05-12 19:59:37-03
720	88	1	3	Uma obra que surpreende pela profundidade emocional.	2024-02-13 22:41:41-03
720	43	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-05-27 19:12:54-03
720	22	1	2	Uma obra que surpreende pela profundidade emocional.	2024-06-12 20:48:17-03
721	20	1	1	\N	2024-11-10 08:10:30-03
721	43	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-19 09:24:33-03
721	100	1	2	A construção do universo é detalhada e muito bem feita.	2024-01-26 04:44:43-03
722	51	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-18 09:50:20-03
722	61	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-02-18 22:03:11-03
722	92	1	3	Uma obra que surpreende pela profundidade emocional.	2024-04-12 20:36:43-03
723	37	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-05-21 17:00:08-03
723	38	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-08-09 19:14:51-03
723	11	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-20 04:18:02-03
724	19	1	1	\N	2024-10-31 05:41:22-03
724	39	1	1	\N	2024-07-21 15:29:16-03
724	6	1	4	\N	2025-04-24 20:15:49-03
725	95	1	3	\N	2024-08-15 18:54:33-03
725	18	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-02-22 14:14:18-03
725	55	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-12-11 16:48:05-03
726	56	1	2	Uma obra que surpreende pela profundidade emocional.	2025-03-08 15:12:46-03
726	31	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-04-11 13:20:47-03
726	91	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-05-08 12:49:52-03
727	36	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-12-11 06:12:52-03
727	14	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-26 19:13:58-03
727	41	1	1	Uma leitura rápida, porém cheia de significado.	2024-12-07 10:50:33-03
728	63	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-14 22:06:54-03
728	55	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2023-12-07 19:48:31-03
728	115	1	2	\N	2025-10-29 23:51:07-03
729	118	1	2	\N	2025-01-07 22:31:41-03
729	7	1	1	\N	2023-12-05 01:53:38-03
729	1	1	4	A construção do universo é detalhada e muito bem feita.	2024-07-04 11:16:56-03
730	65	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-19 10:10:21-03
730	46	1	5	\N	2025-06-12 15:06:46-03
730	92	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-09-13 13:22:07-03
731	59	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-05 12:57:59-03
731	50	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-10 18:34:40-03
731	26	1	4	\N	2025-10-14 18:31:41-03
732	53	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-11-13 00:53:12-03
732	79	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-11-05 17:59:24-03
732	107	1	3	\N	2024-08-25 20:41:55-03
733	21	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-05-24 22:41:20-03
733	79	1	4	A construção do universo é detalhada e muito bem feita.	2024-09-09 10:54:23-03
733	53	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-04 01:53:26-03
734	91	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-17 15:04:59-03
734	121	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-09-18 16:50:32-03
734	29	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-09-09 21:59:46-03
735	126	1	5	\N	2025-04-10 17:08:15-03
735	62	1	3	\N	2023-11-20 15:56:01-03
735	82	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-05-25 14:32:15-03
736	90	1	2	\N	2025-07-17 16:13:00-03
736	38	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-09 19:44:31-03
736	106	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-07-22 07:54:18-03
737	56	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-30 16:58:52-03
737	33	1	1	\N	2024-04-12 06:46:42-03
737	11	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-22 21:57:13-03
738	91	1	5	\N	2025-10-31 14:47:55-03
738	99	1	3	A trama é inteligente e conduzida com bastante habilidade.	2025-10-27 02:55:17-03
738	76	1	4	\N	2024-11-13 12:43:02-03
739	120	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-05 22:04:07-03
739	12	1	4	\N	2024-12-13 08:11:40-03
739	112	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-04-30 12:42:42-03
740	18	1	4	\N	2024-07-20 02:20:43-03
740	15	1	1	\N	2024-08-12 00:19:28-03
740	40	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-09-24 01:47:57-03
741	76	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-09-14 15:37:21-03
741	17	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-11-15 10:02:25-03
741	101	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-08-03 00:02:34-03
742	12	1	2	\N	2025-06-17 02:21:31-03
742	68	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-16 03:03:54-03
742	14	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-04-13 18:52:44-03
743	92	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-09-12 09:07:03-03
743	98	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-06-26 05:47:56-03
743	19	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-04 01:29:38-03
744	48	1	2	\N	2024-08-12 18:10:02-03
744	31	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-08-14 14:06:06-03
744	120	1	4	\N	2025-10-28 03:53:32-03
745	97	1	2	O livro traz boas reflexões e personagens bem construídos.	2023-11-28 22:13:19-03
745	117	1	3	Uma obra que surpreende pela profundidade emocional.	2024-03-26 19:17:25-03
745	106	1	5	\N	2025-06-14 19:38:27-03
746	88	1	2	\N	2025-02-22 05:44:26-03
746	5	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-08-29 10:47:29-03
746	38	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-09-13 11:21:37-03
747	48	1	4	Uma leitura rápida, porém cheia de significado.	2024-07-06 03:36:22-03
747	59	1	2	\N	2024-09-26 05:46:18-03
747	120	1	4	Uma obra que surpreende pela profundidade emocional.	2025-10-12 00:01:49-03
748	92	1	1	Uma leitura rápida, porém cheia de significado.	2025-04-24 00:24:05-03
748	3	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-29 10:35:01-03
748	77	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-06 13:25:36-03
749	68	1	3	Uma leitura rápida, porém cheia de significado.	2023-12-01 23:41:47-03
749	70	1	4	\N	2025-03-30 11:41:00-03
749	16	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-02-07 11:44:54-03
750	18	1	5	\N	2025-09-14 15:15:42-03
750	89	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-06-05 13:10:17-03
750	121	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-08 01:39:29-03
751	95	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-04-10 09:26:07-03
751	94	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-06-15 12:21:49-03
751	115	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-05-16 21:13:18-03
752	72	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-05-30 13:03:59-03
752	51	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-01-24 02:26:31-03
752	71	1	4	A obra aborda temas importantes de maneira leve e acessível.	2023-12-16 08:30:11-03
753	30	1	5	Uma obra que surpreende pela profundidade emocional.	2025-01-05 13:38:55-03
753	40	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-01 03:16:50-03
753	78	1	1	\N	2025-10-31 00:13:57-03
754	10	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-11-08 08:50:48-03
754	104	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-10-13 01:14:47-03
754	13	1	1	\N	2025-06-28 21:46:21-03
755	82	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-10 20:37:06-03
755	65	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-21 20:57:25-03
755	75	1	3	\N	2025-08-31 15:57:16-03
756	3	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-07-26 22:39:29-03
756	35	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-11-17 06:18:52-03
756	8	1	2	\N	2024-08-19 01:03:13-03
757	119	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2023-11-16 06:05:12-03
757	24	1	4	\N	2023-11-22 19:55:32-03
757	66	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-05-14 09:32:59-03
758	90	1	2	A construção do universo é detalhada e muito bem feita.	2025-02-23 18:04:32-03
758	16	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-05-29 08:10:39-03
758	85	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-07-19 19:20:57-03
759	90	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-08-20 01:55:56-03
759	32	1	5	Uma leitura rápida, porém cheia de significado.	2025-11-12 18:43:17-03
759	6	1	3	\N	2025-07-08 06:59:15-03
760	14	1	4	A construção do universo é detalhada e muito bem feita.	2025-10-15 15:17:26-03
760	81	1	3	A construção do universo é detalhada e muito bem feita.	2023-12-08 05:38:46-03
760	84	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-01 03:55:25-03
761	85	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-07-14 22:13:22-03
761	91	1	3	\N	2025-03-07 16:32:19-03
761	63	1	2	Uma leitura rápida, porém cheia de significado.	2025-04-09 05:21:50-03
762	61	1	3	\N	2024-01-18 21:35:10-03
762	113	1	2	\N	2024-12-31 12:16:53-03
762	123	1	1	\N	2024-01-28 14:48:48-03
763	118	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-09-28 14:45:40-03
763	99	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-06-14 09:11:48-03
763	71	1	1	\N	2024-06-05 21:25:50-03
764	123	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-10-11 09:00:32-03
764	45	1	5	\N	2025-05-26 17:00:00-03
765	77	1	5	Uma leitura rápida, porém cheia de significado.	2025-05-07 07:46:36-03
765	29	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-08 13:49:21-03
765	93	1	5	\N	2025-11-12 14:36:27-03
766	80	1	2	\N	2024-11-11 10:20:09-03
766	34	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-05-10 00:38:53-03
766	45	1	4	\N	2024-12-12 08:43:08-03
767	43	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-15 10:29:30-03
767	86	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-03-10 00:12:58-03
767	56	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-28 13:43:02-03
768	117	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-12-12 18:49:27-03
768	111	1	3	Uma obra que surpreende pela profundidade emocional.	2024-01-03 16:38:23-03
768	19	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-11-09 12:56:19-03
769	44	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-11-13 21:32:52-03
769	65	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-01-12 13:45:39-03
769	121	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-11 20:41:50-03
770	78	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-04 05:37:12-03
770	106	1	3	\N	2025-04-30 00:48:22-03
770	45	1	1	\N	2025-09-02 03:25:16-03
771	99	1	1	\N	2025-04-12 00:11:46-03
771	115	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-03 16:21:29-03
771	78	1	4	A construção do universo é detalhada e muito bem feita.	2025-05-11 07:08:34-03
772	50	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-04-27 00:37:44-03
772	4	1	1	\N	2025-07-18 14:27:36-03
772	28	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2024-09-20 17:52:46-03
773	17	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-02-15 05:51:47-03
773	55	1	2	\N	2024-11-26 22:28:14-03
773	15	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-05-14 13:42:16-03
774	68	1	3	\N	2024-05-08 08:05:36-03
774	32	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-27 13:37:45-03
774	85	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-11-30 21:07:45-03
775	90	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-07-09 08:16:16-03
775	102	1	3	\N	2024-02-20 04:08:24-03
775	109	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-04-28 04:22:37-03
776	85	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-12-09 01:46:53-03
776	23	1	4	\N	2025-03-06 13:53:30-03
776	116	1	5	Uma obra que surpreende pela profundidade emocional.	2025-06-13 22:38:34-03
777	79	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-02 03:02:08-03
777	106	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2023-12-15 20:52:01-03
777	101	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-01-08 18:54:44-03
778	27	1	4	\N	2024-10-30 03:42:24-03
778	64	1	4	Uma leitura rápida, porém cheia de significado.	2024-07-08 12:22:17-03
778	47	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-01-29 10:55:11-03
779	10	1	1	\N	2024-03-02 19:08:01-03
779	77	1	5	\N	2024-11-12 08:44:30-03
779	84	1	4	\N	2024-07-18 11:06:22-03
780	74	1	4	\N	2025-04-03 05:04:45-03
780	114	1	2	\N	2025-06-15 08:50:04-03
780	82	1	1	Uma leitura rápida, porém cheia de significado.	2023-12-23 14:23:54-03
781	45	1	3	\N	2025-03-06 13:33:42-03
781	68	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-12 03:01:18-03
781	77	1	3	A obra aborda temas importantes de maneira leve e acessível.	2025-05-10 23:58:34-03
782	52	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-24 10:12:30-03
782	126	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-04-01 21:23:29-03
782	14	1	3	\N	2024-07-16 04:48:09-03
783	73	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-04-22 23:14:17-03
783	8	1	2	Uma leitura rápida, porém cheia de significado.	2024-08-30 12:39:20-03
783	15	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-04 01:54:14-03
784	71	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-01-05 21:01:51-03
784	67	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-03-30 17:30:12-03
784	59	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-12-25 05:35:42-03
785	5	1	1	\N	2024-05-07 18:58:20-03
785	27	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-28 07:12:37-03
785	22	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-07-22 06:27:37-03
786	76	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-10-03 14:42:49-03
786	120	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-09-29 21:36:24-03
786	41	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-12-20 09:34:20-03
787	106	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-12 20:17:21-03
787	79	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-02-02 02:54:29-03
787	114	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-01-02 01:51:43-03
788	57	1	4	\N	2024-03-26 23:23:12-03
788	68	1	3	A construção do universo é detalhada e muito bem feita.	2025-09-05 01:41:28-03
788	14	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-01-11 01:34:19-03
789	110	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-03-17 01:16:01-03
789	124	1	2	\N	2025-07-16 21:27:01-03
789	17	1	1	\N	2025-10-25 00:52:13-03
790	107	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-02 21:39:35-03
790	91	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-08-23 04:41:11-03
790	81	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-11-08 12:21:13-03
791	72	1	2	\N	2025-10-31 15:18:14-03
791	53	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-04-02 18:03:43-03
791	61	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-02-22 23:03:06-03
792	63	1	1	\N	2024-04-27 06:40:18-03
792	36	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-28 10:46:29-03
792	55	1	4	\N	2024-12-10 01:14:21-03
793	75	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-03-07 01:20:26-03
793	68	1	3	A construção do universo é detalhada e muito bem feita.	2023-12-27 06:25:10-03
793	44	1	1	Uma leitura rápida, porém cheia de significado.	2024-05-10 23:00:56-03
794	36	1	3	\N	2025-09-27 19:49:11-03
794	83	1	5	\N	2025-07-25 01:26:13-03
794	108	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-10-13 11:01:43-03
795	66	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-10-07 14:16:07-03
795	12	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-01-09 20:15:35-03
795	3	1	3	\N	2024-04-01 15:52:46-03
796	77	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-19 15:24:07-03
796	126	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-21 13:01:58-03
796	16	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-20 07:24:29-03
797	121	1	3	\N	2025-08-17 09:54:09-03
797	22	1	5	\N	2023-12-04 19:28:32-03
797	32	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-05-31 03:48:37-03
798	43	1	5	\N	2025-03-30 03:34:27-03
798	102	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-11-08 20:49:22-03
798	42	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-10-12 03:17:45-03
799	122	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-19 10:38:07-03
799	89	1	1	\N	2024-07-16 02:13:52-03
799	67	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-07-29 00:26:57-03
800	110	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-07-20 13:49:49-03
800	8	1	3	\N	2024-12-07 05:07:35-03
800	77	1	5	\N	2025-03-08 11:28:13-03
801	114	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-08-09 10:25:06-03
801	75	1	1	\N	2025-08-27 17:12:37-03
801	107	1	5	A obra aborda temas importantes de maneira leve e acessível.	2025-04-19 12:13:03-03
802	102	1	3	\N	2024-02-01 09:17:26-03
802	76	1	3	\N	2025-06-09 22:14:19-03
802	94	1	5	\N	2025-04-24 09:56:34-03
803	32	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-07-27 09:06:46-03
803	77	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-03-26 00:23:25-03
803	1	1	1	A construção do universo é detalhada e muito bem feita.	2024-05-31 18:44:24-03
804	34	1	3	O livro traz boas reflexões e personagens bem construídos.	2023-12-09 05:49:30-03
804	87	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2023-12-02 04:33:36-03
804	15	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-06-21 11:44:48-03
805	23	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-05-31 16:37:47-03
805	53	1	1	\N	2025-03-18 01:18:37-03
805	119	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-11-11 01:16:28-03
806	38	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-07-02 09:53:30-03
806	124	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-15 20:32:26-03
806	79	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2023-12-27 07:08:55-03
807	59	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-08-14 18:04:29-03
807	101	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-05-14 13:04:36-03
807	56	1	1	A construção do universo é detalhada e muito bem feita.	2023-11-23 21:22:24-03
808	109	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-02-27 23:40:16-03
808	40	1	3	A construção do universo é detalhada e muito bem feita.	2025-09-16 01:55:17-03
808	22	1	5	\N	2024-02-11 22:58:11-03
809	38	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-06-04 14:09:24-03
809	25	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-17 02:20:53-03
809	105	1	5	\N	2025-07-15 22:20:07-03
810	110	1	5	A obra aborda temas importantes de maneira leve e acessível.	2023-11-18 03:07:20-03
810	92	1	4	\N	2024-11-25 16:05:49-03
810	115	1	1	Uma leitura rápida, porém cheia de significado.	2024-01-01 10:40:08-03
811	63	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-07 20:40:57-03
811	85	1	2	\N	2024-09-20 00:01:30-03
811	115	1	4	\N	2025-02-04 18:40:37-03
812	98	1	2	\N	2025-01-12 19:44:17-03
812	15	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-05 05:43:24-03
812	18	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-20 22:10:07-03
813	65	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-24 08:09:30-03
813	49	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-07 08:56:44-03
813	22	1	3	\N	2024-12-17 09:23:23-03
814	118	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-09-27 11:52:07-03
814	79	1	4	\N	2024-08-19 14:13:16-03
814	56	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-01-04 19:23:40-03
815	78	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-19 23:44:48-03
815	107	1	3	\N	2025-02-09 12:41:00-03
815	58	1	5	\N	2025-08-30 00:42:52-03
816	45	1	4	Uma leitura rápida, porém cheia de significado.	2025-11-05 02:53:27-03
816	40	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-05-09 12:58:49-03
816	74	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-08-28 04:05:35-03
817	121	1	4	\N	2024-06-04 01:27:05-03
817	66	1	1	\N	2024-08-10 14:23:06-03
817	91	1	5	A construção do universo é detalhada e muito bem feita.	2024-11-28 00:29:34-03
818	92	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-08-03 08:50:33-03
818	54	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-07-19 01:20:58-03
818	82	1	3	\N	2025-06-22 10:03:30-03
819	13	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-04 04:18:31-03
819	83	1	4	\N	2024-03-26 02:26:24-03
819	25	1	3	Uma obra que surpreende pela profundidade emocional.	2024-10-30 20:18:21-03
820	13	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-15 07:14:34-03
820	45	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-29 11:49:03-03
820	103	1	2	Uma leitura rápida, porém cheia de significado.	2024-03-03 07:21:30-03
821	3	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-09-16 08:18:23-03
821	36	1	3	\N	2025-06-25 13:15:54-03
821	33	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-06-26 14:38:26-03
822	80	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-12-04 23:45:25-03
822	6	1	2	\N	2025-11-03 09:37:26-03
822	26	1	4	\N	2025-04-10 20:37:39-03
823	90	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-04-06 04:36:38-03
823	41	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-01 03:00:08-03
823	14	1	5	\N	2024-05-15 10:08:19-03
824	91	1	5	Uma leitura rápida, porém cheia de significado.	2025-09-04 10:02:57-03
824	63	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-12-20 20:48:38-03
824	68	1	3	\N	2025-05-14 13:27:47-03
825	66	1	1	Uma leitura rápida, porém cheia de significado.	2025-05-20 18:12:16-03
825	49	1	4	\N	2025-11-14 17:52:06-03
825	57	1	3	\N	2025-03-24 07:39:10-03
826	70	1	1	Uma leitura rápida, porém cheia de significado.	2024-03-18 20:42:36-03
826	95	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-03-20 04:21:00-03
826	8	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-06-19 17:30:11-03
827	74	1	1	\N	2023-11-18 09:38:03-03
827	29	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2025-07-29 17:01:51-03
827	41	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-30 00:02:11-03
828	52	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-27 02:09:25-03
828	64	1	4	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-12-21 06:57:52-03
828	44	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-04 07:12:20-03
829	57	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-05-02 15:46:21-03
829	118	1	4	\N	2024-07-05 22:09:40-03
829	115	1	2	Uma leitura rápida, porém cheia de significado.	2025-10-13 13:24:02-03
830	121	1	5	A trama é inteligente e conduzida com bastante habilidade.	2024-12-26 09:25:33-03
830	100	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-10-25 20:08:03-03
830	2	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-07-18 07:24:03-03
831	31	1	3	\N	2024-06-21 16:53:33-03
831	114	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-14 18:37:52-03
831	100	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-04-09 11:57:34-03
832	89	1	1	\N	2025-07-11 05:20:47-03
832	83	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-01-26 20:57:45-03
832	96	1	2	\N	2025-01-05 10:38:43-03
833	82	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-09-20 15:40:54-03
833	6	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-02-09 21:02:36-03
833	27	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-11 08:43:00-03
834	26	1	5	\N	2024-08-07 12:13:36-03
834	52	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-11 05:05:26-03
834	100	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-04-12 11:49:35-03
835	101	1	4	\N	2025-06-13 00:16:37-03
835	3	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-11-11 19:08:45-03
835	99	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-08-07 21:25:10-03
836	42	1	4	\N	2025-09-28 00:06:27-03
836	101	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-14 06:05:05-03
836	108	1	5	\N	2024-02-01 06:12:18-03
837	40	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-06-24 07:16:52-03
837	23	1	5	\N	2025-06-14 15:37:05-03
837	123	1	4	\N	2025-09-28 23:20:37-03
838	94	1	1	\N	2024-04-12 20:19:35-03
838	12	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-03-28 21:12:09-03
838	45	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-18 13:03:00-03
839	46	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-12 04:09:13-03
839	104	1	1	\N	2024-11-20 14:15:11-03
839	119	1	2	\N	2025-09-02 07:07:45-03
840	40	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-12-16 22:25:42-03
840	123	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-16 18:34:36-03
840	113	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-04-09 16:22:04-03
841	72	1	4	\N	2024-07-03 19:33:08-03
841	125	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-09 06:17:33-03
841	71	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-22 13:00:17-03
842	3	1	5	Uma obra que surpreende pela profundidade emocional.	2024-12-22 19:30:44-03
842	90	1	5	Uma leitura rápida, porém cheia de significado.	2025-02-11 11:27:58-03
842	93	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-01-10 04:25:22-03
843	84	1	3	\N	2024-11-21 01:00:41-03
843	93	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-11-07 21:41:37-03
843	99	1	3	\N	2025-11-12 02:37:26-03
844	117	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-12-14 08:53:54-03
844	116	1	2	A obra aborda temas importantes de maneira leve e acessível.	2023-12-15 19:05:52-03
844	102	1	5	\N	2025-11-07 00:24:15-03
845	27	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-07 19:34:45-03
845	32	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-10-31 07:58:34-03
845	107	1	3	\N	2025-01-19 04:02:59-03
846	103	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-10-15 12:46:22-03
846	29	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-06-12 14:24:23-03
846	109	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-05 05:45:55-03
847	54	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-07-09 12:43:24-03
847	57	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-05-07 19:10:46-03
847	72	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-03 15:24:01-03
848	94	1	3	\N	2024-08-12 15:50:00-03
849	64	1	3	A construção do universo é detalhada e muito bem feita.	2024-11-01 07:08:55-03
849	101	1	2	Uma obra que surpreende pela profundidade emocional.	2025-07-20 11:12:25-03
849	62	1	2	\N	2025-08-29 06:16:21-03
850	98	1	2	Uma leitura rápida, porém cheia de significado.	2024-07-26 14:48:13-03
850	18	1	5	\N	2025-07-13 07:02:23-03
850	114	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-10-03 02:48:02-03
851	19	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-05-16 07:29:10-03
851	103	1	5	\N	2025-06-30 19:44:17-03
851	30	1	4	Uma leitura rápida, porém cheia de significado.	2025-10-19 09:20:40-03
852	33	1	4	A construção do universo é detalhada e muito bem feita.	2024-07-03 06:15:43-03
852	26	1	1	A construção do universo é detalhada e muito bem feita.	2024-01-07 13:28:08-03
852	124	1	2	Uma obra que surpreende pela profundidade emocional.	2023-12-13 22:55:35-03
853	125	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-16 16:50:22-03
853	3	1	4	\N	2025-05-06 11:45:33-03
853	108	1	1	Uma obra que surpreende pela profundidade emocional.	2024-12-11 10:58:50-03
854	63	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-12 21:54:31-03
854	97	1	1	\N	2023-11-28 22:02:23-03
854	10	1	3	A obra aborda temas importantes de maneira leve e acessível.	2023-12-10 19:33:20-03
855	6	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-05-13 00:11:53-03
855	28	1	3	A construção do universo é detalhada e muito bem feita.	2024-04-30 20:36:43-03
855	61	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-24 00:53:03-03
856	119	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-02-21 05:05:08-03
856	116	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-10-04 06:31:01-03
856	45	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-11-06 10:13:54-03
857	3	1	5	Uma obra que surpreende pela profundidade emocional.	2025-02-16 13:38:50-03
857	120	1	5	\N	2025-06-25 00:11:16-03
857	24	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-01-13 05:23:02-03
858	57	1	1	\N	2025-08-06 18:40:09-03
858	2	1	4	\N	2025-10-11 05:01:04-03
858	17	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-11-05 00:29:56-03
859	112	1	3	O livro traz boas reflexões e personagens bem construídos.	2025-09-30 20:52:32-03
859	92	1	5	A construção do universo é detalhada e muito bem feita.	2025-09-03 08:33:38-03
859	94	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-10-21 11:48:38-03
860	94	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-01-17 11:58:38-03
860	49	1	3	\N	2024-02-24 16:17:06-03
860	62	1	5	Uma leitura rápida, porém cheia de significado.	2024-01-17 07:55:58-03
861	105	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-05-01 09:56:57-03
861	110	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-10-24 11:52:37-03
861	29	1	4	Uma leitura rápida, porém cheia de significado.	2025-01-20 05:45:11-03
862	58	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-05-11 19:25:37-03
862	85	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-10-17 09:05:05-03
862	64	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-11 21:05:59-03
863	12	1	1	\N	2025-05-31 14:09:32-03
863	123	1	4	Uma obra que surpreende pela profundidade emocional.	2025-04-23 03:18:48-03
863	102	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-23 08:53:50-03
864	110	1	4	A construção do universo é detalhada e muito bem feita.	2024-04-13 23:42:58-03
864	34	1	4	Uma leitura rápida, porém cheia de significado.	2024-03-02 22:40:05-03
864	55	1	2	\N	2025-07-02 10:50:29-03
865	113	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-18 10:31:39-03
865	70	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-10 21:26:47-03
865	68	1	5	\N	2023-11-28 07:13:36-03
866	5	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-01-16 06:04:11-03
866	90	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-08-01 12:05:55-03
866	105	1	2	A trama é inteligente e conduzida com bastante habilidade.	2023-12-21 13:17:43-03
867	28	1	5	\N	2024-07-28 19:20:40-03
867	83	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-09-13 23:50:09-03
867	77	1	4	\N	2024-04-24 00:03:31-03
868	89	1	2	\N	2025-09-06 09:07:03-03
868	120	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2023-12-08 21:56:01-03
868	64	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-25 01:12:18-03
869	1	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-08-21 06:33:57-03
869	35	1	4	Uma leitura rápida, porém cheia de significado.	2025-02-21 18:46:58-03
869	27	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-02-05 17:34:02-03
870	62	1	3	\N	2025-07-23 14:26:49-03
870	118	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-31 00:26:42-03
870	76	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-02-01 22:04:05-03
871	13	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-06-28 09:06:42-03
871	95	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-01-08 22:31:17-03
871	90	1	4	\N	2024-06-06 17:07:23-03
872	84	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-06-03 04:38:08-03
872	92	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-12-03 20:50:12-03
872	8	1	4	\N	2025-05-18 14:50:06-03
873	47	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-08-16 15:33:58-03
873	69	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-04-12 10:46:02-03
873	43	1	4	\N	2025-03-19 23:12:35-03
874	37	1	1	\N	2025-07-26 07:34:37-03
874	77	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-07-03 23:51:50-03
874	108	1	2	A trama é inteligente e conduzida com bastante habilidade.	2024-07-10 03:55:24-03
875	42	1	4	\N	2025-07-13 22:51:57-03
875	30	1	1	\N	2025-05-13 12:44:20-03
875	22	1	1	Uma leitura rápida, porém cheia de significado.	2024-03-12 01:43:43-03
876	110	1	4	A construção do universo é detalhada e muito bem feita.	2024-02-08 17:05:38-03
876	104	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-10-12 08:50:43-03
876	14	1	5	\N	2024-07-14 15:44:43-03
877	25	1	5	\N	2025-06-15 21:30:44-03
877	40	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-12-03 05:54:55-03
877	43	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-05 03:27:36-03
878	110	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-06-18 04:52:29-03
878	50	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-09 15:36:36-03
878	67	1	4	A construção do universo é detalhada e muito bem feita.	2024-12-01 23:29:26-03
879	12	1	4	Uma leitura rápida, porém cheia de significado.	2025-05-18 16:54:13-03
879	1	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-12-19 16:18:04-03
879	81	1	3	\N	2024-08-20 21:53:55-03
880	15	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-28 22:45:06-03
880	73	1	5	Uma leitura rápida, porém cheia de significado.	2024-03-19 17:12:26-03
880	33	1	3	\N	2025-10-08 06:04:19-03
881	20	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-11 21:27:21-03
881	109	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-07-27 21:20:11-03
881	59	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-04-01 11:17:53-03
882	96	1	2	Uma obra que surpreende pela profundidade emocional.	2024-07-10 20:48:18-03
882	41	1	3	Um livro que entretém e faz pensar ao mesmo tempo.	2025-04-19 18:02:15-03
882	111	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-21 01:27:41-03
883	111	1	2	Uma obra que surpreende pela profundidade emocional.	2025-05-02 00:28:29-03
883	122	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-04-13 17:24:34-03
883	23	1	3	Uma leitura rápida, porém cheia de significado.	2024-02-18 06:30:53-03
884	50	1	1	Uma obra que surpreende pela profundidade emocional.	2024-06-26 11:15:27-03
884	25	1	2	\N	2024-02-26 06:32:42-03
884	118	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-04-21 13:16:53-03
885	29	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-05-10 07:26:20-03
885	73	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-17 01:46:58-03
885	111	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-07-09 23:50:05-03
886	28	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-09-10 20:12:47-03
886	124	1	3	\N	2025-10-25 06:12:25-03
886	80	1	1	\N	2025-04-14 13:51:13-03
887	88	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-20 08:53:24-03
887	54	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-07-22 01:38:42-03
887	42	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-04-30 09:38:16-03
888	53	1	5	\N	2025-08-01 11:44:32-03
888	119	1	2	Uma obra que surpreende pela profundidade emocional.	2024-10-04 00:20:02-03
888	19	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-09-26 22:04:07-03
889	102	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-07-14 20:02:16-03
889	81	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-04-23 13:28:41-03
889	8	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-01-21 18:08:42-03
890	3	1	5	\N	2025-09-05 23:11:35-03
890	124	1	5	\N	2024-09-17 00:41:25-03
890	50	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-04-02 12:58:49-03
891	74	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-01-02 14:37:21-03
891	7	1	1	A obra aborda temas importantes de maneira leve e acessível.	2025-07-16 14:16:24-03
891	124	1	2	\N	2025-09-16 19:37:50-03
892	102	1	4	\N	2024-01-25 21:45:25-03
892	27	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-07-23 00:23:56-03
892	116	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-10-19 14:33:13-03
893	49	1	4	\N	2025-01-25 15:52:04-03
893	76	1	2	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-04-02 08:42:04-03
893	62	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-30 04:42:11-03
894	96	1	4	\N	2024-09-11 22:49:29-03
894	109	1	5	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-08-16 19:09:58-03
894	100	1	4	\N	2025-08-23 21:19:56-03
895	25	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-04-09 11:07:27-03
895	113	1	2	\N	2025-01-29 05:50:39-03
895	3	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-06 15:24:42-03
896	24	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-08-25 11:06:49-03
896	25	1	1	Uma história cativante, com momentos tocantes e bem estruturados.	2024-09-29 04:37:00-03
896	99	1	5	\N	2024-10-08 09:20:00-03
897	77	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-12 12:04:51-03
897	32	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-22 12:52:38-03
897	96	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-06-21 04:25:04-03
898	53	1	4	\N	2025-03-12 11:21:29-03
898	125	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-05-21 09:36:40-03
898	95	1	3	A construção do universo é detalhada e muito bem feita.	2024-02-12 11:12:29-03
899	42	1	1	A construção do universo é detalhada e muito bem feita.	2025-03-05 06:07:27-03
899	66	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-08-02 13:37:53-03
899	107	1	1	\N	2025-03-04 14:29:05-03
900	36	1	3	\N	2024-08-24 17:48:40-03
900	18	1	3	\N	2024-04-10 08:41:20-03
900	57	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2024-05-12 22:45:42-03
901	121	1	1	A construção do universo é detalhada e muito bem feita.	2025-06-18 09:55:30-03
901	76	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-02-17 10:46:42-03
901	16	1	1	O livro traz boas reflexões e personagens bem construídos.	2024-02-03 19:07:24-03
902	97	1	2	\N	2024-02-23 09:41:54-03
902	74	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-03-17 03:01:17-03
902	106	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-01-27 18:14:47-03
903	32	1	5	\N	2024-02-26 01:59:18-03
903	90	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-07-09 13:34:30-03
903	111	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-07-11 02:12:52-03
904	121	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-03-09 04:45:48-03
904	2	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2025-05-03 19:56:03-03
904	77	1	2	Uma obra que surpreende pela profundidade emocional.	2025-02-07 22:18:41-03
905	64	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2023-12-16 02:04:44-03
905	44	1	3	Uma obra que surpreende pela profundidade emocional.	2025-02-23 07:23:25-03
905	105	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-09-02 23:26:56-03
906	40	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2025-07-09 01:02:24-03
906	34	1	2	A obra aborda temas importantes de maneira leve e acessível.	2024-02-13 23:41:01-03
906	85	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-03-27 20:02:54-03
907	107	1	3	Uma leitura rápida, porém cheia de significado.	2024-01-29 06:48:46-03
907	54	1	1	\N	2024-09-10 21:00:19-03
907	58	1	4	\N	2024-11-04 00:26:43-03
908	56	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2025-03-14 12:37:43-03
908	14	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2024-06-03 17:51:52-03
908	40	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-04-16 16:46:03-03
909	119	1	2	\N	2024-05-31 04:30:01-03
909	118	1	3	Uma leitura rápida, porém cheia de significado.	2025-03-02 08:57:49-03
909	12	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-09-09 12:38:10-03
910	77	1	3	Uma história cativante, com momentos tocantes e bem estruturados.	2024-10-19 03:11:44-03
910	6	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-07-04 23:17:03-03
910	44	1	3	\N	2025-07-13 15:58:26-03
911	3	1	1	A trama é inteligente e conduzida com bastante habilidade.	2025-03-18 01:46:46-03
911	25	1	5	\N	2024-06-05 20:29:22-03
911	93	1	2	\N	2024-03-14 17:13:35-03
912	126	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2024-04-17 11:05:00-03
912	54	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-05-20 21:18:09-03
912	119	1	5	A narrativa é fluida e prende a atenção do início ao fim.	2025-08-12 22:13:33-03
913	49	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-01-05 22:50:55-03
913	113	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-02-08 14:05:20-03
913	16	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-03 02:47:04-03
914	100	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-09-05 21:48:21-03
914	20	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-21 16:06:26-03
914	19	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-10-12 09:20:51-03
915	10	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-11-13 02:44:43-03
915	81	1	2	Uma leitura rápida, porém cheia de significado.	2025-08-21 01:36:53-03
915	57	1	1	Uma leitura rápida, porém cheia de significado.	2025-07-31 18:50:39-03
916	55	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-01-09 17:07:01-03
916	36	1	4	A construção do universo é detalhada e muito bem feita.	2025-10-29 16:29:59-03
916	73	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-29 13:38:09-03
917	16	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-07-11 19:14:19-03
917	44	1	3	\N	2023-12-24 21:12:07-03
917	76	1	5	\N	2025-08-09 22:30:32-03
918	15	1	2	Uma leitura rápida, porém cheia de significado.	2024-07-31 04:14:13-03
918	108	1	2	\N	2025-01-29 21:48:52-03
918	70	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-04-26 03:44:24-03
919	99	1	3	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-01-12 22:00:36-03
919	26	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2023-12-04 17:08:08-03
919	32	1	5	\N	2025-04-03 13:36:41-03
920	2	1	5	\N	2024-01-14 23:49:43-03
920	27	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-07-27 15:32:37-03
920	24	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-10-10 17:42:28-03
921	94	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-06-09 11:47:57-03
921	98	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-01-17 22:16:12-03
921	125	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-03-03 12:25:41-03
922	100	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2023-12-26 15:23:15-03
922	93	1	4	A obra aborda temas importantes de maneira leve e acessível.	2023-12-18 19:37:58-03
922	83	1	4	A construção do universo é detalhada e muito bem feita.	2024-02-24 08:49:23-03
923	6	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2023-12-31 18:24:29-03
923	41	1	1	\N	2024-01-27 22:41:13-03
923	65	1	1	\N	2024-05-18 16:58:19-03
924	71	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-05-17 17:52:31-03
924	36	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-06-05 01:02:33-03
924	42	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-06-30 22:52:31-03
925	19	1	2	\N	2025-08-01 10:46:45-03
925	97	1	5	\N	2023-11-30 18:41:02-03
925	35	1	4	\N	2024-04-12 23:07:45-03
926	109	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-01-13 15:21:14-03
926	16	1	4	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-10-14 18:40:03-03
926	54	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-01-02 08:03:09-03
927	75	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2025-05-07 14:22:41-03
927	108	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-05 12:23:11-03
927	88	1	5	\N	2024-07-03 22:31:09-03
928	125	1	2	A obra aborda temas importantes de maneira leve e acessível.	2025-10-09 04:02:10-03
928	6	1	5	\N	2024-06-13 23:40:15-03
928	117	1	3	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2025-08-18 22:01:00-03
929	125	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-10-15 11:05:04-03
929	53	1	2	A trama é inteligente e conduzida com bastante habilidade.	2025-08-27 18:21:19-03
929	26	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-01-16 11:15:46-03
930	68	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-19 05:55:09-03
930	9	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-02-17 10:08:37-03
930	118	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-02-16 21:39:59-03
931	92	1	5	A construção do universo é detalhada e muito bem feita.	2024-11-07 14:42:45-03
931	123	1	4	O livro traz boas reflexões e personagens bem construídos.	2025-09-09 08:42:23-03
931	81	1	1	A construção do universo é detalhada e muito bem feita.	2024-04-19 07:35:38-03
932	7	1	1	A obra aborda temas importantes de maneira leve e acessível.	2024-06-02 22:14:01-03
932	77	1	4	\N	2025-03-02 02:43:07-03
932	83	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-05-14 20:58:21-03
933	1	1	5	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-10 16:27:01-03
933	56	1	5	\N	2024-05-18 05:54:40-03
933	88	1	5	Uma leitura rápida, porém cheia de significado.	2024-03-12 15:50:04-03
934	53	1	3	O livro traz boas reflexões e personagens bem construídos.	2023-11-23 23:20:25-03
934	17	1	2	\N	2024-05-30 06:52:23-03
934	91	1	5	Uma obra que surpreende pela profundidade emocional.	2025-11-01 05:02:24-03
935	87	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2025-06-06 01:29:30-03
935	8	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-05-07 16:27:16-03
935	86	1	1	A construção do universo é detalhada e muito bem feita.	2024-11-03 16:53:47-03
936	49	1	2	Uma leitura rápida, porém cheia de significado.	2025-03-01 01:32:33-03
936	74	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-27 14:00:20-03
936	118	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-10-21 13:58:56-03
937	48	1	4	\N	2025-03-30 15:47:14-03
937	85	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-05-28 05:47:42-03
937	21	1	1	\N	2025-05-11 16:04:53-03
938	67	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2025-08-26 16:05:26-03
938	47	1	2	\N	2024-05-03 06:15:49-03
938	61	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2023-12-15 01:26:41-03
939	55	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2023-11-17 11:22:02-03
939	39	1	2	\N	2025-07-09 06:37:40-03
939	115	1	4	\N	2024-05-26 08:21:44-03
940	17	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-07-21 05:07:02-03
940	50	1	4	Um livro que entretém e faz pensar ao mesmo tempo.	2025-07-18 11:51:28-03
940	74	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-06-25 10:42:52-03
941	57	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-05-31 17:57:02-03
941	55	1	1	\N	2023-12-28 13:26:03-03
941	89	1	3	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-06-21 21:04:52-03
942	41	1	2	\N	2024-06-03 03:29:13-03
942	11	1	2	A construção do universo é detalhada e muito bem feita.	2024-03-10 03:26:23-03
942	104	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2025-06-05 22:59:50-03
943	99	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-03-16 15:10:32-03
943	77	1	5	A construção do universo é detalhada e muito bem feita.	2023-12-19 05:11:43-03
943	55	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-07-02 11:00:03-03
944	25	1	4	\N	2023-12-10 02:36:28-03
944	9	1	5	\N	2025-03-25 16:03:27-03
944	89	1	1	\N	2024-06-25 19:48:42-03
945	41	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2025-04-09 10:31:17-03
945	76	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-12 20:10:01-03
945	91	1	1	\N	2025-07-07 20:46:56-03
946	112	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-01-10 15:43:07-03
946	102	1	3	\N	2025-07-20 14:25:49-03
946	1	1	2	A narrativa é fluida e prende a atenção do início ao fim.	2024-10-25 06:59:20-03
947	88	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-01 21:09:30-03
947	114	1	1	\N	2024-02-16 15:23:26-03
947	25	1	5	A construção do universo é detalhada e muito bem feita.	2025-07-14 02:08:44-03
948	104	1	4	A obra aborda temas importantes de maneira leve e acessível.	2024-10-07 06:26:54-03
948	101	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2024-04-28 07:40:42-03
948	24	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-08-23 01:16:59-03
949	18	1	5	\N	2024-04-10 12:50:40-03
949	99	1	4	A construção do universo é detalhada e muito bem feita.	2024-07-07 20:42:54-03
949	98	1	5	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-02-09 23:28:10-03
950	71	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-01-09 06:47:02-03
950	80	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-25 19:37:59-03
950	113	1	1	\N	2024-03-19 22:34:11-03
951	107	1	4	O desenvolvimento dos personagens é um dos pontos fortes.	2024-08-31 03:23:27-03
951	13	1	3	Gostei especialmente do final, que foi impactante e bem conduzido.	2024-03-30 16:58:07-03
951	108	1	3	\N	2024-09-16 17:38:14-03
952	24	1	5	A construção do universo é detalhada e muito bem feita.	2024-02-06 23:44:50-03
952	40	1	5	Uma obra que surpreende pela profundidade emocional.	2025-05-18 09:16:34-03
952	116	1	4	A construção do universo é detalhada e muito bem feita.	2025-06-22 16:25:53-03
953	82	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-01-13 09:10:38-03
953	86	1	1	\N	2024-07-13 09:31:21-03
953	6	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-24 17:27:01-03
954	89	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-05-14 17:38:32-03
954	78	1	2	Uma obra que surpreende pela profundidade emocional.	2024-12-27 19:58:27-03
954	36	1	1	A construção do universo é detalhada e muito bem feita.	2025-05-28 04:57:50-03
955	86	1	3	\N	2023-11-30 02:16:20-03
955	47	1	1	Gostei da forma como o enredo se desenvolve, mantendo o leitor curioso.	2024-05-18 14:17:45-03
955	92	1	5	Uma leitura rápida, porém cheia de significado.	2023-11-17 19:43:23-03
956	77	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-05-07 17:57:38-03
956	44	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-09-20 16:16:33-03
956	19	1	2	\N	2025-03-13 14:59:46-03
957	58	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-04-18 21:34:32-03
957	49	1	4	\N	2025-04-14 02:03:32-03
957	62	1	4	Uma leitura rápida, porém cheia de significado.	2025-11-09 09:58:21-03
958	124	1	2	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-26 15:02:48-03
958	108	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2024-11-08 06:51:13-03
958	53	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2025-10-04 14:21:21-03
959	98	1	3	\N	2023-12-21 21:13:20-03
959	94	1	3	\N	2024-12-28 09:56:22-03
959	63	1	4	\N	2024-09-29 12:47:08-03
960	1	1	1	Uma leitura rápida, porém cheia de significado.	2025-08-27 20:57:24-03
960	99	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-05-11 08:00:42-03
960	126	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-12 21:30:33-03
961	9	1	3	\N	2024-08-28 10:58:28-03
961	76	1	1	\N	2025-03-14 14:07:14-03
961	13	1	3	\N	2024-03-28 12:16:44-03
962	48	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-04-17 12:39:06-03
962	52	1	1	\N	2024-02-29 18:05:52-03
962	24	1	5	\N	2024-02-15 08:56:09-03
963	43	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-02-23 02:28:00-03
963	34	1	2	Uma obra que surpreende pela profundidade emocional.	2025-02-24 12:33:23-03
963	125	1	2	O livro traz boas reflexões e personagens bem construídos.	2024-06-06 09:29:08-03
964	24	1	1	\N	2024-11-16 10:13:23-03
964	46	1	2	O desenvolvimento dos personagens é um dos pontos fortes.	2025-09-09 21:19:47-03
964	103	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-28 02:40:19-03
965	74	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-29 19:45:22-03
965	75	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-05-26 05:48:59-03
965	42	1	4	\N	2024-06-30 03:00:37-03
966	121	1	5	O livro traz boas reflexões e personagens bem construídos.	2024-03-22 13:49:31-03
966	109	1	5	A construção do universo é detalhada e muito bem feita.	2025-02-12 18:41:43-03
966	49	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-08-03 17:28:11-03
967	86	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-03-01 10:35:32-03
967	85	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-02-29 11:12:24-03
967	94	1	1	\N	2025-05-13 15:55:44-03
968	4	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-05-21 13:58:49-03
968	114	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-03-11 05:12:55-03
968	1	1	1	\N	2025-07-04 00:30:30-03
969	52	1	5	\N	2024-07-19 21:32:38-03
969	21	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-11-05 17:50:37-03
969	120	1	4	A narrativa é fluida e prende a atenção do início ao fim.	2024-01-19 07:55:07-03
970	105	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-09-29 13:53:51-03
970	111	1	1	\N	2025-03-05 13:11:27-03
970	4	1	4	\N	2024-05-01 01:58:51-03
971	75	1	1	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-07-29 02:44:39-03
971	107	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-06-11 09:50:15-03
971	11	1	1	Uma leitura rápida, porém cheia de significado.	2024-09-29 05:14:46-03
972	48	1	3	A obra aborda temas importantes de maneira leve e acessível.	2024-04-19 17:40:10-03
972	44	1	1	A narrativa é fluida e prende a atenção do início ao fim.	2025-11-08 16:24:18-03
972	16	1	2	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-11-21 04:49:40-03
973	54	1	5	O livro traz boas reflexões e personagens bem construídos.	2025-02-07 05:41:59-03
973	70	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-08-13 01:36:05-03
973	18	1	4	O livro traz boas reflexões e personagens bem construídos.	2024-04-25 15:19:40-03
974	69	1	2	O livro traz boas reflexões e personagens bem construídos.	2025-08-24 00:33:31-03
974	30	1	1	\N	2024-10-22 03:25:05-03
974	91	1	5	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-06-08 02:31:39-03
975	47	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-10-02 11:04:36-03
975	15	1	1	O livro traz boas reflexões e personagens bem construídos.	2025-05-03 01:15:26-03
975	41	1	4	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-05-12 02:47:40-03
976	120	1	5	A trama é inteligente e conduzida com bastante habilidade.	2023-11-27 04:44:07-03
976	85	1	2	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2025-02-04 22:52:06-03
976	88	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-06-18 06:42:48-03
977	89	1	3	\N	2025-09-29 04:19:53-03
977	22	1	3	A trama é inteligente e conduzida com bastante habilidade.	2024-10-22 00:27:25-03
977	36	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2023-12-01 00:17:50-03
978	80	1	4	\N	2024-05-30 22:27:50-03
978	3	1	2	Uma obra que surpreende pela profundidade emocional.	2025-04-29 20:38:50-03
978	94	1	1	\N	2024-02-24 17:17:49-03
979	99	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-10-25 10:28:01-03
979	40	1	2	\N	2024-07-03 08:40:55-03
979	93	1	5	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-05-11 21:20:56-03
980	84	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-09-09 03:17:52-03
980	100	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-01-14 00:14:18-03
980	50	1	2	Uma obra que surpreende pela profundidade emocional.	2024-11-01 03:24:29-03
981	53	1	2	\N	2025-08-16 21:56:38-03
981	50	1	1	\N	2025-05-11 00:02:42-03
981	54	1	4	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-04-12 13:54:40-03
982	54	1	3	O desenvolvimento dos personagens é um dos pontos fortes.	2024-12-20 11:31:00-03
982	97	1	2	Uma leitura rápida, porém cheia de significado.	2025-08-31 13:21:45-03
982	53	1	3	O livro traz boas reflexões e personagens bem construídos.	2024-02-08 06:36:28-03
983	39	1	1	A construção do universo é detalhada e muito bem feita.	2025-04-11 21:36:00-03
983	42	1	1	Um livro que entretém e faz pensar ao mesmo tempo.	2024-09-10 18:15:30-03
983	63	1	4	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-07-24 20:05:36-03
984	30	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-05-31 15:11:34-03
984	40	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-09-26 04:57:40-03
984	13	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-08-10 15:39:18-03
985	66	1	2	Uma leitura rápida, porém cheia de significado.	2024-11-08 02:15:15-03
985	76	1	3	\N	2024-08-25 01:28:29-03
985	35	1	1	\N	2024-08-29 23:31:46-03
986	29	1	1	A trama é inteligente e conduzida com bastante habilidade.	2024-11-20 04:49:48-03
986	60	1	3	\N	2025-08-02 07:56:17-03
986	9	1	4	\N	2024-08-18 15:42:02-03
987	84	1	4	A obra aborda temas importantes de maneira leve e acessível.	2025-07-20 13:17:13-03
987	43	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2025-10-30 19:32:07-03
987	113	1	4	A trama é inteligente e conduzida com bastante habilidade.	2024-12-23 10:44:27-03
988	10	1	1	A construção do universo é detalhada e muito bem feita.	2024-02-22 17:25:02-03
988	36	1	4	\N	2025-02-06 21:38:19-03
988	67	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2024-08-12 10:07:56-03
989	7	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-08-22 04:48:57-03
989	9	1	2	\N	2025-06-04 23:52:15-03
989	105	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2024-07-26 00:51:02-03
990	90	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2025-09-24 02:23:41-03
990	83	1	2	Um livro que entretém e faz pensar ao mesmo tempo.	2024-02-12 18:49:43-03
990	85	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2025-02-12 14:34:52-03
991	101	1	1	O desenvolvimento dos personagens é um dos pontos fortes.	2024-06-05 19:43:54-03
991	43	1	4	Uma obra que surpreende pela profundidade emocional.	2024-03-09 02:33:10-03
991	83	1	1	\N	2024-03-15 01:30:16-03
992	108	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-03-01 11:09:16-03
992	14	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-03-04 08:09:41-03
992	124	1	3	A narrativa é fluida e prende a atenção do início ao fim.	2024-11-04 01:48:57-03
993	59	1	1	Uma narrativa sensível, com ótimas descrições e atmosfera marcante.	2024-07-09 01:47:49-03
993	101	1	2	Uma leitura rápida, porém cheia de significado.	2024-05-07 14:29:10-03
993	82	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-10-05 14:44:36-03
994	21	1	5	A trama é inteligente e conduzida com bastante habilidade.	2025-03-11 15:28:27-03
994	63	1	4	Uma história cativante, com momentos tocantes e bem estruturados.	2025-02-24 08:31:57-03
994	48	1	3	A escrita é agradável e os temas foram trabalhados de maneira consistente.	2024-11-22 00:51:08-03
995	99	1	5	Um livro que entretém e faz pensar ao mesmo tempo.	2024-08-10 09:31:03-03
995	92	1	3	\N	2024-04-15 21:59:44-03
995	66	1	1	\N	2024-04-18 22:38:14-03
996	5	1	5	A obra aborda temas importantes de maneira leve e acessível.	2024-05-12 23:06:03-03
996	103	1	1	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2024-02-24 04:27:03-03
996	32	1	5	Uma obra que surpreende pela profundidade emocional.	2024-08-16 06:01:07-03
997	5	1	5	\N	2025-10-24 16:42:01-03
997	50	1	5	O desenvolvimento dos personagens é um dos pontos fortes.	2023-11-16 14:59:54-03
997	4	1	3	\N	2024-08-31 09:16:06-03
998	101	1	4	\N	2025-06-10 18:10:01-03
998	28	1	2	Uma história cativante, com momentos tocantes e bem estruturados.	2025-09-02 08:15:39-03
998	85	1	5	Uma história cativante, com momentos tocantes e bem estruturados.	2023-12-12 20:05:20-03
999	75	1	2	Uma leitura envolvente, com ritmo bem construído e reflexões interessantes.	2025-02-02 14:45:17-03
999	57	1	3	\N	2024-04-30 05:57:35-03
999	30	1	4	\N	2025-10-23 20:32:29-03
1000	81	1	5	\N	2024-06-07 12:53:57-03
1000	84	1	4	A construção do universo é detalhada e muito bem feita.	2024-06-27 07:21:49-03
1000	120	1	1	Gostei especialmente do final, que foi impactante e bem conduzido.	2025-09-02 18:37:18-03
\.


--
-- Data for Name: Livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Livro" ("idLivro", titulo, autor, genero, ano) FROM stdin;
1	Pride and Prejudice                                                                                                                                   	Jane Austen                                                                                         	Romance                                           	1813
2	To Kill a Mockingbird                                                                                                                                 	Harper Lee                                                                                          	Ficção                                            	1960
3	1984                                                                                                                                                  	George Orwell                                                                                       	Distopia                                          	1949
4	The Great Gatsby                                                                                                                                      	F. Scott Fitzgerald                                                                                 	Ficção                                            	1925
5	Moby Dick                                                                                                                                             	Herman Melville                                                                                     	Aventura                                          	1851
6	War and Peace                                                                                                                                         	Leo Tolstoy                                                                                         	Ficção histórica                                  	1869
7	Crime and Punishment                                                                                                                                  	Fyodor Dostoevsky                                                                                   	Ficção filosófica                                 	1866
8	The Catcher in the Rye                                                                                                                                	J.D. Salinger                                                                                       	Ficção                                            	1951
9	The Hobbit                                                                                                                                            	J.R.R. Tolkien                                                                                      	Fantasia                                          	1937
10	The Lord of the Rings                                                                                                                                 	J.R.R. Tolkien                                                                                      	Fantasia                                          	1954
11	Brave New World                                                                                                                                       	Aldous Huxley                                                                                       	Distopia                                          	1932
12	Fahrenheit 451                                                                                                                                        	Ray Bradbury                                                                                        	Distopia                                          	1953
13	Anna Karenina                                                                                                                                         	Leo Tolstoy                                                                                         	Drama                                             	1878
14	The Odyssey                                                                                                                                           	Homer                                                                                               	Épico                                             	\N
15	The Iliad                                                                                                                                             	Homer                                                                                               	Épico                                             	\N
16	The Stranger                                                                                                                                          	Albert Camus                                                                                        	Ficção filosófica                                 	1942
17	Don Quixote                                                                                                                                           	Miguel de Cervantes                                                                                 	Aventura                                          	1605
18	One Hundred Years of Solitude                                                                                                                         	Gabriel García Márquez                                                                              	Realismo mágico                                   	1967
19	The Brothers Karamazov                                                                                                                                	Fyodor Dostoevsky                                                                                   	Filosofia                                         	1880
20	The Divine Comedy                                                                                                                                     	Dante Alighieri                                                                                     	Poesia épica                                      	1320
21	Les Misérables                                                                                                                                        	Victor Hugo                                                                                         	Romance histórico                                 	1862
22	The Count of Monte Cristo                                                                                                                             	Alexandre Dumas                                                                                     	Aventura                                          	1844
23	Wuthering Heights                                                                                                                                     	Emily Brontë                                                                                        	Romance gótico                                    	1847
24	Jane Eyre                                                                                                                                             	Charlotte Brontë                                                                                    	Romance                                           	1847
25	Great Expectations                                                                                                                                    	Charles Dickens                                                                                     	Ficção                                            	1861
26	A Tale of Two Cities                                                                                                                                  	Charles Dickens                                                                                     	Ficção histórica                                  	1859
27	David Copperfield                                                                                                                                     	Charles Dickens                                                                                     	Ficção                                            	1850
28	The Picture of Dorian Gray                                                                                                                            	Oscar Wilde                                                                                         	Ficção gótica                                     	1890
29	Dracula                                                                                                                                               	Bram Stoker                                                                                         	Horror                                            	1897
30	Frankenstein                                                                                                                                          	Mary Shelley                                                                                        	Horror                                            	1818
31	The Grapes of Wrath                                                                                                                                   	John Steinbeck                                                                                      	Ficção                                            	1939
32	East of Eden                                                                                                                                          	John Steinbeck                                                                                      	Ficção                                            	1952
33	Of Mice and Men                                                                                                                                       	John Steinbeck                                                                                      	Ficção                                            	1937
34	The Old Man and the Sea                                                                                                                               	Ernest Hemingway                                                                                    	Ficção                                            	1952
35	For Whom the Bell Tolls                                                                                                                               	Ernest Hemingway                                                                                    	Ficção                                            	1940
36	The Sun Also Rises                                                                                                                                    	Ernest Hemingway                                                                                    	Ficção                                            	1926
37	A Farewell to Arms                                                                                                                                    	Ernest Hemingway                                                                                    	Ficção                                            	1929
38	The Sound and the Fury                                                                                                                                	William Faulkner                                                                                    	Ficção                                            	1929
39	As I Lay Dying                                                                                                                                        	William Faulkner                                                                                    	Ficção                                            	1930
40	The Metamorphosis                                                                                                                                     	Franz Kafka                                                                                         	Ficção surreal                                    	1915
41	The Trial                                                                                                                                             	Franz Kafka                                                                                         	Ficção                                            	1925
42	The Castle                                                                                                                                            	Franz Kafka                                                                                         	Ficção                                            	1926
43	The Alchemist                                                                                                                                         	Paulo Coelho                                                                                        	Fábula                                            	1988
44	Blindness                                                                                                                                             	José Saramago                                                                                       	Ficção                                            	1995
45	Baltasar and Blimunda                                                                                                                                 	José Saramago                                                                                       	Romance                                           	1982
46	The Gospel According to Jesus Christ                                                                                                                  	José Saramago                                                                                       	Romance                                           	1991
47	The Name of the Rose                                                                                                                                  	Umberto Eco                                                                                         	Mistério                                          	1980
48	It                                                                                                                                                    	Stephen King                                                                                        	Horror                                            	1986
49	The Shining                                                                                                                                           	Stephen King                                                                                        	Horror                                            	1977
50	Carrie                                                                                                                                                	Stephen King                                                                                        	Horror                                            	1974
51	Misery                                                                                                                                                	Stephen King                                                                                        	Suspense                                          	1987
52	Pet Sematary                                                                                                                                          	Stephen King                                                                                        	Horror                                            	1983
53	The Stand                                                                                                                                             	Stephen King                                                                                        	Fantasia                                          	1978
54	Dune                                                                                                                                                  	Frank Herbert                                                                                       	Ficção científica                                 	1965
55	Foundation                                                                                                                                            	Isaac Asimov                                                                                        	Ficção científica                                 	1951
56	I, Robot                                                                                                                                              	Isaac Asimov                                                                                        	Ficção científica                                 	1950
57	Neuromancer                                                                                                                                           	William Gibson                                                                                      	Cyberpunk                                         	1984
58	Snow Crash                                                                                                                                            	Neal Stephenson                                                                                     	Cyberpunk                                         	1992
59	Do Androids Dream of Electric Sheep?                                                                                                                  	Philip K. Dick                                                                                      	Ficção científica                                 	1968
60	Ubik                                                                                                                                                  	Philip K. Dick                                                                                      	Ficção científica                                 	1969
61	The Man in the High Castle                                                                                                                            	Philip K. Dick                                                                                      	Distopia                                          	1962
62	The Left Hand of Darkness                                                                                                                             	Ursula K. Le Guin                                                                                   	Ficção científica                                 	1969
63	A Wizard of Earthsea                                                                                                                                  	Ursula K. Le Guin                                                                                   	Fantasia                                          	1968
64	The Dispossessed                                                                                                                                      	Ursula K. Le Guin                                                                                   	Ficção científica                                 	1974
65	Harry Potter and the Sorcerer's Stone                                                                                                                 	J.K. Rowling                                                                                        	Fantasia                                          	1997
66	Harry Potter and the Chamber of Secrets                                                                                                               	J.K. Rowling                                                                                        	Fantasia                                          	1998
67	Harry Potter and the Prisoner of Azkaban                                                                                                              	J.K. Rowling                                                                                        	Fantasia                                          	1999
68	Harry Potter and the Goblet of Fire                                                                                                                   	J.K. Rowling                                                                                        	Fantasia                                          	2000
69	Harry Potter and the Order of the Phoenix                                                                                                             	J.K. Rowling                                                                                        	Fantasia                                          	2003
70	Harry Potter and the Half-Blood Prince                                                                                                                	J.K. Rowling                                                                                        	Fantasia                                          	2005
71	Harry Potter and the Deathly Hallows                                                                                                                  	J.K. Rowling                                                                                        	Fantasia                                          	2007
72	The Hunger Games                                                                                                                                      	Suzanne Collins                                                                                     	Distopia                                          	2008
73	Catching Fire                                                                                                                                         	Suzanne Collins                                                                                     	Distopia                                          	2009
74	Mockingjay                                                                                                                                            	Suzanne Collins                                                                                     	Distopia                                          	2010
75	The Maze Runner                                                                                                                                       	James Dashner                                                                                       	Distopia                                          	2009
76	Divergent                                                                                                                                             	Veronica Roth                                                                                       	Distopia                                          	2011
77	Insurgent                                                                                                                                             	Veronica Roth                                                                                       	Distopia                                          	2012
78	Allegiant                                                                                                                                             	Veronica Roth                                                                                       	Distopia                                          	2013
79	The Fault in Our Stars                                                                                                                                	John Green                                                                                          	Romance                                           	2012
80	Looking for Alaska                                                                                                                                    	John Green                                                                                          	Drama                                             	2005
81	Paper Towns                                                                                                                                           	John Green                                                                                          	Ficção                                            	2008
82	The Notebook                                                                                                                                          	Nicholas Sparks                                                                                     	Romance                                           	1996
83	A Walk to Remember                                                                                                                                    	Nicholas Sparks                                                                                     	Romance                                           	1999
84	Message in a Bottle                                                                                                                                   	Nicholas Sparks                                                                                     	Romance                                           	1998
85	The Da Vinci Code                                                                                                                                     	Dan Brown                                                                                           	Suspense                                          	2003
86	Angels & Demons                                                                                                                                       	Dan Brown                                                                                           	Suspense                                          	2000
87	Inferno                                                                                                                                               	Dan Brown                                                                                           	Suspense                                          	2013
88	Digital Fortress                                                                                                                                      	Dan Brown                                                                                           	Suspense                                          	1998
89	The Girl with the Dragon Tattoo                                                                                                                       	Stieg Larsson                                                                                       	Suspense                                          	2005
90	The Girl Who Played with Fire                                                                                                                         	Stieg Larsson                                                                                       	Suspense                                          	2006
91	The Girl Who Kicked the Hornet's Nest                                                                                                                 	Stieg Larsson                                                                                       	Suspense                                          	2007
92	The Handmaid's Tale                                                                                                                                   	Margaret Atwood                                                                                     	Distopia                                          	1985
93	Oryx and Crake                                                                                                                                        	Margaret Atwood                                                                                     	Ficção científica                                 	2003
94	The Blind Assassin                                                                                                                                    	Margaret Atwood                                                                                     	Ficção                                            	2000
95	Life of Pi                                                                                                                                            	Yann Martel                                                                                         	Aventura                                          	2001
96	The Kite Runner                                                                                                                                       	Khaled Hosseini                                                                                     	Drama                                             	2003
97	A Thousand Splendid Suns                                                                                                                              	Khaled Hosseini                                                                                     	Drama                                             	2007
98	And the Mountains Echoed                                                                                                                              	Khaled Hosseini                                                                                     	Drama                                             	2013
99	The Book Thief                                                                                                                                        	Markus Zusak                                                                                        	Drama                                             	2005
100	The Road                                                                                                                                              	Cormac McCarthy                                                                                     	Pós-apocalíptico                                  	2006
101	No Country for Old Men                                                                                                                                	Cormac McCarthy                                                                                     	Suspense                                          	2005
102	Blood Meridian                                                                                                                                        	Cormac McCarthy                                                                                     	Ficção                                            	1985
103	Beloved                                                                                                                                               	Toni Morrison                                                                                       	Drama                                             	1987
104	Song of Solomon                                                                                                                                       	Toni Morrison                                                                                       	Ficção                                            	1977
105	Sula                                                                                                                                                  	Toni Morrison                                                                                       	Ficção                                            	1973
106	The Color Purple                                                                                                                                      	Alice Walker                                                                                        	Drama                                             	1982
107	The Bell Jar                                                                                                                                          	Sylvia Plath                                                                                        	Drama                                             	1963
108	Mrs Dalloway                                                                                                                                          	Virginia Woolf                                                                                      	Ficção                                            	1925
109	To the Lighthouse                                                                                                                                     	Virginia Woolf                                                                                      	Ficção                                            	1927
110	Orlando                                                                                                                                               	Virginia Woolf                                                                                      	Ficção                                            	1928
111	Middlemarch                                                                                                                                           	George Eliot                                                                                        	Ficção                                            	1871
112	The Secret Garden                                                                                                                                     	Frances Hodgson Burnett                                                                             	Infantil                                          	1911
113	Little Women                                                                                                                                          	Louisa May Alcott                                                                                   	Romance                                           	1868
114	The Call of the Wild                                                                                                                                  	Jack London                                                                                         	Aventura                                          	1903
115	White Fang                                                                                                                                            	Jack London                                                                                         	Aventura                                          	1906
116	Lolita                                                                                                                                                	Vladimir Nabokov                                                                                    	Ficção                                            	1955
117	The Godfather                                                                                                                                         	Mario Puzo                                                                                          	Crime                                             	1969
118	The Silence of the Lambs                                                                                                                              	Thomas Harris                                                                                       	Suspense                                          	1988
119	The Exorcist                                                                                                                                          	William Peter Blatty                                                                                	Horror                                            	1971
120	A Clockwork Orange                                                                                                                                    	Anthony Burgess                                                                                     	Distopia                                          	1962
121	Slaughterhouse-Five                                                                                                                                   	Kurt Vonnegut                                                                                       	Ficção                                            	1969
122	The Outsiders                                                                                                                                         	S.E. Hinton                                                                                         	Drama                                             	1967
123	The Giver                                                                                                                                             	Lois Lowry                                                                                          	Distopia                                          	1993
124	Ender's Game                                                                                                                                          	Orson Scott Card                                                                                    	Ficção científica                                 	1985
125	The Wind-Up Bird Chronicle                                                                                                                            	Haruki Murakami                                                                                     	Ficção                                            	1994
126	Kafka on the Shore                                                                                                                                    	Haruki Murakami                                                                                     	Ficção surreal                                    	2002
\.


--
-- Data for Name: Pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pessoa" ("idPessoa", nome, telefone, email, senha) FROM stdin;
1	Mariah Aparecida                                                                                    	\N	nina76@example.com                                	345e9d789b67bf069358d572daaa8e0efc9762c1c966ae027352419ff4b39de1
2	Luiz Gustavo Lopes                                                                                  	\N	nicolas87@example.com                             	9b1ac863cd2f68dc041eb078e94fc0c3f0a787e589064e25a45b9ff6d896f8ac
3	Melissa Borges                                                                                      	\N	diasnicole@example.com                            	2d86566d1aa776261bbff425c2bd3984b084e9acb58a0e8b2997d4552a85c6a3
4	Joana Melo                                                                                          	\N	borgesjose-pedro@example.org                      	2de9a8f7c53412ce1aea17ba7395085ca1f781cd9bf3a54a1e10d54e859f9f7e
5	Ryan Pastor                                                                                         	\N	mateus30@example.net                              	3e47739c2da2f4f572118b7a31d8965691c0c6492b9a44b97424bc18a2c94c3d
6	Bárbara Gonçalves                                                                                   	\N	freitasigor@example.org                           	1fd50a6fbf9c07712ca2d90bad5dfd34ffc31d66a5561b2b460f736f4e30c310
7	Matteo Costa                                                                                        	\N	elisa79@example.org                               	1008987f6434aabe0b6c7fd3ca62e9ac204dcf329b4ca8e755b93cf7dcab86c1
8	Anthony Gabriel Marques                                                                             	\N	fariascaleb@example.net                           	738078a43e0ef9a8656006d907f943764c3ca596c0585248fe72c14f56b96cc2
9	Henry Gabriel Porto                                                                                 	\N	tgarcia@example.net                               	cc2175082d9139bb3163d76244e4c3fb5501756d5ddcea5c519247faf2891465
10	Ana Julia Leão                                                                                      	\N	agathaporto@example.org                           	39b0432ce9d4a242187102a477977e6bec6b25aa2104b5da527300df6cadd0f2
11	Anna Liz Almeida                                                                                    	\N	marcela14@example.org                             	52b760c53f9d5d14bdecdb7607b706d1746099140e1c6339f890b0634a9f514a
12	Dra. Natália Porto                                                                                  	\N	ifreitas@example.org                              	169fd6a1d6d3971f59cfcd92e3328bf52a22103d2d9447e0493a72eeee4b85a0
13	Isabella Aragão                                                                                     	\N	luiz-henrique81@example.com                       	6a52a6d9cfe629186c5d078152de2acfb448d6bac28feccac5383168ec2e24f8
14	Aurora Azevedo                                                                                      	\N	costapedro-miguel@example.org                     	c1bce77128f853144a38cc5a5c30f94c09190c1712c8b58b83a0bc30d8df9805
15	Gabriela Campos                                                                                     	\N	qgoncalves@example.org                            	7459d2965a680651efeadb13424f56512cf048a4952fae3a23527a396758da1a
16	Hellena Albuquerque                                                                                 	\N	anna-liz50@example.net                            	fd8f7712d96094dea94ffe7473d0357cae1e8eaa74f69c20d515f9677bd9a571
17	Maria Fernanda Montenegro                                                                           	\N	gmoura@example.org                                	f9e5c131c3091e7272e5d583a2132a6cebc17bab47d6cd00bbbfc8f8e1abd765
18	Fernando da Rosa                                                                                    	\N	brenda17@example.com                              	5bbd644cb9f87abf77cd04fe02d0b66f5968a8837a2031f4943c194f11c8db34
19	Ravi Lucca Gomes                                                                                    	\N	garagao@example.com                               	40ee9610006262dc3a8f75b14f38cdde23e450cd8a6f3228ef5c882f1199f6fd
20	Laís Viana                                                                                          	\N	hellenada-rocha@example.net                       	4a8c12c382710e5f4c38fe44692027ecddfbd75ce4bb3747d650a2b8a24fcf77
21	Caleb Vasconcelos                                                                                   	\N	tmontenegro@example.org                           	f2969ba0cb2fedeb927ffcc6909e5ed8669e4bf54d99c82ff3d40914ce082792
22	Davi Fogaça                                                                                         	\N	ferreiracecilia@example.org                       	3596576ecdff5d3feec93584d69caf51fff9f067df297716611c26e7946b3148
23	Davi Lucca Alves                                                                                    	\N	eloafarias@example.com                            	da06f8c42af38bcdf1713b03670c4ac3fa6adef8c4512392854776e6533190d5
24	Antônio Gonçalves                                                                                   	\N	sampaiodiogo@example.org                          	cd954020af34c2b7f21556dadc4c04269b5a54c15560eba0d997f0fd49c86b14
25	Ayla Cirino                                                                                         	\N	da-motahenry-gabriel@example.net                  	7e1be0cc8b6bb57b76a406e13b8d0ffa47cdaf1c311beed0ba8bb269e97ff6f3
26	Alana Cunha                                                                                         	\N	ian48@example.net                                 	0d0d60733b70c571db217b857e96a8ed3cc45a4de41de376ebc42546f2f9c861
27	José Fogaça                                                                                         	\N	matteo91@example.org                              	07725385e577f5767ca11af264348f4b5b8c07047dec3a27c23e5d0df81c03f1
28	João Vitor Macedo                                                                                   	\N	joao-guilherme21@example.net                      	33f9c061eba668303d89b04da7770d260de8100b4f6cbe0752c59c8e9745e89c
29	Luiz Gustavo Melo                                                                                   	\N	halbuquerque@example.org                          	e756272f4ee85f1283cd5965aecd218499683147b1822a5a17849591544d7e63
30	Eloá Farias                                                                                         	\N	rramos@example.com                                	26487dacc4ecb2a8c584e7e5b65bd7a1692c5a62dd48ec9a667e1582e489c45e
31	Francisco Fonseca                                                                                   	\N	souzaluiz-felipe@example.org                      	5ec5d5d44ecb32e747391587aebaa415f1ea2cd634bfc9c592c04cf5cee88ace
32	Helena Fernandes                                                                                    	\N	bryan00@example.org                               	1627fee29ec51c9d46e67d9c469384c8d203d870b6cbe803e61cafc8de61fc72
33	Vicente Aparecida                                                                                   	\N	emillybarros@example.org                          	0f665e964c67c9eda925c5195daafce447a9b54d706a91a2a1bdb4265bd53f02
34	Bruno da Costa                                                                                      	\N	teixeiraleandro@example.com                       	aa045c482cabbd3ccdf6599d637d1b07cc1b57139ffc300793c8b71e24528313
35	Sra. Melina Moraes                                                                                  	\N	onascimento@example.com                           	f7a9b7c02caea77918be324d495f544cf8358c16c3918700348e614d73ae7f33
36	Sr. Yago Ribeiro                                                                                    	\N	pedro-miguel31@example.net                        	ff3ef96f2d0fab5be23397d9f3e95ebca000c7535db6e1420e036d4be6ca5877
37	Hadassa da Costa                                                                                    	\N	ravi-luccateixeira@example.com                    	ea071ad2cf9bfa83abf782352a95b29342bab163508d94d46de2083f6032638d
38	Srta. Joana Carvalho                                                                                	\N	msantos@example.com                               	ee39aa69f6a38ba7de9f45fe450f536e1cd4d7a933fd42341cfe9e071cd535f0
39	Samuel Pires                                                                                        	\N	alvesrodrigo@example.org                          	f09477542f4adb65595d6de7427eaba58710ca329289f8059821a4fb09c30806
40	Nicole Teixeira                                                                                     	\N	nunesjoaquim@example.com                          	9b9f5668ee4c106b6917f50da3d0f2fbae65dfdca9eb849deb5be165b16e67f3
41	Paulo Peixoto                                                                                       	\N	pintomaria-cecilia@example.net                    	f0887b293e7b85ab9b3f838adba76977538d0571cf9702d78a1098c8fc4dcdca
42	Alice das Neves                                                                                     	\N	isis70@example.net                                	3d646e0a7d525338137c6fe04dcaa35dde855e0e53ba96fbacee7511658d4cb6
43	Gustavo Henrique Camargo                                                                            	\N	ryan98@example.net                                	351cb89e43f4d6ee2fe96a77f2c2ebd32509877edec167eff4d205dbbfad0a95
44	Luigi Albuquerque                                                                                   	\N	qrios@example.com                                 	b83d3152326b97b7aa86fc3cfacc48408f02e5b3b2a1c043cd41065f6a59e30a
45	José Pedro Nascimento                                                                               	\N	caroline36@example.org                            	49b7733269c57ac1c87579c37abf690d7635f26744570fa340ae4177911be9fc
46	Sara Almeida                                                                                        	\N	rodrigoda-mota@example.org                        	28017acc9c7edbb94b40e94fd856ee8a867571a9ad96d99ca44bf2c390a405c6
47	Arthur Monteiro                                                                                     	\N	teixeiratheodoro@example.org                      	6f2ce034f18601371ca942a482dc0b76a672c1c27eb1523a23c220a5bf19d3bc
48	Dr. André Azevedo                                                                                   	\N	henryrios@example.net                             	f5605589ff3f41278697ca4a1e124719263f31fcb60857ed5be633b4b4206b4b
49	Dra. Ana Clara Novais                                                                               	\N	wcirino@example.net                               	e0953cf8ab67140f6e7f1c5a05a32315ee0fff5c84588ab2df941c7e9888d8d7
50	Levi Barbosa                                                                                        	\N	maria-alicepimenta@example.org                    	d43bca5a28193b8973306c6b3a0f49f8189c5ef3e0beeaf3a82527073a35a097
51	Davi Luiz Dias                                                                                      	\N	cirinojose@example.org                            	f33bfc74c1e27484b7de274687d371fe363feda084967da6d6f9f6ba42c0a484
52	Emilly Alves                                                                                        	\N	mda-luz@example.com                               	1a4704aa2b7d978f444eefa0895f74093d1064bf00237c5012ce238f7c2bf0ae
53	Aylla Barros                                                                                        	\N	elisa17@example.org                               	da550e9e0189d56dfeb55851975a955ae4cccf2fa1cd41af1e66e16bf3ea380d
54	Henry Gabriel da Costa                                                                              	\N	bella23@example.com                               	1038b263357da7542f389eb7c463a39df877edd0e1482ea8b7db90629727f361
55	Mateus Viana                                                                                        	\N	leaoluiza@example.net                             	867b7f55ca86a3de9da965df8a8ad8cd2820e90552965df0463d800f227fa2ac
56	Ana Lívia da Cunha                                                                                  	\N	sara58@example.org                                	c6c91f4c3ea6f85e6c70a3787e51baa29b8f0754bd02aec36cb631a788b3dcec
57	Nicole Castro                                                                                       	\N	carolinamelo@example.com                          	1fbed599161b4aee2041f74728d0e77e453f47b53de6c9ceabaf6e54e454fee8
58	Ana Beatriz Rodrigues                                                                               	\N	yda-mata@example.net                              	a5cdccbbc358db5a2d16433d72e62da47349aad4b357a0b5aa5f1b08d5bc8f0f
59	Thales Fogaça                                                                                       	\N	bruna16@example.com                               	86db5f0e6c76d28eba7a7ecee25ba31645dec3483ab56815a27835f1598b1930
60	André Pacheco                                                                                       	\N	sampaionicolas@example.net                        	152ad61b06c3eebe1f73e40e4351a545bcf6470b8f7fe7cfc8d2c822a046d860
61	Ana Vitória Vasconcelos                                                                             	\N	benjamimramos@example.org                         	6d3285f8df61d6f04d56f67a8296f2cea1f4b7d811afcc61ecc34d8a3501f9de
62	Rhavi Pinto                                                                                         	\N	da-matanatalia@example.com                        	1d9bcd8e876c3594c4232faab54cee4a163ccbac9cf909e01cb0a0e241edd14b
63	Sr. Davi Miguel Ribeiro                                                                             	\N	riosjoao-guilherme@example.net                    	8b3e34b036b6cd8466b304c11cdb50bfaa31c66fdab403cae8835367a74a43e1
64	Dr. Caleb Barbosa                                                                                   	\N	lavinia35@example.com                             	b1a90c72f81664c38b29317d722b2629a93db7e0cce71b61e0dc253f6052b67a
65	Cauã Mendes                                                                                         	\N	isaque72@example.com                              	2b23eb5af1c1d1d211446fe75a2ce65a548f66b8518f4ef7d5d7b0b8a5906a33
66	Luiza Gonçalves                                                                                     	\N	lorenaaragao@example.net                          	8835ec3b026b61e4a05db708bc31abea73b7211eb6b7b696c9c51db9081e5ff2
67	Alexandre Moreira                                                                                   	\N	iazevedo@example.org                              	4cae5dcabfafd3e8cc4f65bb9e59e5a7a002527717698c81477e07c48b87b46c
68	João Gabriel Alves                                                                                  	\N	joao-gabrielgarcia@example.org                    	a8837ecc8106473783965e51553c4c9cbb473131798d1657026ba5eec3a57417
69	Pietro Silveira                                                                                     	\N	novaesjade@example.com                            	3fff400e6fa4bdc73f5e0632e1818d9df97dcc5dd00f68c49b0ed2821b189107
70	Lucas Gabriel Pinto                                                                                 	\N	maria-helenagomes@example.net                     	71cdf66f98982505a1485968881a2af5418d2ba050598440088b0bce30fc2ffb
71	Dra. Sabrina Ribeiro                                                                                	\N	lunnaandrade@example.org                          	afe041b6c5bcdddc7f3c9edfebd91f3d2498df37a061c80a99d43f43dacdcdbd
72	Evelyn Castro                                                                                       	\N	eduarda76@example.com                             	462b9b09dc7d5f69eb4d67fd197ed3daa9147ef070cc8401bcb71aed1a42c970
73	Alana Rios                                                                                          	\N	sofiaramos@example.com                            	bac3cd08dca1dd1536b62f569f5ce8feeed8562e1b9d330c90aaeb9fab91f80c
74	Joana Camargo                                                                                       	\N	oda-mota@example.com                              	cdb6acac1db42c8505e26f4e451010f8d81941a614a7ae52e4a5b0c3fb64d3ef
75	Arthur Campos                                                                                       	\N	cda-cruz@example.net                              	d7c858b38f3ad6b7de07dab3d7b8f059db4ba7e00a9e7ee43593a13159762b95
76	Maria Vitória Vieira                                                                                	\N	da-cunhagustavo-henrique@example.net              	0b9b8fb06fa758718504ed34df9a5cf6a97bdb35dbffa43b317141f01589971e
77	Gabriela Cunha                                                                                      	\N	idias@example.com                                 	5789f2202a1c6916d71f1b04399b2c881bc100e6110cb16b6c31537b6f7ecf06
78	Maria Luísa Campos                                                                                  	\N	pastormaria-fernanda@example.com                  	317eed40bfff438ff47e572ed98a0d5b5748a8cdb4daf496da4be1499f97c82e
79	Benjamin Viana                                                                                      	\N	rleao@example.net                                 	9c506e3e63b3d60af0daa87c2977f02443723406524b5977920e803f956ae1ef
80	Maria Sophia Campos                                                                                 	\N	melinada-paz@example.com                          	65ad3205e6e29e432c9670d1c182b383273807a39707e7746c9ffa03e04fb8b0
81	Davi Lucas Pacheco                                                                                  	\N	thalesmoura@example.com                           	072cf1dbb29f83ec559e05a5ad6395579a1af1d06dd4ca8139943db745ec2e5c
82	Sra. Milena Rocha                                                                                   	\N	julia56@example.com                               	5cd89d91967036a2cd609615f8a1bbf8f53be5fabd4c99b5ef8293c91d092f6e
83	Luiz Fernando Rios                                                                                  	\N	emanuelly48@example.net                           	865abb2bf58ad9d374c5abee3c7ad29d3e94663bc2aa4bdcc44895f096e5a569
84	Letícia Rocha                                                                                       	\N	marcos-viniciuslopes@example.org                  	b24ac07143904aaed5bae2f88cda807a347c278e1e821a0cf386fffb7f38fd40
85	Srta. Allana Costa                                                                                  	\N	da-cunhaalexandre@example.org                     	341dcee382489539bf62daf1335247b9c8664dd0ffa0b47c7987538bba67dc98
86	Apollo Vargas                                                                                       	\N	arthurpeixoto@example.net                         	942f1fb8784573138535da811d6984ebf1579b31d6da29d828f9ddd1d6f5007c
87	Catarina Montenegro                                                                                 	\N	leaoana-luiza@example.com                         	0e93d8b47ce286013f9647ba4d4770181969f0c4537892dc82c2c32027e8c1a8
88	Melissa Leão                                                                                        	\N	larissavargas@example.org                         	4adb8ee182514e9a829f2e4460364d9394d5b376762c46c7e1d7124809083cfa
89	Maria Isis Viana                                                                                    	\N	ualves@example.net                                	41c717f2f7290c8a8b2438a46702ebf2458446dd294845594409369e2698c8f3
90	Clara Novais                                                                                        	\N	oliverpastor@example.org                          	3bb1679c8cbb727495dc23442abc3165e9dd060d635dda6b819183406a1250ef
91	Sra. Clara Farias                                                                                   	\N	borgesesther@example.org                          	1043202930f9cb5841062965ff25fc414e86faec12bb4723318bbe702ca2f55c
92	Eduardo Andrade                                                                                     	\N	kramos@example.org                                	136a749eee401af4972c27dcfc9539428da4fb80286b7d17fc16736384ec59b0
93	Breno Melo                                                                                          	\N	freitasluara@example.net                          	0b51ad4e7de15028e7b457fb9085553a061e28a0d99ce2c6c249eaf87a7f8db0
94	Elisa Aparecida                                                                                     	\N	qmoura@example.org                                	2771d1dc21712c5cecb5d0d51b5f897c50af07535fce4f40045bc1a2330e138a
95	Isabela Freitas                                                                                     	\N	pda-rocha@example.org                             	1e8dc149bca0d219dfcbd096f690d17c86f561baa321cef3fbb45e13538cfdc5
96	Luiz Henrique Pereira                                                                               	\N	felipenogueira@example.com                        	3788fccbdcc441e81ab5669423fb5bc1611cf31049e610677064e6353f4ff321
97	Dra. Maria Isis Aragão                                                                              	\N	araujobruna@example.org                           	17f826b1fc5cbd5907c962fd7242d40cf891775d84172dfded833223557e252e
98	Dra. Aylla Nunes                                                                                    	\N	asafeaparecida@example.org                        	1d4fcd0f507c98bd9cb787d38833885bb5967b9db9e81317b63824ad42cdf6f3
99	Diogo Sousa                                                                                         	\N	nicolas12@example.net                             	d10d59b0eb33d6dc6e042736888225a9078ea6f9a10798684272f47c5a3a31c3
100	Agatha Leão                                                                                         	\N	joao-vitormendonca@example.net                    	6f0de956c58d7df6f6f78e0535d2637a5af9635e4d44b318aef5e38ba6338215
101	Erick Garcia                                                                                        	\N	pastorgabriel@example.net                         	45d91fbdde19e3833c8f289dab26df39c47fa7a3397d90322da48f31638146e1
102	Arthur Gabriel das Neves                                                                            	\N	wmoreira@example.net                              	5cfe57a738473e1a9252ad12860753904dfe76929ec0a2b2dde5021b6fe7fd3a
103	Carlos Eduardo Moraes                                                                               	\N	mathiasnovaes@example.net                         	de1e7f161965264adbdb255e57178636fc7bfeb376ad2fcc88b64f5558c6835b
104	André Casa Grande                                                                                   	\N	mariamelo@example.org                             	7e664c6e818ea00a87f1cbf0bf3611e653a96038fc1d5550f9acbf014a7580cf
105	Diego Moreira                                                                                       	\N	joao-vitor18@example.com                          	76d69ed5a09e442f98a28ec3d9205250c9ce8b8804cf2f3f4e8fdd9035cda360
106	Clarice Oliveira                                                                                    	\N	vda-luz@example.org                               	89b80adbaf5ddae5fae0b4544e9ccd8e2eb4f05720a5c3201cc497d0c8c3741b
107	Joana Sousa                                                                                         	\N	fernanda23@example.net                            	cbff398e112f0b1965e7b08618c7abc63c4c5637ffef7bfd071656b44f513d24
108	João Gabriel Pinto                                                                                  	\N	xoliveira@example.com                             	420b70f7e5aef1ca8291117847c341a81e11209172b59f23f2f317bffd0ca977
109	José Leão                                                                                           	\N	biancasilva@example.net                           	d341f85e43d25366923d523ece571533ea3c9f23736220df35ac1b323238a3ad
110	Stella Correia                                                                                      	\N	anthony-gabrielda-mata@example.org                	9bce65c6c68ef163fa3220fa50b5e6e019436e22a4a36aca5c97545de2219761
111	Srta. Luísa Jesus                                                                                   	\N	josueda-cruz@example.com                          	1a005340023f192a5724411577e225fd3c59bc583d77fda5f5395a2090e33ee9
112	Aylla Leão                                                                                          	\N	rochaana-carolina@example.net                     	83c374b87c07c5209f87c014423e68ff048082df645228677b146cb4a109dbd4
113	André Caldeira                                                                                      	\N	oliver48@example.org                              	3ab19c532d510e9e2c7c8c096f14de68ed513a8b1c5b0540e44507c46d00142d
114	Leonardo Barros                                                                                     	\N	qcostela@example.net                              	f2f4ebc426135c93d74ac9f2f51620df7882dbaf978018226023fcfa7a253c91
115	Enrico Cirino                                                                                       	\N	maria-eduardaduarte@example.net                   	4f7bbd0d398a962f75d00e445ea37855af574ccc2d7767095b2d802b1cea6625
116	Gael Henrique Nunes                                                                                 	\N	davi-luizmendonca@example.org                     	33ccea433ad9573f06da0d54728f1b77fad467df9404dc1188de7ec220db4415
117	Sra. Ana Luiza Andrade                                                                              	\N	ferreiragabrielly@example.net                     	ff244c17e503f56f26a235ed0e4dca2fe0e7b1d9f97ce940c80a35bac8d7521c
118	Maria Eduarda da Rosa                                                                               	\N	ppacheco@example.org                              	1a0a3b8ec8d3edfa9c4791b91a3093ac62781df2d51b1f74100141a95ae9ca0b
119	Anthony Rezende                                                                                     	\N	brocha@example.org                                	1562201bbd10ae44762aa545780db6c11e5dbc36d578a743df659d1fab138fcb
120	Laís Câmara                                                                                         	\N	tporto@example.net                                	4cb60de163928b9c0692476733bff1e1f41cd6dd3ab20911ef23a04e135cdefc
121	Breno Santos                                                                                        	\N	pereiraigor@example.org                           	a280e92027d10b4502d8960412fb26598119327f50417fde4c199d0e849546df
122	Marcos Vinicius Freitas                                                                             	\N	zoe64@example.org                                 	1776526ba71970d25765bac7afa97badb4c57f0be5360beb815cd3822d6d8c26
123	João Guilherme da Luz                                                                               	\N	brunocavalcanti@example.net                       	de7292bd6d86e83125bd768139e7021386b16844e882ce8e991af26f5606857c
124	Luísa da Conceição                                                                                  	\N	wandrade@example.com                              	6c2e16d4338e08e32bf9850d656e7ee9a7413a6be47ca973c3491ff6e2ddb000
125	Bruna Cavalcante                                                                                    	\N	kcosta@example.net                                	da4f26e61c04d68e84077715238de0a9bf6c1db49e12f70eeee606cca1e6e704
126	Lívia Ferreira                                                                                      	\N	igor06@example.com                                	868c8beda784a18064288862c707bcf6e7e331195e3e3a51c8e67ba8fd9b8497
127	Dra. Hadassa da Cunha                                                                               	\N	sampaioliam@example.net                           	8a43adc295ee9d21acc2461aaf24a6e594672bade3faa092a960a5230afdab3a
128	Theo Ramos                                                                                          	\N	laviniada-mata@example.net                        	444952e6cc1d4d139a0838d0f3b1cead97c329a3084c6314958f3481a6ee8367
129	Amanda Pereira                                                                                      	\N	otto46@example.org                                	065a0cc5dbb8e922205c3563503437c4bf4e4decdb230c0c6265865d2241da69
130	Matteo Nascimento                                                                                   	\N	das-nevesjose-pedro@example.net                   	f4e87913d428f32a839795904dfe094d942e04c95596432065a4d7bd54eb40c4
131	Brenda das Neves                                                                                    	\N	emanuelly20@example.net                           	0c81e76df862febc53a3a099618bf9027f86bf7bc0d29dfe4b969c0b1386d676
132	Manuela da Cruz                                                                                     	\N	maria-eduardacardoso@example.net                  	441cb15ce954206d7e0780f82d486aff22fce1dbaa773c91d6654a644f3d4f3f
133	Liz Porto                                                                                           	\N	luccanovais@example.org                           	c75c6ed2a1b0c3e50bac6cca56be01b906e43c11cc5ca41c9a8c036279a0e657
134	Carlos Eduardo Cunha                                                                                	\N	isis28@example.com                                	3a839f718f357a939d0ecf200cf64e7f7be6652d1922e55bbf56048955de61d5
135	Liz Marques                                                                                         	\N	carvalhocecilia@example.org                       	11a8c2628e112515d94c963a949c60b5628971dc2168bb45559cd41775d25e98
136	Antony Pinto                                                                                        	\N	yagocosta@example.net                             	32a9665634e70c595213717906e530569c122f130e285b1eff88a732d5719398
137	Srta. Rafaela Carvalho                                                                              	\N	barrosarthur-miguel@example.org                   	b13d2f94a0aa927e81d0ad4ab1648022a7f922cdd1cad252eefe409f89866cd0
138	Heloisa Nunes                                                                                       	\N	machadoantonio@example.com                        	52afcb9430de7809450ee7d3cedadd0b4877dfce61133d58cbea9354440170f4
139	Lívia Guerra                                                                                        	\N	arthur37@example.com                              	c1fe5c378359d1e271576d7f150855543d19cf92c921f609389325e660f9fd79
140	Camila Mendes                                                                                       	\N	luaracirino@example.org                           	a664fa54ae41e9e091dccb5a5650842de164290353bd0be33509e6c4136999a8
141	Laura Brito                                                                                         	\N	larissabrito@example.net                          	cc19433a899c75fb7b5f7a65bc3d3a3fa78364f7519427676744126af20088fe
142	Rodrigo Pereira                                                                                     	\N	pda-rosa@example.com                              	29165ac2c2b60b21aa167e7e5e07a8ec9135e253f8c437ca7fd6ebc93ea34c6c
143	Larissa Alves                                                                                       	\N	zalves@example.com                                	a6b0fbb3a2bf11a5deab7d171ac80a49521402297c96e24390b6123370ec4ed9
144	Otto Fernandes                                                                                      	\N	eloahpastor@example.org                           	5f7892d451238985b72301b7df778893f6a6b6552e42841d8480f24714b09df8
145	Renan Albuquerque                                                                                   	\N	zsilva@example.com                                	0a9debee7a883310a5261b88cec3b0ba6460c18d2d181a3ad1efeb0903aeffec
146	Mathias Jesus                                                                                       	\N	barbosatheo@example.net                           	b4fd521e1541b98104309d16a2e9ce4d104deb6f0797937db83c54a9dc5b3f8b
147	Gabriel Cavalcante                                                                                  	\N	qsa@example.org                                   	014b00934526819bb615611e2e45c39411871c7f538dd0423f9971fa3d5e21ee
148	Sr. Kaique Nunes                                                                                    	\N	clariceandrade@example.net                        	7eba9c5b75f288b3430f68aaa83f8f8da4242f9696edc26859b30c7235fedd28
149	Yan Caldeira                                                                                        	\N	aparecidaisabel@example.com                       	fabc9b05b16e8429ae0138c45a67b007cb61d5a807ed5315acd4be3c03f0dabe
150	Heitor Andrade                                                                                      	\N	isaqueda-rocha@example.com                        	6241a6aaaf3c815729a52705bd6ffca8bf018f1dcbc273f14a53f40ff338c234
151	Maria Cecília Aparecida                                                                             	\N	pedromoraes@example.com                           	6360130f0d185aa4ec0dd3a2d55175c7aecb02effca4b76a7b56e8fcd2bc3b25
152	Pedro Miguel Rios                                                                                   	\N	lara03@example.net                                	a6bd296d6344835eb7a704d6aa7a01a1c4e7f9ffadb182bef6ba5c24a5cd009b
153	Enzo Gabriel Ferreira                                                                               	\N	ialves@example.net                                	23e8cd9e966555f83b0bf1342dbea2b37e9dfc53339f73417be7b2d5141225fc
154	Josué Nascimento                                                                                    	\N	eduardomendes@example.org                         	c39aef763d577f012df94af8d326f1877f79dd404ff5a417d40631d093e98a76
155	Ana Luiza Martins                                                                                   	\N	davi-luizteixeira@example.org                     	723ca8548e8d52cd1dca5f45da00622d07dac18ad305fefabe9055a878e6a7d9
156	Clara da Rocha                                                                                      	\N	maria-vitoria83@example.com                       	67235dff2028a0dbaa885eec75a71f1a4e3dad2fff3cfd23a008129d0da7cefe
157	Sra. Laura Farias                                                                                   	\N	costelabryan@example.net                          	04c2af9f47765e76f14a13473b86a6938727b03c3bfb68a7f3fc877dee9045ed
158	Dr. Joaquim Fogaça                                                                                  	\N	elisa63@example.org                               	045ac61d686fa24d980af13921c2759435cb4c7cc96baf6a5122eaa4fc758d2a
159	Pedro Dias                                                                                          	\N	asafe17@example.com                               	0e502fa390f6408c4114c7f9e9ed4499646959b1fbdc53d2975e429fb605acd6
160	Luara Rezende                                                                                       	\N	gpimenta@example.org                              	17bbd60ae7a5ff01f069319e695e98bb5895b405a72c5c084a79d01d1767b89f
161	Giovanna Cardoso                                                                                    	\N	ana-beatriz69@example.net                         	a6dff3db9721ec74528ce8286de1cde5e71abb92755373de563b5f7d693867f9
162	Sra. Manuela Souza                                                                                  	\N	caldeirabella@example.net                         	d10f8c5e5686414c00e4cbe830a71440177633d079b67281af4c99f7685353aa
163	Melissa Mendes                                                                                      	\N	bianca09@example.net                              	2dbb70926b463f2b134fab2611dac5d6f6ab471b8d63e7ca616dc72ec526703c
164	José Fonseca                                                                                        	\N	eloah06@example.net                               	814abbddc2e88af39a5eeff2d50b73a665eb7eabf6e72263cfc8c6d32663b0b4
165	Pietro Castro                                                                                       	\N	ceciliada-conceicao@example.org                   	73695f0152abf5bc4079710a8d2b94f2e948e34e581c1ff7bbeac5c6814ce5dc
166	Anthony da Cunha                                                                                    	\N	qmoura@example.net                                	d289c9464c409db5ddfd3346f63dd0b40bf1c8cd3aa3012262ec4ae3bbdbb827
167	Dra. Luara Cassiano                                                                                 	\N	marinanogueira@example.com                        	14c6bc3b8e3dc8a0fe23bc048b9921122c9d6cd66d2389fda79df3611152c979
168	Vitor Castro                                                                                        	\N	emanuelcarvalho@example.org                       	6819ccf3d1916d5a7a966f59f0867ed3ce3f0e036ac637db68f38230a705f002
169	Isis Cassiano                                                                                       	\N	sabrinacirino@example.net                         	f069805079843c45d8153b7e2e45ea9e4418c938cda0a30aaa6268c811f98472
170	Dr. João Felipe Ribeiro                                                                             	\N	kaique63@example.org                              	3fddc9ea6e52e83fcf49155bed4f271ea4a8300ab9f5f1f232f5e9b36bb31eb3
171	Ian Guerra                                                                                          	\N	mmonteiro@example.com                             	38815a4911b535763ce52946880f6bc445fa1f9ec4618dc88d1a43c802f290eb
172	Arthur Mendonça                                                                                     	\N	vitor-hugocostela@example.com                     	d212a3ba560889b3a175d8e47b0b72708b77ed7b19d633188eca825508c49516
173	Maria Cecília Rocha                                                                                 	\N	tpimenta@example.org                              	f500f9fe19e381110990945babdbc8704bdaa7996e96437c9ade68b337bb507c
174	Vinicius da Rocha                                                                                   	\N	tcaldeira@example.com                             	65c42b38a68d2f6c5dbe090a2e5c6a5ecf23d4f2d4a368604e3030c50e10328e
175	Dr. Cauê Novais                                                                                     	\N	alvescarolina@example.net                         	e905d4111c166178d7b6356aad372c797cbcf167196238dfcaf2d139914a0f2a
176	Marcelo Farias                                                                                      	\N	tnogueira@example.org                             	5d7e4e38524b73eda3dd1abd612ef76d72b01738a126b6e259c1d8f145886389
177	Enzo Gabriel Cunha                                                                                  	\N	mlopes@example.org                                	2eef496813837c1792d77687c532967985bd5980304f23e425f8581d3ab07848
178	Beatriz Viana                                                                                       	\N	britobeatriz@example.com                          	20390b441c6afe088780b27a9b0d06338fd3145b356e1f983beca6cc8b121103
179	Lucas Gabriel Cavalcanti                                                                            	\N	gustavo77@example.org                             	7c94767c2fc46bcf8ef97f1e540c9349415477ca694c22780345e84ead5e0810
180	Leandro Machado                                                                                     	\N	isabelacamara@example.com                         	ba7ef07649da1509d2084a0eb2b763d1271e96336fcb7a1a720c14bb0a0232a9
181	Srta. Maitê Aparecida                                                                               	\N	ferreiraisaac@example.net                         	af0507417a1fbf99217803db477b76516a4674b94d2516dbe53876a3e0630fbe
182	Vicente Moura                                                                                       	\N	obarbosa@example.org                              	f9242d5faddd0fd56925d84cbe182667b735c774775968615545f574da313812
183	Leandro Gomes                                                                                       	\N	drios@example.net                                 	b2706b74468872cf2040c936ced895f47d98786bcf61e131828bde943f595384
184	Kevin da Rosa                                                                                       	\N	gustavoda-cruz@example.com                        	8e5e0fd0005c29e5175a8be4c0e46f86a0fdbb67a7901543421cc4dfe99a7a0a
185	Fernanda Alves                                                                                      	\N	danteleao@example.com                             	e341f392d46154f12335499e534d85b5fdd94394b01ef51772174404a3c55d92
186	Isadora Porto                                                                                       	\N	da-matajuan@example.net                           	0c394d72efe4ccce7faded8d3491bba54dd65b6b34cca77f1ddd2df5981141a2
187	Sophia da Conceição                                                                                 	\N	gabriela06@example.com                            	384245a4333768b28b3bfd0e5cd9ae5ba2fc35a58f198b8d64c08ea96e8bd844
188	Ester Caldeira                                                                                      	\N	bvasconcelos@example.com                          	fa22b94df21d701b06979b809b69d2206ef5eb3124cb5dcfa33331195ab32e12
189	Rafael Silveira                                                                                     	\N	agatha85@example.com                              	ec4869e944709b35d6a35c18076b7114136070e902b0cc543d059d2339714988
190	Sra. Natália Vieira                                                                                 	\N	souzaguilherme@example.net                        	0209206fd8e78ae6cac76522b2bb53086148a19ad292c67966270011731115f0
191	Dra. Sofia Jesus                                                                                    	\N	valentinaandrade@example.net                      	57bb90c65c72a44935dfda301aca8807af5a4433cd6df3c663427ea83cc62922
192	Luiz Otávio Leão                                                                                    	\N	vitor-gabrielvargas@example.com                   	ec12d2748167c3dd1908e0d57b1f675848cf9332cf0efd99a3c8b6e0c7157c78
193	Rael da Conceição                                                                                   	\N	barrosravi@example.com                            	c89134353c170e8c66fb21aabf9de55ecf4c16e5dce647ccc3e7e04a618684f9
194	Luiz Henrique Ribeiro                                                                               	\N	tcorreia@example.com                              	185d1f10272af5ed6f01ee0f896e3f9f1fb2f7718781a6744c5c2dcdc2d48341
195	Sr. Bruno Nunes                                                                                     	\N	maria-alice93@example.net                         	6330ccb668aaad806bc3ef4b9b802bc89d483b1402e241af958bf30b8881a053
196	Gustavo Henrique Sá                                                                                 	\N	wmartins@example.com                              	6a57481e0e349599f2c3ac7e6dc018f5fec0fba98da35128409bf7a764abe029
197	Rafaela da Mota                                                                                     	\N	anthonyramos@example.com                          	62b06244dd981f79860d0c0bf88bed4fc882b5bf38d0b76ba8c70691924b43dc
198	Eduarda Cunha                                                                                       	\N	pedro-lucasnogueira@example.net                   	61254b5ae9ad6dd3c5af6f1295c9b74d9f4671566ae312da474b757f367ef9e7
199	Sra. Stephany Rezende                                                                               	\N	sophierocha@example.net                           	d357ed2a7b8fb7bed4ba182d69975eaaee8ec862c9fc8f2aa3b6eb5fcba41ab1
200	João Gabriel Ribeiro                                                                                	\N	ravy00@example.org                                	2962e4dba524efc58d67d2492ab1aa6dcf59c0692ccb278d81e18ac010e9e256
201	Bárbara Freitas                                                                                     	\N	vitor50@example.org                               	e26b1a5309a8faf23a09457173114a845bb4eef793bf4e80c828dcbbae6cb5c3
202	Maria Alice Cunha                                                                                   	\N	kpastor@example.org                               	198a1816b71985f865c5d3351846a9b1b031a79cd6ce535efbbfb485675a00a0
203	Mariana Freitas                                                                                     	\N	joaofreitas@example.com                           	3132f58ef6c21af80a309b559855750ca20057208f1d8acb53412d5f0b301d89
204	Enzo Fogaça                                                                                         	\N	vleao@example.com                                 	1ed6a17b040b9f5c99e251d14603ef1bdbd7f302bc3268861b2f8018b56bb2f7
205	Sr. Calebe Sampaio                                                                                  	\N	jporto@example.net                                	ab63924d9f0eb74127db3853c0daca803d7df01d00e80fc32111110639aaf1d2
206	Pedro Novaes                                                                                        	\N	maria-alicemelo@example.net                       	fe0ab6dfb2cfa840175bddd380bb0488c58c347439bec4c3bd3c8da75cfbc909
207	Enzo Peixoto                                                                                        	\N	maria-eduardacavalcanti@example.com               	c7c09d87be35e7142cf6d11cae1b5154ab8a8ff1d5d62f5b51d51bc7dcefda11
208	Pietra da Mata                                                                                      	\N	wcamara@example.org                               	66f9384941947ec634aa2df17b1c517c1f3ff9954b8fe2a589b4a563b400e528
209	Helena Azevedo                                                                                      	\N	isabella26@example.net                            	1cc9cfbdec703e62af426adc62b3ca3894bfe8c51a921c5143e0938f964194e9
210	Mariah Dias                                                                                         	\N	almeidaoliver@example.net                         	098290d5345bc899888f35c61782f32b56240da9c007aaa515d0134635347129
211	Leandro Macedo                                                                                      	\N	miguel88@example.org                              	38bd6bc9fd5af112ecbbcb48d620ce4d4855caf5c41be8e840af9d8e65f98cc6
212	Lorenzo Monteiro                                                                                    	\N	luna11@example.net                                	151e827574d391e7e1d2b3ea228e472fc47544d2e140738272537675381b4d90
213	Mariana Câmara                                                                                      	\N	das-nevesolivia@example.net                       	edcafcb6aba0aa400d73677eaf674435967bc1a285fd28d1049608c4f3af337b
214	Vitor Rocha                                                                                         	\N	ana-beatrizcastro@example.org                     	e3a6f207214cb3d12dfaf9696a8406f70101c8391e4d51ec0dcc287b09528045
215	Bruno Souza                                                                                         	\N	vargasana-liz@example.org                         	3c4090d19c462244ba36df2d4cc7eb1b47fe9bbcb324d5759ca6079a30ec573b
216	Marcela da Mata                                                                                     	\N	joao-gabrielbarbosa@example.org                   	e3b2489289c60437ac83dfc0017c9322c76bdaea969bab5106422f99223b4446
217	Mariana Pastor                                                                                      	\N	gustavo-henriquebarros@example.com                	4b8a453adcf5d18c95d6f958e96e791a9f9d4be5f627650827e939204346d9ae
218	Benjamim Azevedo                                                                                    	\N	ycirino@example.com                               	3b2a319169cd9c9aeb0902334afac5a4a8695c2c2d4c2e481638755663a1445b
219	Sophie Borges                                                                                       	\N	bda-rosa@example.com                              	8d156982344f493b1784b586e481855aaea5d1f5538c7498f4ad8d21639ef50c
220	Maitê Pires                                                                                         	\N	freitascamila@example.net                         	e6b9e44ee1baca79731cdff3524878c4335ec1d775807f65b145c752e94f3569
221	Vinícius Almeida                                                                                    	\N	gabrielacastro@example.org                        	6ef0bbf8d79705b2c265e8a34dd5325d367dcfe65f5a15d618dc6b2ea2b5c2ec
222	Laís Oliveira                                                                                       	\N	aurorada-mota@example.org                         	ce0680c094914c7ace7c4b956751357ab712a9b22b188c9bc72afc1b3afcb300
223	Evelyn Almeida                                                                                      	\N	bgarcia@example.net                               	1ca394ee3e3f3321ed2efb0b682de4b735d6573a9e28bc03db3776c852d3c525
224	Dra. Kamilly Sá                                                                                     	\N	goncalvesemanuelly@example.net                    	bc4a6cfa77f14c9841eb7d35e5016a967a7b9b7cdfff339abb2d56384f66fe7e
225	Srta. Manuela Pacheco                                                                               	\N	diogosantos@example.com                           	a0c95760c4ff8a0bd59bbba516eb1d1b0de74653dc418f4c81d0d8e4ad62c519
226	Isadora Câmara                                                                                      	\N	marcelacosta@example.com                          	c32f276da3aeda67edc95640d47968a495a0f32eb750f1e9fd35d50dd8466f27
227	Ana Julia Vasconcelos                                                                               	\N	rpereira@example.com                              	4ea7270939a3e1b46b05b523b2c37c493ac97d2ebb1333ce5a8a61c2863c5764
228	Allana Melo                                                                                         	\N	sampaionoah@example.com                           	4b71550bd905a593e9c3bdf9371ed83eae51f579d25c965512c5dbaf09cd89bd
229	Luara Farias                                                                                        	\N	zsiqueira@example.com                             	dc97378d952dbf3acb8dd2dc24998fd6a6bbb88385372d118b37a6323672f283
230	Felipe Souza                                                                                        	\N	jpeixoto@example.org                              	14d526097701a13a8758043a5072d1bf2a870c53554bc54753643239c2499ef0
231	Breno Leão                                                                                          	\N	luiz-fernandorodrigues@example.net                	8614696620fc39e869946d232af973a433571c3988c102efa9fa181892ff32ae
232	Dra. Isabel Novaes                                                                                  	\N	urezende@example.net                              	4b150c160130a4bd8200124d17adb45fb4949e840340eb2933f35c35d15a6538
233	Daniel Gomes                                                                                        	\N	lara52@example.net                                	a4625d0ef64906f2bc29cde813bb9d606a47f5312541e24db87e839f48f7615c
234	Vitor Mendonça                                                                                      	\N	luiz-miguel48@example.org                         	65d43d307109593a02f2c4db8a8bae9cdf553e0302d15ec2a9d896e5ea0a3856
235	Agatha Nogueira                                                                                     	\N	aliciaribeiro@example.org                         	7ee3d4584e92dd316ce7a10ffee06ffa3bac6c5363ecd6083b5eb12d9617bc80
236	Sr. Davi Luiz Martins                                                                               	\N	kviana@example.net                                	99d1d68ec98286b01e5615149f69df804ad9bcfb87574c1b37a2c0a3621e02d2
237	Emanuella Alves                                                                                     	\N	peixotothiago@example.org                         	b26e0e170e51f00dbcf1c9dc8f97c1b1b93c894546a793e97e4f5fcb238a9e79
238	Srta. Aylla Sousa                                                                                   	\N	marcela91@example.org                             	09bc79d02cbe16e1cef93b797247e1d80a6ad0cd757c52040cab13050156d540
239	Hellena Sá                                                                                          	\N	calebmoraes@example.net                           	2cb8a810da51779d3e4ed69907ea25d940cf504ba1979a167684d6cf7886e386
240	Yasmin Cirino                                                                                       	\N	marquesmarcelo@example.net                        	03ae6e01bd18b9529ce74f0e1c0e7953114be97ed23c90154a721571966f24e4
241	Marcela Viana                                                                                       	\N	vbrito@example.org                                	0d9cbe72211289ed4b81812eb188006fe18316f3c97caec27cdbf96a1aaeecfb
242	Asafe Dias                                                                                          	\N	cauada-rosa@example.net                           	a381c2d2e63713b4e2ff26881d1fac8c67f709011394d6c597adc800123e1a31
243	Dr. Pedro Henrique Farias                                                                           	\N	arthur-gabrielvieira@example.net                  	73f8289945d8328bf6fa859d92a340aff566bf2029a278a11506f5c38c0b305f
244	Sr. Augusto Almeida                                                                                 	\N	isadora23@example.org                             	34766f81acdc3195957010b0599498266472ba0ad729dc22423ae9e94c463756
245	Lucca Jesus                                                                                         	\N	xbarros@example.net                               	f0b675018beb79faacc6285fe7707080df4a8d261495bede7176580463a4f29a
246	Oliver Castro                                                                                       	\N	hpastor@example.com                               	4f8fc9e6b38f8225bd4c829ecf3690a2d2ddaf2a4efb1af828a79f659f013854
247	Letícia Leão                                                                                        	\N	maya40@example.org                                	9b20fe8625389dccbd64a70f806bc616aefba7e098d6d4f8ce23ede89f976055
248	Henrique Fonseca                                                                                    	\N	ana-lizviana@example.org                          	3fb32226e2961abd171e93818b65ecec300964824c64d8f2c028e6895563adea
249	Gabriel Pereira                                                                                     	\N	da-conceicaolucas@example.org                     	2cea666f73ab6062b55c46990360aec7bad019cf004abbab6da0b47b958ff385
250	Hellena da Mata                                                                                     	\N	tmarques@example.com                              	36d4d458d1066edddde76bebb43ccf5f9ddb1a87d0ebd4ba80acbc561ec6e517
251	Augusto Silveira                                                                                    	\N	tlopes@example.com                                	5a0c0f8f1665ef150c0824eab025336ef451f4f45933a7afb2cb9ed2c1bea9bc
252	Maria Luiza Nunes                                                                                   	\N	henry24@example.org                               	b3bdbaaf4d6258e2bfa25021f5cc2df4d0e11f83f8a8e3a5f073ac6b4f786648
253	Nicolas Sousa                                                                                       	\N	giovanna59@example.net                            	5a3b12b0537c4a57b318769e91f1e4d44d22246539834077f33b1b20edeb0e02
254	João Miguel Cassiano                                                                                	\N	zpacheco@example.org                              	f8b80f4e13ab8636bfb6b6f889200be422916be686b2323c97fb29f9fd6fbaa6
255	Lucas Gabriel Borges                                                                                	\N	da-luzmariane@example.com                         	5852b216aa2d0fae84e29ef7b1f4019451822a49e52b9f9353de45406452f361
256	Dr. João Gabriel Sá                                                                                 	\N	luiz-fernando43@example.org                       	329fd6d15aabc09dc788646fd9a6d0d058d7c106308183aff2ec06ed18d14caa
257	Lucas Cavalcanti                                                                                    	\N	pachecoana-carolina@example.org                   	bd285390134b3a9906df6e496482d5a645d5e4661a4c3624bb9f33c6d0a0ad61
258	Theo Melo                                                                                           	\N	kdias@example.com                                 	0b53a9b4a2c5e647a2498ef4584448ba54f1bab2f29ab65ad1101a89d2aa2046
259	Maria Júlia Cavalcante                                                                              	\N	fonsecaliam@example.com                           	a6caf6269bae480cd00ac4e65b5ec2a7443b3429b9351fc9ae0c611d8569462b
260	Dr. João Pedro da Rocha                                                                             	\N	machadorael@example.com                           	a1fc23ee670ad8b1810ee9692b83462d276dea4f1bd94bfe5be95282b1931f9b
261	Rodrigo Lopes                                                                                       	\N	luiz-henriquerios@example.com                     	18477cd0817eb3c7acb5e00ddd30fd1759bd3281a270200e861445881df3bbd4
262	Gael da Conceição                                                                                   	\N	luiz-miguel00@example.org                         	3d6a1092621af177f06b061913a8315ef3634cf54ad89e8370cbae72bde6d7b0
263	Vinícius Teixeira                                                                                   	\N	tnunes@example.com                                	77dcafc68f9d3a7e24b6c89c017a68f6645201e2ef8634eba18d5a33dc6560d9
264	Maria Luísa Pacheco                                                                                 	\N	abarros@example.net                               	73f65425de451008a10b078f29f30348fe4f1f30ab854020c021d068491321cb
265	Joaquim Rios                                                                                        	\N	britomateus@example.org                           	499eebc43fafe67922789770ca216997cc3b47fb5b8c7e2f0877dbea05d692b3
266	Heloisa Moraes                                                                                      	\N	dcastro@example.net                               	fe043cf66dfcbf6fb624cb879556112e46c143beac11be370f657173fee6266a
267	Davi Lucca Borges                                                                                   	\N	camaralucas@example.com                           	a853a08c0946a30327b1c5b593268c421af265c8fd6c1705ee1df907be5b67a5
268	Cecilia Guerra                                                                                      	\N	noah20@example.com                                	e40faa3a167bb37f61e983004f04232f4239c51753de5762103a66ecb6f7a3b1
269	Cecília Silva                                                                                       	\N	peixotobruno@example.com                          	2415c5915cd1e05a0ff052d6f51229f1e6ec314daf4c5edc3ce135abf1871af8
270	Sr. Bryan Costa                                                                                     	\N	barrosjulia@example.com                           	07050c851d45f582cf691ae08f1a262806fb44f9211095fe844534d3be1fcbd4
271	Emanuella Alves                                                                                     	\N	barbosagael-henrique@example.com                  	461f4edb84a288836709d86939cadbbf7b4f13f74f24fb382017d225fdfe791a
272	Nathan Ferreira                                                                                     	\N	meloclara@example.org                             	de8013c57d7be3d10aac7dac304f97b2c45b364f5d54d16e35c42d1ec3c076ab
273	Srta. Ana Clara Almeida                                                                             	\N	marcelo90@example.com                             	20e51fbab8e4b9d0ac7f3dd0937221e80fcd08057f6938ed266d497fdc5ad206
274	Olívia da Rosa                                                                                      	\N	bda-cruz@example.org                              	1229ba6f5b1ee3fdd1fc73d770172470e74133eca89c8d2c14cb69695a3f7ca8
275	Théo Cavalcante                                                                                     	\N	raquel39@example.com                              	30b41f5b0fd41f92fa39b2d87197d970b1b1934121a128515a392805b4e50973
276	Heitor Castro                                                                                       	\N	da-mataaylla@example.net                          	32602b523f8f54f57645c1ed550daf3958a8bade29972d1a93b9bdfb2a338dbd
277	Raul Rodrigues                                                                                      	\N	ida-rocha@example.com                             	f6851aa7724959296827bd62acc953225fd9af78cadf90c2ab277276e0776e71
278	Kamilly Vasconcelos                                                                                 	\N	melissacorreia@example.com                        	30ea85328da8368f734eb42bbe87a7b7dd37499f129c1df22d9844aca29fac52
279	Manuella Pimenta                                                                                    	\N	isadorasouza@example.org                          	b8ed60dff43d5af752f2808a1a8b8106682b0c0a0f66c1ee62a524fc2e7f904d
280	Srta. Manuella Novais                                                                               	\N	klopes@example.net                                	17d30ae1781510213d24b1deec0b110eb8b12c501005854b5e6741748689473b
281	Larissa da Cunha                                                                                    	\N	luan90@example.org                                	8c4bdda874b352ceedc507d9db6af9afbe75e3a0d7a071306973f10b9238145d
282	Gustavo Henrique Cavalcante                                                                         	\N	santosana-sophia@example.com                      	6a611bc74cb579ba1967039edabfb931678cd9b6b00ad62c6d4a9ebad9a0fef5
283	Maria Luiza Duarte                                                                                  	\N	raquelvieira@example.net                          	57ae4d7ea68252398c29c7a31e75a2a41b5c6fc815d2d366f824e8fc3cb7a5ae
284	Dra. Marcela Cardoso                                                                                	\N	luisacamara@example.org                           	41629b987e169ed998295d4cad43ab0341ed095f13a2d613049e583268207fcf
285	Olívia Lima                                                                                         	\N	breno11@example.org                               	518d74e8e93db01209ab821d2f9918596146c101d24a2951a6567ec40b3357f6
286	Leandro Casa Grande                                                                                 	\N	srios@example.com                                 	9eb5fd9f373ce9c1dc6398f088a51aad914871efe72ffc72f24065c4d96a03bf
287	Liz Gomes                                                                                           	\N	beniciosales@example.net                          	0102b2b6d29c148a853bcadcc7b6d7af522b1b1266ddd64199f44100ac6fdc7e
288	Bernardo Novaes                                                                                     	\N	eduardo94@example.org                             	ac08e1d3eaec54db8eaee56587eb888c096616219f70d8ab222629ca529d7f24
289	Felipe Jesus                                                                                        	\N	cferreira@example.org                             	80829d2108628cde4df0d4d2b4243aece7cd54e4663ac8b87eb9e5ce6e471205
290	Marcelo da Cruz                                                                                     	\N	costelahadassa@example.com                        	22dbc9c81915c2b13903404c182599220775e23115780dd6d5db6a459f9d9545
291	Gabrielly Andrade                                                                                   	\N	marianeribeiro@example.net                        	c46ff8aa7fa37fab28fac37bebe5172d1789e339ab3ee3f9325269d3f979ab0f
292	Maria Flor Cavalcante                                                                               	\N	cmartins@example.com                              	e5ba83fad4d89c1f7fca4788643239925847fbb14b86b0fe56c13f8056e22853
293	Sr. Luiz Felipe das Neves                                                                           	\N	hcasa-grande@example.org                          	a34aab5fba5586588086dbed2b2e0a060cc5b6377606d5973c6102987cd4772a
294	Luiza Farias                                                                                        	\N	ramosmatheus@example.org                          	f77fabefc8414da19dd729d930a04cf7e21a0bacf26b8a56c482e482e2310ee1
295	Bryan Abreu                                                                                         	\N	rda-rocha@example.com                             	3ebd43b150762941126aa154413859b3749ec2ba08fe0e99e70cb0a3fc2a598f
296	Valentina Pimenta                                                                                   	\N	lopesolivia@example.org                           	0b031abf97c94409c5d2e6a3698e802921f229becb0d6bd59c386a034993d45d
297	Heloisa Dias                                                                                        	\N	rochaenrico@example.org                           	d953355cf61b331e9b9a9c2db724389a76dd81c2a4daffbf3b31b9aee6721a12
298	Alice Rocha                                                                                         	\N	yasminbarbosa@example.org                         	cc81f2442de05c874ff9f0d2c454ea7b9e94d2a45e95fb135d90869e2deeffdc
299	Clara Porto                                                                                         	\N	costelalucas@example.net                          	044c1e62894cd7a3646d53b48a44d0c5a5133ab4c00e342107193c0a9a936162
300	Emanuella Mendonça                                                                                  	\N	diogocorreia@example.com                          	731844fc5335eda1f7e3fd98ddcf881387fc5c42a4fd76433a4664516922e450
301	Alexia Vasconcelos                                                                                  	\N	uda-rocha@example.com                             	bd1e9fe3b2dfb6e8f57bcfa5d3dc6a6668c71a36629d22926dd3be8e8c681ea1
302	Sabrina Monteiro                                                                                    	\N	pimentamaria-julia@example.org                    	7da1c9382ec25ad9196464ecfabe8535597db791ed59a46d8885a969e6ef0ecf
303	Jade Câmara                                                                                         	\N	pcostela@example.net                              	4595cd4cb1e6c37806fc1217586c8dc7094f07cbe714b62a74095d4c48738814
304	Dr. José Pedro da Mota                                                                              	\N	camila94@example.org                              	b66f753a5911d982bf8752b31991036ccfd1c4784b91ace4588c1d776ac0e65c
305	Joana Câmara                                                                                        	\N	davi82@example.org                                	c36f763350c155952edd2adc53c7346ca595cd455e640b3c2ea968507f20f1f4
306	Sofia Siqueira                                                                                      	\N	arocha@example.net                                	d66793c053aa5bee7fec760999b30be631c579e947c82720e5ce8047232aa4ee
307	Arthur Câmara                                                                                       	\N	lporto@example.org                                	0c060a8b06b579c6dbd79a2639c9ad9ccde7ee466f160283da5c76191de19183
308	Enzo Gabriel Machado                                                                                	\N	maria-juliabrito@example.net                      	14d8dde8726bd4c6c5030338e608fff5d0193c331c67a1a51f7ac22a5aca8410
309	Luna Azevedo                                                                                        	\N	talbuquerque@example.com                          	c86c85179c1939159db6a1b4ae04d80b6999cc488a65b9e15f82046480bb3bcb
310	João Lima                                                                                           	\N	amachado@example.com                              	9d96acbc15aa3df33c37b871693c14204b1fc4faf4d7bcab6730a710675a95b9
311	Sra. Alice Alves                                                                                    	\N	da-cruzemanuelly@example.org                      	36b0261950a600a73908b84ddce866265ab5a6c0f8bf772b24ce69750bfba984
312	Alexandre da Mata                                                                                   	\N	saraoliveira@example.net                          	421aa3fe360129bd25ac78aada088707a4f6c4519015f7ea86d1374153d283a1
313	Maria Júlia Correia                                                                                 	\N	garciasara@example.net                            	b93c9c002db7b9364ea47ee46e23c228320e9a20e75cdf4ecd77c53c01fd218d
314	Luna da Conceição                                                                                   	\N	marianevieira@example.com                         	8f1472b6b5f8bee460c8037dfdf61680a5da4dabee4f0ac4697a9d1863cbe3df
315	Isabella Cavalcante                                                                                 	\N	lmontenegro@example.com                           	c6c60d11c8fe4b0110d4df79aa12edd39815feae26e9b7d5e8fd267441dea274
316	Lavínia Rocha                                                                                       	\N	nunesthiago@example.com                           	5581191e2e51116ee73e7abe1cddccb6de0f1eb137a3b074244ea5faa4472d8a
317	Sra. Eduarda Peixoto                                                                                	\N	sampaioana-clara@example.com                      	4812289816d012f8a35a5b5a4db240ea442e2a4e2949ca10407d469344b11eee
318	Dante Guerra                                                                                        	\N	ana-liviaalbuquerque@example.org                  	f9f7a0297658a2e323fb29e1854f3d3d64501fbdc9a46eac3354f55cf8a060a8
319	Sra. Luara Nunes                                                                                    	\N	rodriguesrhavi@example.org                        	089ec9095b95e24f56b487cdcad6f4f2f1aa4e884fbbe3c150dc336f061950a7
320	João Pedro Aparecida                                                                                	\N	gomesjoao-pedro@example.com                       	23ae2562c5f0f0b741fa297fe30aa0bc541e4bf743e46272ab7c94f7c138d96f
321	Pedro Henrique Gomes                                                                                	\N	epastor@example.com                               	b6d219fa8efe8981c98c5417b49d76a2c85b7fd7378282bf68ee8f36cf4b0911
322	Isaque Souza                                                                                        	\N	isabela55@example.org                             	f848187786dafe777055a1cafc7c25b4789ba51599952653e95e08e9b41d7afd
323	Emilly Ferreira                                                                                     	\N	da-cruzemanuelly@example.net                      	6f11cf5622d970aedf74921f308e0b1179a64334de94d29520f40bb379a53b2e
324	Dante Azevedo                                                                                       	\N	danielcardoso@example.net                         	42bf570855da4d56c85dd71d9813bc9b130c0baa3084367d9dc79074a0186591
325	Anthony Gabriel Peixoto                                                                             	\N	viniciusda-conceicao@example.com                  	b231a6bda9e504508b5dc25db0b03faa4fa0a3b5daf398190ce2156ac712fc07
326	Catarina Rezende                                                                                    	\N	peixotokamilly@example.com                        	ec10cc951a71374bd0caa0236aec125ad3117f52495f8f842f0caeaea3644eea
327	Juan Vieira                                                                                         	\N	gmendonca@example.net                             	20a605f96be05d8458a5e38de3f70a4aaa35aeeb4b0357a55eda747bf26fc5fe
328	Bryan da Luz                                                                                        	\N	pachecogiovanna@example.net                       	f3827e6dbee507a8624f474df15cecaa9a27ff4934c6aba669708bd6298ed913
329	Breno Pires                                                                                         	\N	imoraes@example.org                               	3d204208e5dcb0ca7ead54621e7339c502efe6915b27656420e1a885cd0a1962
330	Vinícius Camargo                                                                                    	\N	carolinejesus@example.net                         	913ca83b1b37164c84b550be44a25fa30a3c110073413c0e8abc1411a46bed08
331	Luiza Siqueira                                                                                      	\N	fmendes@example.com                               	9544b48d0494550ca1f04d799c7cd153881e8c70b459fd6029b1523444ce8359
332	Benjamin Cavalcante                                                                                 	\N	ayla69@example.com                                	82f88e76be0878864373a0612219e6715f9b1114b95701a5421adc7b236b0158
333	Maria Luísa Rios                                                                                    	\N	aborges@example.org                               	1eb5c56332a3524e9056db93e7b5383460679e4f932fa3c71a7c05d3470ab073
334	João Guilherme da Mota                                                                              	\N	julia31@example.org                               	abe1d59e7d11613ec038f235d889cbae622c1c025beace9d8148ac5f505b55c7
335	Bianca Nogueira                                                                                     	\N	peixotobreno@example.org                          	94421909756062f558a1da692db7f7671bbdb8f5ba8ba4803d17f0de43f892df
336	Hellena Sampaio                                                                                     	\N	daniel26@example.com                              	c9fe999b621680c57aa51fc685b8ca29f735233bec84d292d8b0abd63fa35763
337	Yago Vasconcelos                                                                                    	\N	mendesrebeca@example.com                          	942442afd063078fb70fb39c456ba65982232594725c2157bf2e59679d4745a2
338	Letícia Rezende                                                                                     	\N	sarah11@example.net                               	0e51c0403a7389ecd2af071393e0b9f67bd3f4bde3a1d4f97ea8eff0a1d640fa
339	Ana Lívia Garcia                                                                                    	\N	silveiradavi-luiz@example.org                     	b646a1899734aea4d0d1154d738c7e0242ef3bc93ba86d9fe6dd41d4b42277c0
340	Letícia Câmara                                                                                      	\N	rodriguesmateus@example.net                       	c226821036389b6e3e1fcd1463e089dbb9ce6d939624befa959dab85325c68e0
341	Kamilly da Rocha                                                                                    	\N	isis97@example.com                                	f40e5330f5ed8323ebac900dd7066c2f726437d2a34f6668b549c097884d7509
342	Vicente das Neves                                                                                   	\N	maria-lauracorreia@example.com                    	fc465788b223fa72cdbad6fae0d540aecce921238889ea096846087f8afb8b13
343	Maria Clara Silva                                                                                   	\N	leticia05@example.net                             	37a9aad84d1a32ec8564737c8f3c363de10991bccbb782ba8c305d72885399b3
344	Dra. Raquel Cunha                                                                                   	\N	bdias@example.com                                 	2a802d741abdbfe1a5784b089c7e5ef3d8f9cb71766f2fe614c7065961348a30
345	Otto Rodrigues                                                                                      	\N	hellenacamara@example.net                         	025988423dbeca86a4145dbf0d7f475b669a9ff4a4635da1117a0ad3bd3217b7
346	Sr. Felipe Macedo                                                                                   	\N	mateusbrito@example.com                           	f28be37dd0c2f29b12d89e9965b61b9e5768f06f97f8bd6b1023b780ec4af5ad
347	Dr. Arthur Miguel da Costa                                                                          	\N	matteo80@example.net                              	ffcdd32d687c92b4cc109aa46087340348b453d7c77fa18692042cbab5e14907
348	Elisa Azevedo                                                                                       	\N	dalves@example.com                                	40ac44c27eb1159ff77f818fa92988097ba2546aa489e704b4a7c5801a4602de
349	Davi Cavalcanti                                                                                     	\N	falbuquerque@example.com                          	d6e6e01769bb1a52403fb59d840b20960841ee9a3880f302f06b49925b792411
350	Luiz Otávio Camargo                                                                                 	\N	jose-miguel53@example.net                         	f06a61cb06a175cb0cf5981a2d7f897beba5bcf46b268dbbccc865de256b371c
351	Noah da Paz                                                                                         	\N	arthur-gabriel74@example.org                      	2c7b21c8d69f081f7ac003bcb9f76656f406bb8871ad0a58dbc381a59ffb7824
352	João Miguel Cavalcante                                                                              	\N	maria-alicejesus@example.com                      	2245c933d4955a358dd0f7c2b0c862e7a29cf2c2b026a6efa91da310a334e718
353	Carolina Andrade                                                                                    	\N	goncalvestheo@example.org                         	f355be743fbe8293fd2e39599a0abb5cdaf7cdb2395081e53a7338f2641025ad
354	Antônio Mendonça                                                                                    	\N	danielalima@example.com                           	e7e838f658ec9edc3c1030d70fb4235bdec8e6f4109b6bff8458bcbc2c0e1562
355	Maria Isis Santos                                                                                   	\N	gabriellyda-cruz@example.org                      	d178baf986b283e13ffd95b58967228334bad276e52a14dadfa418302f5e2a9c
356	Bárbara Melo                                                                                        	\N	ribeirogabriela@example.net                       	d85d85650bc33860a6737d35687e5d3d7dbfe682bc0f028ef310d821e5f5e9b6
357	Srta. Maria Julia Cassiano                                                                          	\N	luanmendonca@example.com                          	e1534ad146d73d1820826edb50c08a816c8e7da434d04d4a9d0b54697c18e26a
358	Maria Luiza Sá                                                                                      	\N	pereiradavi-lucca@example.net                     	772b07fb8e58f5b4021a92c615042b1309d33ea4e9af306690567f4d21f5ab33
359	Cecilia Novais                                                                                      	\N	luna32@example.com                                	52828d43e5722d0d3c108130d45e551358f2e761ec7eded20866b69f834dd671
360	Theo Correia                                                                                        	\N	matteoda-mata@example.com                         	de309a74f0ee2e3d6e3f193e9179a28deae1d07db2192c0aebfc430ff222eeae
361	Henry Gabriel Pinto                                                                                 	\N	jadeabreu@example.net                             	dc0b888bbae133beb17fdccfbaa8fe71377eb3b3bebadde7539a1634519e9b3a
362	Kaique Rios                                                                                         	\N	pachecoyasmin@example.net                         	07e7e026e2fec31b7d439dc07e7434840c6c41111cc4296efed3cd15e6029e0e
363	Maria Flor Moreira                                                                                  	\N	brendalima@example.com                            	93f67ba0e47517ba87a6429a3e671f63d99663103c3597deee7a610b6c51a670
364	Sr. Luiz Henrique Almeida                                                                           	\N	pedro-henriquebarbosa@example.com                 	5e672d6268dc1e1ce282507ec03cded33f092c72d03ba697726984f8d2b9300b
365	Heloisa Santos                                                                                      	\N	vsousa@example.com                                	a0897463a77fab4a803983ed5ad6d28e2cfa6f69f387fd7f7315d08093a844e2
366	Dra. Sofia Sá                                                                                       	\N	cassianohelena@example.com                        	285ae95255b9f446a83e0091853b84a8f9e789e503fc2eba6335f5170aa5c4c6
367	Allana Jesus                                                                                        	\N	da-pazmaria@example.net                           	ca854150f141a053682d622d3d0b036fcfd2e225cbaca1929a67035fef6ce9c0
368	Leonardo Peixoto                                                                                    	\N	snascimento@example.net                           	6ffe53b17f4d50c407e1d01fdc46c8c844fcea50f49b0084d230c5baeed06036
369	Dr. Miguel Monteiro                                                                                 	\N	da-cunhaemanuelly@example.org                     	b56eb9cf39a6f1789f2d96cb5458d2f11aec964e44453671f8216feffb4685e4
370	Dra. Isis Sales                                                                                     	\N	claraduarte@example.com                           	4862030f67aef8fe70aebca001d18326606b724b73fcf62c07c37cc323dde005
371	Vitor Gabriel Cavalcante                                                                            	\N	riosmaria-sophia@example.net                      	237e8c49b55d8b6428aef4c1c1fd1322a29d43f1147964d4a654fdae911796c6
372	Enzo Gabriel Melo                                                                                   	\N	lopesgustavo@example.net                          	733556fcbc8729d1d505f384457fcbd9914e4c328ea98dec58ede8a809f22407
373	Pedro Miguel Dias                                                                                   	\N	sophielopes@example.com                           	7d7f2f9dad0a2fcb62fff1c31d7fdaa58498e09eb30e84378066d151c8f84794
374	Davi Miguel da Cunha                                                                                	\N	allanamachado@example.com                         	9bea4bb21f6673c64916eb8519878735bd232c23e262814aeb43469ed280cd8e
375	Cecília Sousa                                                                                       	\N	rezendeisaque@example.net                         	db7c36e75b4901ce4d3f9d83d8dc6782dacdee3d39f16830886ba4a47bc49b82
376	João Gabriel Casa Grande                                                                            	\N	cassianodaniela@example.org                       	e6911d56c9d8cdf787a3adf4df8330e1d50155489c22134f309c7b68dfccc423
377	João Pedro Sousa                                                                                    	\N	correiapaulo@example.net                          	04f7ea2a21a0a3e626282c1bfbcd24bf7a34b75736ac1465ae3c57702d672471
378	Calebe Novais                                                                                       	\N	jcardoso@example.net                              	1889925306084d04737c3e86f76e228093b79a6c856215bdd0adcf7f572cf3c2
379	Bento Lima                                                                                          	\N	ucaldeira@example.com                             	6232e171f9f2c610198dc4b9a1241e17ca59bf16ad87d9361b307f93dd959c2b
380	Liz Pinto                                                                                           	\N	thomasda-costa@example.org                        	89f5a3c427faffe912cb5a520a4b8e8aedf8f8de2115b2f9105be63656d7e595
381	Davi Luiz Gomes                                                                                     	\N	pastordante@example.net                           	b52c1a244976833ca5c87839569941b52b68b3b7d8435115fa2a0e0119d656b7
382	Thales Alves                                                                                        	\N	ncastro@example.net                               	f53f03acdbabaf60df7c3514541d0ccde8adc0e263eb929c61f7ed8081981507
383	Ana Sophia Silva                                                                                    	\N	antonella85@example.com                           	e8ab96e6106679f36700b7484693100e241f71bfb718bfd3f696f3cf8a6f9b79
384	Milena da Rosa                                                                                      	\N	yasmin20@example.org                              	11d01e390c20d0978adbab655ef750275146a44a09edf5736e96a90a86dd65c3
385	Enrico Cassiano                                                                                     	\N	cardosoleandro@example.org                        	46c81d3b7e589c636eb96fbf01302499562c6e4f074666c5cb72e41f096eaa0b
386	Bárbara Cavalcanti                                                                                  	\N	levi57@example.com                                	a58b2f157e6e46fff07fee8e1393536f35af319dcf679c73405067d033c4f57d
387	Ana Lívia Oliveira                                                                                  	\N	isabellyda-cruz@example.net                       	f0613923c61548faabb949f7bf35dccb75afb5327f52c51b48228a6c8e20eb75
388	Esther Câmara                                                                                       	\N	ramosmariah@example.org                           	3aba25d58761a6b0811e62d56a222e6c96af56440db3e7133cb1e6ce6f1bdbc6
389	Laís Nogueira                                                                                       	\N	rafael22@example.org                              	b0a251d05889fa8055b70df093396d7b5c568076615781bc229d56a7caeeb93b
390	Guilherme Siqueira                                                                                  	\N	da-costaleonardo@example.com                      	0beb325a6361b339feff89e5e1bd52ac86b5a53507dd8ba8e3b25b2a923494d5
391	Ana Laura Brito                                                                                     	\N	lucca16@example.org                               	86b34b5347e75164eb356dfe878010460e6e2bae3e971bf6b6a48871fd4fe8a0
392	Joaquim Cavalcanti                                                                                  	\N	saradias@example.com                              	514dfb06bca7fad58eb2e3f7234cc600d823e4af34913bde7e5981a1cde1bcee
393	Dra. Maria Júlia Ramos                                                                              	\N	acamara@example.net                               	f8fbaf17dbf00b8c10533f6ba68f50aeff1c600c6bb1e66b53d9d2e5efd11cf3
394	Isabella Correia                                                                                    	\N	acirino@example.com                               	c5090c19ea2103399c3e2192d542f352f565ba5d87eb83f128c5ffda5e24305c
395	Maria Vitória Moraes                                                                                	\N	borgesrafaela@example.org                         	6bdcec55c249c03115915107ba6670079adf01b19125b2c072df8674ba370b46
396	Dr. Otávio Castro                                                                                   	\N	castroluana@example.org                           	cde13b28cad7613249d135f8808ea5bbaa9addd2ba56ceea68733989dc67b8f8
397	Evelyn Azevedo                                                                                      	\N	viniciuscostela@example.org                       	5317f97923742d35aa40c196c06a8defc118d2fdc845d2525addfee09301cc76
398	Josué da Conceição                                                                                  	\N	ana-vitoriamoreira@example.com                    	146212f277e1ab16a774f247b92289bb327d3fe970b31ebc9646627298941069
399	Isabelly da Costa                                                                                   	\N	baparecida@example.net                            	11b800ad11fa5137666366b948ae7f18fd8e128dc2a8b9593f6463af519d80b4
400	Ian Casa Grande                                                                                     	\N	nporto@example.org                                	bbee5486fb7debbce5d1de8f32b2178e38a9c5335867afa157522a297a73bf2b
401	Ravi Lopes                                                                                          	\N	oliver86@example.com                              	8b3514eba55c4e3dfddb7960318367f4e0fd8995e908c06a73191c818bbf84a0
402	Maria Laura Pacheco                                                                                 	\N	apollo01@example.net                              	1c31de27932c11fd0b138f71910520a8cb8946df52c32113527f9dabeafef55a
403	Sra. Manuella da Rocha                                                                              	\N	mateusoliveira@example.net                        	32f57329600a601ab9656bc1700c8b1291c9b47050360960c392a4454b4d0e95
404	Sr. Bryan Macedo                                                                                    	\N	ramosgael@example.net                             	c91993ba0083aafa2deb8b6348cb7ad27bbdab2cebf528c2df30c7090514cc28
405	Liam Abreu                                                                                          	\N	ysantos@example.com                               	360e80c9d860b77e099fd9dfa2fb6266e733342ea650e4b4590e34910a1d03d5
406	Maria Julia Cassiano                                                                                	\N	calebecastro@example.org                          	b260005ef42a2afd65c6f94cb92047d2df9beb4815c46a07087c1af69d23afc2
407	Rafaela Cavalcanti                                                                                  	\N	nascimentonatalia@example.net                     	9584507503a782ca1fd213d7aa85f023c5e423e24eea3eb187ce989a24b7122e
408	Vicente Silva                                                                                       	\N	pedro-lucasda-costa@example.net                   	cfd8a8c875e550d23526c43f7c53df19f8113f3d335b1cc3bf850bc93466d4ad
409	Lavínia Rezende                                                                                     	\N	gmartins@example.com                              	6afcf888027f0878d154cee612e4d3f1e136eb230eeef1a3ff66c081bd214f2a
410	Ana Liz Vieira                                                                                      	\N	gabriellypacheco@example.com                      	b875e84bdd68668b7cb7fa155c5696a1fbbccc34761e1e2de154b63ab3a4d909
411	Theodoro Ramos                                                                                      	\N	jporto@example.com                                	11c4d2eedba52236a3739e5ccb962f7a9ea165c6eb1495b851fa9fadd0a7aca0
412	Beatriz Silveira                                                                                    	\N	castrocecilia@example.net                         	7d8e15478565d21e57033f356c272233bb1e029e9a6ca97acb8abac81c5b9b92
413	Ana Beatriz Vasconcelos                                                                             	\N	hlima@example.org                                 	c421ecc3f31e9e17b520a28ba4c1128c6e7680ebda4f4dd4a96d0400d067c0ed
414	Pedro Ferreira                                                                                      	\N	dante77@example.net                               	31e2d543c10f58e400ce088eb4bd77db317b8f69308e96a57237987f887645d9
415	Srta. Allana das Neves                                                                              	\N	pedro-henriquepinto@example.net                   	9f443863ac00c48ad0d4a1c3a24d59c38f3b9b8fe4513b3dfa8f27e42d4b8232
416	Davi Miguel Correia                                                                                 	\N	mathiasguerra@example.net                         	2e3751c4169a7c6c8143c566cbe2af44b0f2e5ff51aafe429728880ea72e69f0
417	Heitor Cardoso                                                                                      	\N	isadorabarros@example.com                         	9d8d6742242b91d542002e8bf8fc9385b9cef077195800ce8b6bf7da8fe322ea
418	Esther da Costa                                                                                     	\N	icavalcante@example.com                           	1e385b15a86203cde32b9c7d3c9af23595caa06096b79261a71ffa6cc3da8b9d
419	Francisco das Neves                                                                                 	\N	maria-juliada-costa@example.org                   	a9a170be1606ea85a337a87afba6b6b91e5bd28e75a4b576167891e37c36f243
420	Maysa Garcia                                                                                        	\N	casa-grandeemanuella@example.net                  	2a7c70bb015123f07de69f823bca6cd420c4009ae5271b018e8153edb5ccecae
421	Henry Cardoso                                                                                       	\N	fogacaluigi@example.org                           	2348095edaa77b5f9b6028e0e5ac049ceb52e97f6f71bc977e13c61c3aacabd1
422	Sra. Emanuella Barros                                                                               	\N	rafaelacunha@example.com                          	368df2ed3d5d76863b6a6d3da60baf89ba442fb58e6a21824b9bab0393ecd29e
423	Asafe Ribeiro                                                                                       	\N	kborges@example.net                               	2841d029d97814180d40c466f4da35720cb75720460d94127ec8b10a3b95c0c7
424	Marcela Lima                                                                                        	\N	ester50@example.org                               	d31b13d5aadebd9fb8a96aa29c124ec49a0712b3753a465ae1600674c3f1b6f6
425	Ana Clara da Luz                                                                                    	\N	francisco96@example.net                           	07de9b2c7362f0e9a3af808bb021780dea01a5677bffa874a5f37e256468b8f0
426	Murilo Cassiano                                                                                     	\N	henrysilveira@example.org                         	d569cf473b8f9f4c47712fc7cc60bc7e902889d8cfb4cc9d9de93c6a52480020
427	Danilo Silveira                                                                                     	\N	rbrito@example.org                                	4ad6dbf43b657e919dd8def9ac083b7562cc2ed7416b9e642213ea65500c7ef6
428	Davi Lucas Pires                                                                                    	\N	souzaaugusto@example.com                          	162de89bd650f7a4a34edae6c0027c25f7a0a299146c67a7fb5c689667b2bdc6
429	Luna Campos                                                                                         	\N	guilhermesantos@example.com                       	b1d9acc0545aa9f229138fdcc1376ac24cc8556f214db0a048ce724f0d08ebab
430	Francisco Nascimento                                                                                	\N	riosmelissa@example.net                           	e0b90515da5684e79822d0e0d9ffc9fed994f45c9e8e4c769563a510dc1b6b7f
431	Sra. Luísa Correia                                                                                  	\N	silveiraravi@example.com                          	452aa73edd31d216492d8bb0e122e1712c66c36bb33576356d23729d71a259a2
432	Benicio Montenegro                                                                                  	\N	mateus04@example.org                              	b5bfc470f59d95f884c1bfcac0bf5551197dea72152f03c3fad7cd82c9979093
433	Raquel Camargo                                                                                      	\N	bianca07@example.com                              	37b6c67432108550db0ed0410c44a0d9db0bd237eeae94a545b482b2ad94778a
434	Apollo Pastor                                                                                       	\N	thales59@example.net                              	4f1ee7d8522a60317c38f82d11c6fcf85fa6b1451e1fc41fcca85cb55e9844af
435	Ana Luiza Pereira                                                                                   	\N	saisabel@example.org                              	7e0401eb2ee81f85b1f2b401253b8e1f52bd63673e920da3c0b1963e430a3968
436	Bárbara Rezende                                                                                     	\N	afogaca@example.net                               	bd16778359e171499168bd29f76f3c1a71d1a1f096858b9e830c896b789a751c
437	Leandro Almeida                                                                                     	\N	levimartins@example.com                           	1d5fdc80ca548c7947e2b8e574521ab24a1c420904b78862db1316bec85286ab
438	Ravi Lucca Lopes                                                                                    	\N	qpinto@example.net                                	0dc750c0d4285a642b82d74f5c556ae47d692a3b81c9cbe5fe2fa63e1b000e91
439	Otto Costela                                                                                        	\N	da-costagabriel@example.org                       	09176aa352c85101ffcd0a4f78b7bc2c0571115c167b155f44aef175dee04787
440	Maria Eduarda Pastor                                                                                	\N	gustavo92@example.net                             	bbfec6b59434c4819dca28c899936e889d249ac1ed11f8f039886a194a4a7cec
441	Enzo Gabriel Porto                                                                                  	\N	santosdavi@example.net                            	2705ef08f2c9267667865fee0b5fa3ce4cc0a7956d6a534fb943cdf60f4df8ec
442	Josué Ferreira                                                                                      	\N	sophiagarcia@example.org                          	584f149f47d21683cf28e070dccc64dd319ae40c4adcef459a1ddd023ff9ce93
443	Miguel Fonseca                                                                                      	\N	msilva@example.org                                	dfe95fed72dd513b117b4f48f6f029fb0141bf8f84486d0adc972630131346ae
444	Milena Moura                                                                                        	\N	eloahrios@example.org                             	a56eeefe5987b3fe6393945f9668862069b208b3615a28c6c53941a5f769e361
445	João Guilherme Guerra                                                                               	\N	lizazevedo@example.com                            	4d519eda130226737db74bce6379784baf6f099d4ff98684571e3c21adc4bef2
446	Dra. Heloísa Sousa                                                                                  	\N	pedro87@example.net                               	07805639f599cac1e2b4f1bee13e8f21731fb57f0c0ae5ee90dd7d444ce61988
447	José Pedro Aparecida                                                                                	\N	rebeca11@example.org                              	97e1eabdb0dbe5579af2de670249651c9657045e859f5b866e39a9806451e349
448	Dr. Mathias Gomes                                                                                   	\N	yago37@example.com                                	aa990aac219d3a7b11d9dd08dd5ed1aa67b802efe16c9be7b6aa9ffe548849aa
449	Gabriel da Mata                                                                                     	\N	elisacostela@example.net                          	2b65ae827485063e1ecb33bb0f9eb0619007bb5ffc997058425f3309d68c7638
450	Bruna Nascimento                                                                                    	\N	aragaodavi-lucca@example.com                      	c55802560a508a90c3130ff6d3d6fa8d12c55276b677d3651c859a2595f76587
451	Dr. Samuel Leão                                                                                     	\N	agathabrito@example.net                           	eaa06c16169245a3c44ee00a6451757fea95549b0495daf7b34db4b519042469
452	Alexandre da Conceição                                                                              	\N	isabelly31@example.com                            	1fdb9f8501bdf893dc3e13a1245a11fd5622994da965acb5ea564d408641de93
453	Sr. João Felipe Fonseca                                                                             	\N	luisa82@example.org                               	817a49de599789211950c7320df39e7643c9eb690deea0ccc345bbdfc7cb034e
454	Isis Oliveira                                                                                       	\N	fda-mata@example.org                              	217680bdc000800030cd42a480029dd9600448c6415f27de08a63e7fa8d324cf
455	Gabriela da Cruz                                                                                    	\N	lalmeida@example.org                              	31b834003f74fa756f0811371a59d20a6d3d8834c8977938279cc122cf070f1e
456	Pietro Freitas                                                                                      	\N	freitasliam@example.com                           	8e90889a123f7d00833dc6e1b8cac07b374e06f0c966a6a0b7ecf3e29e1f2fc6
457	Benjamim Caldeira                                                                                   	\N	britojuan@example.net                             	ab75553f6676e1dddd9d6be9e441d459d619c9295260c967cad6bf64c923e01b
458	Isaque Nunes                                                                                        	\N	marquesbryan@example.org                          	844d602fd50b1ae6969c294d21b181a2f23f12e5fe8f56c6bb1260b0d7e71d9c
459	Ian Pires                                                                                           	\N	elisa05@example.org                               	8778225db0398b8e75ab72c0f4d3ef417afea429d900e40ce6f83aaabc30b8b5
460	Lunna da Cunha                                                                                      	\N	bernardomarques@example.com                       	f7f44527672c783074967f9ac2199c76efcd6427a25bfc3e9d1873ab82e6db4b
461	Srta. Sabrina Porto                                                                                 	\N	alanabarros@example.org                           	00200c6691d08e44705da2af04784770fe05201c9317f568ca6f147309e8ce35
462	Yasmin Ribeiro                                                                                      	\N	correiabarbara@example.com                        	f9be2994c5c1187ccd201da0e7de1216d8603d2c2d5fd6ea310d10ec8258204a
463	Luigi Pereira                                                                                       	\N	kaparecida@example.com                            	4cdb564ef0ebcf5399a44faf8fba5cef3205c602ab01771716ecab10cc2a8240
464	Erick Caldeira                                                                                      	\N	luiz-miguelpires@example.org                      	926a2a6f910e894a8620fdf0e4068c5ebfb2c9a956e4aec80e807f60fea52bfb
465	Manuella Sousa                                                                                      	\N	rafaelramos@example.com                           	6b2022a10eeab6f21c13a3defda4379d9dc11c4f8309af8ce591251bf02134b6
466	Dra. Emanuelly Guerra                                                                               	\N	ana-beatrizguerra@example.net                     	b62f11e9757c8d07f8fae4238b143918b31c454fa975611d3b630f25558b8614
467	Valentim Sá                                                                                         	\N	oliviabrito@example.net                           	e4e8157139786e0839c18eb674f97e115a5168ec93517a4d96179590a1d69d46
468	Mariah Cavalcanti                                                                                   	\N	vitor-hugovasconcelos@example.org                 	ac09912f092d04a13da6878992094b14172b907cdec58a88802cea6c2c08cf5d
469	Carolina Sales                                                                                      	\N	ofernandes@example.org                            	a825f35af0d889e8d4c37faf0baedcb50198c5a152913c83a3b30aa210b06f83
470	Yuri Rezende                                                                                        	\N	svargas@example.com                               	932bdb09c9be5caf0fb50a4ce5fe47c77ce9d41b01ac34b4829f2082d7e481e9
471	Dra. Kamilly Silva                                                                                  	\N	jcassiano@example.org                             	b5476eb358b68208ce55fc79dcba06fabf92b18f97973b438f97ed9d7776a5e3
472	Gael Henrique Ramos                                                                                 	\N	joao-miguelda-cruz@example.net                    	d271e033afb007a50484b45576186fddf8cdcd86bd19fd571aaba660b69f9dc3
473	Srta. Gabrielly Aragão                                                                              	\N	tfernandes@example.com                            	956ae8334fb709db2b32e4942f146b3616458efcdd9c3c8242487626ddf7b50a
474	Henry da Rosa                                                                                       	\N	bcirino@example.com                               	c22d3bcc27909f53c065118dc9fc2d0bd20e6e57e21c6b6f5bd69b1c30639449
475	Ian Casa Grande                                                                                     	\N	melina67@example.org                              	1b62c5cd11968b44ee693d4b2d7bd5582783776dcefc5f37e98ba6480976f922
476	Juan da Rosa                                                                                        	\N	ceciliamontenegro@example.org                     	4e036b1cc9197eda4dd1b9b6e65fffd3a78371c91ca4d396d155627cf9db0600
477	Luiz Henrique Fernandes                                                                             	\N	karagao@example.org                               	e4688d4b9ad10084b830abc6a216c7b00317009d7a3d928396dbe259b8c86ac3
478	Isabelly Farias                                                                                     	\N	ana-julia64@example.org                           	b444fc640e0afaed7871be602cf43bb7f92fb39652fa4ff0f1b21b65ac49acf0
479	Brenda Rios                                                                                         	\N	maria-aliceaparecida@example.org                  	2c2f802553b8b3113ba0aee1bcb042c3025a951c4436b2409349ae56a163ecb9
480	Dra. Cecília Moura                                                                                  	\N	natalia85@example.net                             	9f222613f17231edd8ca0620172d06bde8d1869da18d8a990763794260cdca08
481	Giovanna Santos                                                                                     	\N	fcirino@example.net                               	9f5bbd0a5d64ed150faecd48f572083fd17c8063e5ee8b655f5ed6ae1574d460
482	Natália das Neves                                                                                   	\N	juan09@example.net                                	9edf51879082496fb0563c633f75ba241b28a8b4a73222ec725394d91a15771d
483	Hellena Oliveira                                                                                    	\N	vgarcia@example.com                               	2d238e8280d0d54005f1cd6d1a18f09224032ee28032ab42e3a567eb670921a1
484	Cauê Brito                                                                                          	\N	isaquearaujo@example.com                          	56940ba440ff9944ca1299157f9bb8e2a60e124896b97bb9e144fc84b01baa10
485	Nathan Brito                                                                                        	\N	pereiradom@example.org                            	1d4fa689849d6bc02dbac288e27e83fdb5dccc25817916483c5a7bf28aeef805
486	Dra. Sabrina Pires                                                                                  	\N	lauraborges@example.com                           	1965feec9dec3cb7bce15d5ca0a0be3f4abb66c0196b7483c0a780ceef21a1ea
487	Cecilia Farias                                                                                      	\N	mayacarvalho@example.com                          	9703871766663930d740286688264e8e346d17bf8a15d24dec276d60ff8d8ac1
488	Isaac Garcia                                                                                        	\N	castrodavi-miguel@example.com                     	d7d4a5878c2cf9ed60cb544a3ea3f3849147b06f67dec2e77faa04b179fc934a
489	Sr. Arthur Miguel Gomes                                                                             	\N	alexiamarques@example.net                         	fef397934eb78bea0bde819f53068ddcc69c47a197c9735b1da381478812862b
490	Luiz Fernando da Rocha                                                                              	\N	bmendes@example.org                               	ca8f5c243b3a05499cb37841d9b3c5d84752ca9ee2f9ef7d9c7196a80e376d0b
491	Benjamim Jesus                                                                                      	\N	pda-cruz@example.org                              	b1e10bfc195d6d63c78536c5d27747fb1dcb331f25d38eb282856f0c8cae27cc
492	Srta. Lunna Oliveira                                                                                	\N	francisco35@example.net                           	5b246d6a26f01974625f707e4b47dc358aa40dd11e3d2bb828b36f9450360b70
493	Alexia Viana                                                                                        	\N	vitoria11@example.org                             	0f2dcc9255f3014c76fa3f1ca2496ffe2f84375e1901e57dd5d88b9d3aa91c61
494	Davi Lucas Araújo                                                                                   	\N	brayancavalcanti@example.org                      	701b941cdad1ff718e3352bcdd465f779a91772a7882ea27652c331f383c55dc
495	Alícia Viana                                                                                        	\N	beniciosantos@example.org                         	d461eeb8d60775d74a629702531430770fdfc63519ef3a58e67775670ed1c67b
496	Davi Lucas Cirino                                                                                   	\N	novaesigor@example.com                            	f40a73a8019963862e83d3949465805480e1a3867bc1a425315e976ed7cd1d69
497	Cecilia Melo                                                                                        	\N	fernando29@example.org                            	fd88295c5d58160187e40a549a6f21f2132844378593e5e498437dcc450e1af7
498	Benjamim Almeida                                                                                    	\N	pedro07@example.org                               	44ec359f414d672a03dbec85ff5412c5f69846f4d8dedb184cf0c6dbe5730ae0
499	Isabelly Brito                                                                                      	\N	cardosothomas@example.com                         	0c33b10a801196a28e9c2f4af3250ae811b06bb3d0a7e00383123f2a39e6e170
500	Laís Moreira                                                                                        	\N	aguerra@example.org                               	3636749d1feab31d7a303b41d4ed9866439025b19f5a5c670796013a6ea203ef
501	Gustavo Henrique Fonseca                                                                            	\N	pcarvalho@example.org                             	e076154e934a92fa0ddcd25479fe876f34d3d62f705f82b990e60b78d3722d9e
502	Sr. Luan Nunes                                                                                      	\N	isadora31@example.org                             	1f014f67583dc21f1aceebbddf1c0f7fdab286140c76818af90238625cca3b54
503	Anthony Souza                                                                                       	\N	cgarcia@example.org                               	168f35afa95979f74c25d8a735c38e385cb7db6aba1649ca60988ef3951967f4
504	Bruno da Mota                                                                                       	\N	fernandomendes@example.org                        	9d899f5e5875d6efa32b9c2b2efef7c0360ddeb9284fa754ad6bef676b50b7cf
505	Ryan Souza                                                                                          	\N	wsa@example.com                                   	07d60afe877658761e9254586904d44a7358a0f650ba3ef5a0bb6323ff6f345c
506	Yasmin Nogueira                                                                                     	\N	hmontenegro@example.com                           	1f6e01cc1356cd077a521e7b27f1400164309710ca0c7fdb3fa1ce6e070a905f
507	Lara Lopes                                                                                          	\N	zmonteiro@example.com                             	e38f94ee53580b46850b21f744320819493a5fccc4ffdc504ae9aa2ee01d1f38
508	Dra. Natália Machado                                                                                	\N	oalves@example.net                                	31d82fca5fb810a265689873a76bcbe4df0597400f282feb2898e2f4c3bcfd39
509	Maria Nogueira                                                                                      	\N	isismachado@example.com                           	9596e5d7cbcb89477caa58778f94c029121befa6791ceeb2c3fd75ae5257d5a4
510	Yan Peixoto                                                                                         	\N	stellada-luz@example.net                          	6dcbfa5d683e5385073d248744c3cbe371ca9c483418a850e6211b500c3d3ece
511	Guilherme Costela                                                                                   	\N	ufarias@example.org                               	6e07debdce7b0ad917da6157fc57b5083433a696d4c0e5257751b3e8eefa1297
512	Alexia Silveira                                                                                     	\N	diasmaria-isis@example.org                        	0cb64c2f59974b257e8fa191369736f268c049412031e64f08226fd453c1d87d
513	Sabrina Oliveira                                                                                    	\N	vitorcirino@example.org                           	edcc91478a0a4267451963534b5f8e65abe358e5784277a1b2f0743262c84627
514	Miguel Alves                                                                                        	\N	estherrodrigues@example.com                       	fa4b6d5a3ca617d51ada70be1b12888adc54cb72ed616a100402388041ed433e
515	Milena Fogaça                                                                                       	\N	marcela35@example.net                             	5776c7d09b1ef59b62ed4d5041476cd871015223f18c29d5aa0434613ce3fa62
516	Ana Laura Sá                                                                                        	\N	larissa52@example.net                             	c7e329c68b24bb5bd5c94978dafa1a78f9f3cbbc14bb047851aea2698fcd662e
517	Bárbara Aragão                                                                                      	\N	barbosanathan@example.net                         	97ee940b2f1819008e86f063cd263026d8043bc7eaea00e1f68da35dd3e01889
518	Fernanda Peixoto                                                                                    	\N	mendesjoaquim@example.net                         	0127a196abc2d9e02b06f491d4f1cf15fedbb55c55acb2dd3b4536c7d8bf2b87
519	Sophia Brito                                                                                        	\N	gael-henrique53@example.com                       	6d98c2753047c5519c28621fac94347fe74fe16f4500bf135c8e596005ea5e3d
520	Leonardo da Mota                                                                                    	\N	dda-costa@example.net                             	065e643537e4ec51ce6c6d86daf63e471c226edb671162a0730271bdb0299eff
521	Brenda Vieira                                                                                       	\N	eloagarcia@example.org                            	fc71dda8255077feeeb46ffce7801dc688bc3b021f1b83202de4821189ecde32
522	Theo Peixoto                                                                                        	\N	isabel71@example.org                              	bd9513ef56b90ebf82c6fd4024d790b4c3373a84bcd491f4eed98005e2e20ed9
523	Nicolas Jesus                                                                                       	\N	ayla56@example.com                                	f2c847f7eae14c1ae01286dcdf3311ea2be8b03235b95a41b5d81c77c0cefa34
524	Yan Silveira                                                                                        	\N	caldeiraana-julia@example.org                     	9b27a31af178f30b668a6e1180d4c0c83b7ef3b25e22ec9a8478db20640c478e
525	Pedro Lucas Duarte                                                                                  	\N	jade70@example.org                                	92187c6e4cf9de3d37aea43144869546ac572744cd71109be0a160d860a17793
526	Luísa Guerra                                                                                        	\N	samuelda-luz@example.org                          	1e60324217e4175715ad0b958ffe4b3957888ec685aa5fc4d6271b166fbf6fc0
527	Benício Ribeiro                                                                                     	\N	diasantonella@example.net                         	b53d2138464ec99f7032063bef0c7193226a32f6cc1f8cecfe8dbaa349b8aa18
528	Ryan Machado                                                                                        	\N	luccaporto@example.net                            	55357a93a6ce1ffac131054e007026d7d145f3610b8def8b0102f3c325dce1a6
529	Lívia Caldeira                                                                                      	\N	maria-florcamargo@example.org                     	a08fc7c1c4b6c6783cd554d4b21fabcf73cee6e30738c76dba29dc3570a1cceb
530	Leonardo Castro                                                                                     	\N	ana-carolina78@example.org                        	f33d18ef9f8de038984a82ee45831cd6720f47addf5bebbdd178a0aa1856df96
531	Dr. Davi Luiz Barros                                                                                	\N	gustavo40@example.net                             	6b0551b6a116b4f44f561f487455420ed23f3f187471789ec27f49066c576b75
532	Sra. Rebeca Novais                                                                                  	\N	nicole23@example.com                              	a29e0cc46169a7f457d7b8a46f5b7f11d24d3702274d823511dfab73339cf3b8
533	Kevin Andrade                                                                                       	\N	diasmaria-luisa@example.org                       	ba2483b7efe0f08ce34a235ba7147a63081ad6a2bad53eefc757965bea830816
534	Antonella Araújo                                                                                    	\N	luigivieira@example.net                           	9de22502790b604ab9a9dac2b383a4c1064e23119e501c8f12388fd4cc128ca1
535	Marina Andrade                                                                                      	\N	cda-mata@example.com                              	780ebef81645c93146845df4eed47183426380e7fe46c34ff8e849f27162dd67
536	Ravi Lucca Araújo                                                                                   	\N	ferreiraester@example.org                         	a80621523c884692c53032c470ee8361660c562ca5606f1b109c45b1b13a53c1
537	Arthur Gabriel Farias                                                                               	\N	maria-claraviana@example.org                      	df1aa013feb5c5f6730c5cb471d114cacac88084a8edefb68d1537df152140de
538	Renan Albuquerque                                                                                   	\N	leaomaria-fernanda@example.com                    	560ebb2effba0d4da957b40eaf35a19c486428843c2c089c13e89bae9f84b3c4
539	Kaique da Mata                                                                                      	\N	fernandeserick@example.com                        	c21d690c7eb72561ee12d51b9683edeebfecb2d4bac023045823f2097f46342c
540	Eduardo Cardoso                                                                                     	\N	heloisamoura@example.com                          	f6476d1a7667288b456a4178502c8437a49b6d9e2e3512e48a490e34192c87a7
541	Leandro Jesus                                                                                       	\N	gabriel00@example.org                             	956fe5b28f7a0899b506fed9251bbfba7c18b35ef4088c6659337210e624ab99
542	Catarina Araújo                                                                                     	\N	vazevedo@example.org                              	f59056ed996ef38e388aafa1edb4197c1b84ded60eacef9296c6c9e1d58ef2ec
543	Nina Vieira                                                                                         	\N	ymontenegro@example.net                           	804312a6fdd0206ad513baa1ef7165d58d0331c6a97b7a878a004b76ff5b3cad
544	Sr. Carlos Eduardo da Luz                                                                           	\N	andradejoao-felipe@example.com                    	635f220f1fd644d47929e055bfc6e4f66da539f57cb98239842568398328c264
545	Julia Barbosa                                                                                       	\N	zcavalcante@example.org                           	474190e7b58102c307b57e18dd1874b65e516c782a51220ca4a5f670eaba2e82
546	Maria Laura Vasconcelos                                                                             	\N	novaessabrina@example.org                         	3a70f21bcad527523adc54ca08f3ed504f18e881667fad65f0c855368aa1414e
547	Sr. Gael Pereira                                                                                    	\N	eloahcampos@example.com                           	513a5e1e99682d564248c18fd8ca2ec4f50ff89b4b15140d0090fef5b3f90a6c
548	Dr. Marcelo Abreu                                                                                   	\N	maria-florcorreia@example.org                     	d8534db979f395943023b6b2e6491870e72c96b57b86e67275b940b1bd8e962c
549	Clara Correia                                                                                       	\N	ynovaes@example.org                               	707a2cfcb54e141e94fda23bb3f69d18490d27f8b78747d40521aa486a8d139c
550	Maria Clara Andrade                                                                                 	\N	ysantos@example.org                               	737927ec3a432384f59a353a677aadb221c0c7439e7a0891218cade83bbb3594
551	Vitor Barbosa                                                                                       	\N	agatha02@example.com                              	2c108d23f59c720797c15b50c8ed6cea9ff1645e6d6e71b2b1d175e62c273670
552	André Fonseca                                                                                       	\N	mariahvasconcelos@example.net                     	0d348b625f262611a6a38b71988bc5d57257cecb5858c91923003d0088de44bb
553	Maria Vitória Montenegro                                                                            	\N	yago84@example.net                                	358b82d8c117462547867d83fb8e6dd26efde040a5e86ec9d1018ba4a4bc07eb
554	Emanuelly Pacheco                                                                                   	\N	mirellacosta@example.com                          	e27920752f82b171c0bae0f112821c574602ba80ddc07b26f93b970e517f4b9e
555	Eduarda Câmara                                                                                      	\N	luiz-miguel15@example.net                         	f057452fc93b6f007962ccf24ef0adc8c5dfbb429eef568331b043ada384f9d3
556	Pedro Henrique Barbosa                                                                              	\N	maria-ceciliasilva@example.org                    	5ffad13e7daea41bf1752d9d3dafae9973857a092f96c793ead572015553dff4
557	Ayla da Costa                                                                                       	\N	yuri80@example.net                                	557d55d4fd7b1b6ea5d3e5e044024abe0621d852a918ed15146dfaf4cf41ba14
558	Ísis Ramos                                                                                          	\N	ottocavalcanti@example.com                        	c3d26b9dde8fb35d765a2d28f4e55a5a73d314bd23e7f5e18bd8f6a72f62c7ef
559	Manuella Farias                                                                                     	\N	zpinto@example.org                                	87cfe3f83651d509241510f655d963ef9c32b2efa1e179d3b5d348bc76cf4c88
560	Sra. Maria Eduarda Nunes                                                                            	\N	gdas-neves@example.org                            	e5da09c2a4f67feee3f6ebce7ad7be8778cbc55125d66d180c0e833fa0791876
561	Vitória Aragão                                                                                      	\N	ravi46@example.org                                	e31f610f6a9870d375ce5f940a4b3780f8077e96eb0a0bdd00aefc266ada0d5e
562	Cecília Nascimento                                                                                  	\N	bda-rosa@example.org                              	14a40517bd80ae38bc71b9ede87ac710f91d07395553093edc5734e0acb3f75f
563	Isabelly da Rosa                                                                                    	\N	luiz-felipe02@example.org                         	cb6aa5842518710170a7f63ee3f04c189feacb8121143bdd744a2800d7224fff
564	Léo Dias                                                                                            	\N	isabel89@example.org                              	4b72be6b0e247e7552931b6dc2fbc21cbff898c3851967c39325e6a9c045e07c
565	Ravi Lucca Ferreira                                                                                 	\N	wribeiro@example.net                              	3e7cdbd1c2aa3459345bd3e253f56a56cb4e937fa2385827681bb95aea40af60
566	Dr. Théo Castro                                                                                     	\N	qbarbosa@example.net                              	f03e5f61e30e4b8dab63bc4f4906934afcdc8251aa342480b11ef0f3642ab41c
567	Luan Cavalcante                                                                                     	\N	siqueirafrancisco@example.net                     	42f521373e3a4b10b01597e93f94ed426c505c4c7032a032f0cf61633257a937
568	Lunna Cavalcante                                                                                    	\N	rodrigo09@example.net                             	2405458051e1a1af699b66916f47b5109bde9445010e54323c2c1218f856244e
569	Pedro Miguel Cassiano                                                                               	\N	alicia40@example.org                              	79534e0e9bf42ff4ff83a8bddebc3d3ee6d4e8d62fb1d3f57e2067a9ba0acaed
570	Otto Dias                                                                                           	\N	souzamaria-clara@example.com                      	04774e4b55f0517047cbc52cd446861d938a973af1cb818c4b7ebc012d8e3da3
571	Vicente Camargo                                                                                     	\N	albuquerquebeatriz@example.com                    	62e7922db3647993d27e7ce43e800a999ccc729bbddb0e6e451ae7b7ddcaf324
572	Davi Lucas Novais                                                                                   	\N	alvesalexia@example.net                           	e20dd9b2719832cb9d0daf1f1dfd9986cc202ead1bef867dc321976fa61004f4
573	Marcela Pires                                                                                       	\N	bentodias@example.net                             	77e25d2675c5b7cebb4ca37804405d24bfd679706a1eb8f501ede9ee5d884dcc
574	Vinícius Andrade                                                                                    	\N	nmachado@example.com                              	830a80ce6b31be22fb28a3aaecaa7bd7167efee70531f7fd447e27c74d9a80f4
575	Lavínia Barbosa                                                                                     	\N	jfarias@example.net                               	ae7e887cf532634123d0507860d328a6e9333c4536f2f420394440c43f9d439e
576	Augusto Aragão                                                                                      	\N	borgesallana@example.com                          	0d0e2ba0d591831773c79cf9d2f03c44f6109533a653ce6360559548faf1bb68
577	Ana Sophia Santos                                                                                   	\N	vda-costa@example.net                             	29246d4b913ccf9da454a737551f81f9264a9503f4bd8e11465c5fb88008fa5e
578	João Felipe Dias                                                                                    	\N	luiz-otavioramos@example.com                      	8deb0cc7bf7b05f971d2e73dfb132b7964314e4e266bb61ac8eeb797b20fe16f
579	Rafaela Moraes                                                                                      	\N	pedro98@example.org                               	f5108da47c941f82a418f95e2c100334b3053b6fb2d48990ca05c9f9e956ad12
580	Mariane Pires                                                                                       	\N	augustocassiano@example.net                       	77b369b58d67d6ee4225f6a54e7b02c4add3e53b56ffbb09810cd75be5c97870
581	Caroline Alves                                                                                      	\N	luiz-gustavo16@example.com                        	daa220869b4d927be5f58a7a49412142a8d397c476b8705e9afbd75e59411e16
582	Sra. Agatha Nascimento                                                                              	\N	antonella37@example.com                           	83b981633c8a39e8389ea905de00445162ecbf32ad008d009ad402cdf6278d7b
583	Hellena Siqueira                                                                                    	\N	araujocaleb@example.com                           	e955e10d329783bb63ec226d607579afd8aa51afbd7609d23ac7e2387e096d92
584	Yago Rezende                                                                                        	\N	samuelviana@example.com                           	9bed9d12f52fa46831b0b1588fc5c7febab1661f204b8d96d50c08588f847442
585	Luísa Abreu                                                                                         	\N	otavioda-rosa@example.net                         	dc57c8b891e4b857a34b3329dbe0b80833aaac133f74994df734cc9a9441adc4
586	Dr. Rhavi Novaes                                                                                    	\N	luiz-miguel99@example.net                         	65a87efaf7e1b2187c83836b80351332db86238c976be47e2e37660c70f4de68
587	Rafael Leão                                                                                         	\N	larissasa@example.net                             	25bd91a8a6356277ebcc74c8735a4e0563db5d9902aac1f248756ef89c831442
588	Giovanna Cunha                                                                                      	\N	mouragabriela@example.com                         	06b044911945243443d35647fe89732696fe83b468b2343fe685d14506428ed2
589	Ravy da Cruz                                                                                        	\N	sophia66@example.org                              	dfc0fed511992c33071e9f425415404f6617c2408738aca846d5db1bd0904dc8
590	Ana Vargas                                                                                          	\N	maria-luisada-mota@example.net                    	a1fcd4d05cf31aba655ec79c67df3d51b5907cd14548bf986ad555a8749ffc97
591	Alexandre Vieira                                                                                    	\N	oliviafernandes@example.org                       	6abf027c76aaab86f657bb3d4dcec1c19c8c00586ba8c745d4bd45245616ea7f
592	Yuri Pimenta                                                                                        	\N	yuriandrade@example.com                           	67223d8c9ebd5119e920055ed8b7a4ee302af74201ab91bbc444d9d6f34e934a
593	Vitor Macedo                                                                                        	\N	cecilia41@example.org                             	63a7d81fa5abce2fc2d8374734f3c1f78692e7f9febb12d84500d4b0b844cbb0
594	Isadora Ramos                                                                                       	\N	rochaeduarda@example.org                          	86c72cc041f5a62bf6e375732848ea37e1a2be71421279ba7014a087639aff88
595	Benício Rodrigues                                                                                   	\N	guilhermeribeiro@example.org                      	c280e46a4126ae12de7928246b280cffe3c0d3a89801087a5b1b9de884584ece
596	Pietro Andrade                                                                                      	\N	ravi42@example.com                                	6512bc06777b2d258d9c06e26a85b6025e6c0ea6e631e97940c2337b8a817ccf
597	Dra. Marina Martins                                                                                 	\N	camposian@example.org                             	b826defee0077f1b88cdd86b66f1ffac58c2e9687decd7340253004bb15133b3
598	Luiza Macedo                                                                                        	\N	manuela16@example.com                             	20ff5012be5f9dbf064623b992a17f75a4e5a6bc13f4ffec8305062e1b37f2cc
599	Lucca Rocha                                                                                         	\N	rochacarlos-eduardo@example.com                   	c51712c22253695803f932fabbfc97847a2c0455b8bf087747b5613eb5e5bac9
600	Ana Vitória Mendes                                                                                  	\N	vicente68@example.net                             	74472bfee8052075fb9864daf98a04c489ab570769b039733e1ad9e6c2c2a2f8
601	Joana Nunes                                                                                         	\N	ppinto@example.com                                	73413b7c612f61bb6859d73d3917760641bdf0e53f0d306f80576a595935de84
602	Mateus Nogueira                                                                                     	\N	lopeslucca@example.org                            	d8478adb858eb17a7d5a19d8c8cd6cb0fd21e7cd9473dc74d4e735d226824041
603	Letícia Melo                                                                                        	\N	mendesayla@example.org                            	a6ee9b5d687c12802167c839251abfba74587911afeab79499b2d283df155a4d
604	Dr. Davi Miguel Moreira                                                                             	\N	otto56@example.org                                	073a490bbb1db6f871f45da7dfea33a9c0dfd1bea7998f0a4c9a98621084feed
605	Luna da Costa                                                                                       	\N	benjamin87@example.org                            	e82f45d38b568562ce34056f242837efd19f9e95165d3b031c07e95505b0f96e
606	Bento Gomes                                                                                         	\N	esther71@example.net                              	257e5c3df9c0811b4e00f61fd1d1833fc9b4cb4942627cc00ef7f4533d362728
607	Luan Nascimento                                                                                     	\N	lmontenegro@example.net                           	fe5111f741984acb6d00e7e18a1174085712741a2b61658e8a6fce25f41b44e5
608	Sr. Benício Albuquerque                                                                             	\N	ianpinto@example.org                              	f8500817d32db6aad7dfae099da2cd536515419ca365ae557be637b0b109589b
609	Júlia Machado                                                                                       	\N	pedro77@example.org                               	ff545aaf855ebdc2bb61c3cdee25a30554667287602c9fc393c2841c0a5b521c
610	Maria Lopes                                                                                         	\N	xda-paz@example.org                               	1abc94fe62aaac46d827dbae4de0a81b9e379cd2828b5394e0756bca8b1b35ae
611	Lara Ferreira                                                                                       	\N	moreiranicole@example.com                         	deaeb1016fd720cf7c4e59962463e5ada71f97fa7f66329fc8c74dc570bf52d8
612	Eduarda Barbosa                                                                                     	\N	machadobrenda@example.com                         	aee042060d9d6932dbffef5b714a3c6a9f4bb91e72bf3c31d30a00b6675a5552
613	Davi Caldeira                                                                                       	\N	omendes@example.net                               	c6a07ac5e29c4b7f1b880d7727499f76cd4b718bf85a7612103a75504b22b982
614	Ester Silva                                                                                         	\N	davi-lucasvasconcelos@example.net                 	96d73448728182e1afad58d99d90251ae8beb4fafef56df96746e4a2233c0a67
615	Esther Moraes                                                                                       	\N	anthony-gabrielalves@example.net                  	19be1f5fec0b4292d1653177a49d27c732d3d23f8e010940ad99b63cd55eb22e
616	Yasmin Moura                                                                                        	\N	pastorana@example.net                             	128ee7662336cfdd9710be06df300e3d8ea146a82e6e1568c10ec6da7570617b
617	João Felipe da Mota                                                                                 	\N	alanada-mota@example.org                          	d0563af5b6aea1f3cf1c424dfdb64e773a181419c6b75e72757175ad4c056505
618	Lavínia Nascimento                                                                                  	\N	yuricirino@example.com                            	15f5c90d5f0fb6ec76c47d8ee8a4b512d8421a8cfe91fb305519b8bde224b574
619	Eduarda Brito                                                                                       	\N	mendoncastella@example.com                        	d7bf7c1d9f623582b4abfd182c792e736fe2b61b1b58bbc1692052fb74dfccd6
620	Ryan Viana                                                                                          	\N	ninamonteiro@example.org                          	3f470982ba06a6d73e16386a296a12b6b92112e1c4e180590a628c1e6f0a4dce
621	Murilo Viana                                                                                        	\N	pachecoluigi@example.net                          	d067753b820dd5fe59d0696bc2ebd7f5835f2653208135569e94769a23f016b6
622	Sra. Ayla Souza                                                                                     	\N	zaragao@example.org                               	7b05717d2ba2555fbdc41ccdee5e8183ce577bcf12c66b3c012cd261b2658551
623	Sr. Matteo da Cunha                                                                                 	\N	juanda-conceicao@example.com                      	bd7eabaac1111aac867a75621d0af001b47da98991c19a66878573978ae73da7
624	Daniel Camargo                                                                                      	\N	pietropires@example.org                           	6902efd93be1eda1bbca47c677b139b920a6c3478085b74ac74cda0a53f809e1
625	Alana Cunha                                                                                         	\N	brunofogaca@example.com                           	5b862e25ade675b2711062665f3c7b4b3949d1d9cc163673816d7bf49c289e69
626	Caroline Duarte                                                                                     	\N	eteixeira@example.org                             	9114213ea0ab5e55238fc6ac3675fa0935ef4e476fa84d78fc8b5e6cb186f5ef
627	Vinícius Aragão                                                                                     	\N	yrocha@example.net                                	b554265ac3111039e153894acd574f96536455f0746da06f24d9be7ca0da4d7f
628	Lívia da Mata                                                                                       	\N	danilo31@example.net                              	c81dc7c344ddfdc463b5e8f4fcaa30d1a79c535ba5125ca097cebca48ccbac45
629	Brenda Cunha                                                                                        	\N	yuribrito@example.com                             	441725b333ff025cc823b8b9f637803e127257bac4f6d5cf008f8fb97c7c99da
630	Heloisa Costa                                                                                       	\N	carolinacasa-grande@example.com                   	d67ebfde43006367b8cf8797099d9234be8b103f42362c46a2b18bf0253bc358
631	Olivia Vargas                                                                                       	\N	lizda-rocha@example.net                           	5f057239c674b5305b8181ca02c88aff8244669d49997a1120a998bb6c9bb50e
632	Sarah Sales                                                                                         	\N	da-pazyago@example.net                            	21177b713024f7a76d4c695fd60169827f169e0e9766ff8c0fa99b593f369a4a
633	Lara Moura                                                                                          	\N	vieirahellena@example.org                         	643a55a077ed076c5cfe69c7ffc603840b06bff7e9639344e8012741123fa9f4
634	Thomas da Mota                                                                                      	\N	maria-luizacasa-grande@example.org                	0f2759fdf110d300384622cdb88029e2569da88045452d5293ee8615eabf83c8
635	Henrique Pires                                                                                      	\N	britoagatha@example.net                           	eb3deb23e50610821fb8ea2d8c1fb0fa55a6d414c0b298a6d6c28135b5e480d3
636	Raul Cavalcanti                                                                                     	\N	lbarros@example.org                               	f01375339b28a59c8cacf9d005ac86bec3deffd345d316088836653f49476392
637	Pietra Nogueira                                                                                     	\N	duarteyasmin@example.org                          	6029aaadcb0d1e755c49ff4a84adadd9296e186d7e3fb53466d7d84fb6bce4bd
638	Emanuelly Jesus                                                                                     	\N	henry-gabriel54@example.com                       	ad038af80b18925c1aefc5296d9ee0bccd7b7710f3412073a3edb3a17f52e563
639	Ana Liz Dias                                                                                        	\N	mrezende@example.org                              	48a05d86ecaf68420dee62006a1447503b316405bba4c0d42d756d3c9b910be4
640	Lívia da Paz                                                                                        	\N	mariah81@example.org                              	169c462900c2000d50153aa353c61c755436ccad65a336e86b153fa5868e5d84
641	Pietro Almeida                                                                                      	\N	xoliveira@example.org                             	1da85520944d9530e7ac52027ae4ed5d71165164a8cb5547f2a731098623c92f
642	Enrico Campos                                                                                       	\N	aparecidaisis@example.org                         	e4d79e10a966f98929df01dc9e3b9ef81193596389d1b44615b4e3b4e47ffa84
643	Dra. Ester Porto                                                                                    	\N	eloah84@example.com                               	d2d9f4ecff0d118080d35758efb04c998c081383990ba6bc304b79a0c8c7925b
644	José Pedro Melo                                                                                     	\N	thales25@example.org                              	a3ea40822f95a96c43537e04c6b9ecd49f171e924a7a54feed6dbc189e238b5d
645	Dra. Maria Flor Cardoso                                                                             	\N	maria-eduardanascimento@example.org               	e0890bbb1b7950c4c162e819c8630fa141255cf1c579c7d1f8f4bab4bbd4b307
646	Olivia Freitas                                                                                      	\N	ryan16@example.com                                	61925b0b70704fb4024f773d92301f44b9fa7574d52e9d85f386afab96b0461d
647	Luiz Otávio Aparecida                                                                               	\N	rafaela84@example.org                             	60e9296e3828c3503a135abe5252a9a9ae1634672dadcf50bdea081c7f91326f
648	Julia Cardoso                                                                                       	\N	oliver06@example.com                              	6213777f8eba3ff17c537348f8ce7443a1e6eee9beb74d25a5048f0debc29079
649	Helena Lima                                                                                         	\N	liamsiqueira@example.org                          	c33f402c7da7bbd08847e1549b417625b86a53db1cfba8894c8c80385fceddc4
650	Luna Cardoso                                                                                        	\N	alopes@example.org                                	067d16ebf3c7607c90361bd00610e35d444100756f570d1685cae1db9c96c4f8
651	Sr. Enrico da Mota                                                                                  	\N	borgeslorenzo@example.net                         	d6d9a10fd46de7c03ab16d06424c312b4829411297f81d0ef32e9c7ea016c6a2
652	Vinicius Montenegro                                                                                 	\N	joaquim23@example.com                             	507c9820aeb0ebb47cbc87e3d15071fcf517e7fc0e8e391737c9c601ec1da699
653	Isis Brito                                                                                          	\N	joao-guilhermecavalcanti@example.net              	4ef6dc745bb573222d849926a1cf48024689a603826a6b65bb45571dd7485da9
654	Maria Isis Silva                                                                                    	\N	lorenzo17@example.com                             	06f47091b723443282f0df6a671f17068f81aede60a693371c8424d43ab100fc
655	Matheus Costa                                                                                       	\N	camposerick@example.net                           	a9a077e5ba0d69af60fbb669b6bd2972ddd8b44f1925ec65d80344a8d4d13dd0
656	Luiz Otávio Ribeiro                                                                                 	\N	allanasilva@example.com                           	c48075deeab77d46f4df0543133ed605ee5bd7b91987ebcf3649b4830434e4f0
657	Sr. Fernando Barros                                                                                 	\N	bsilveira@example.com                             	5bfe2a7fa27d11bf6607e8c62845a7da528426cee027cdbcaac1b3a5a8b2ece2
658	Sr. Benjamim Fogaça                                                                                 	\N	lopesayla@example.net                             	ff456fb117a66476f6b9bb76a691ec1426488c0030d7ca1f777a5c79bfa121f6
659	Thomas Mendes                                                                                       	\N	zda-costa@example.net                             	d0c03286a32e596905daa52c8ccc3f0bb4d5f07e05792f98055defbda291d5a9
660	Anna Liz da Mata                                                                                    	\N	mendesmaria@example.net                           	761a9c1fe51683f0831d1dc1cf473248b614b54331eed4f04873bdea63c0de28
661	José Pedro Marques                                                                                  	\N	joana64@example.org                               	7d899c7ae501b10590543b59db455dc900a135705fbe4444daf021c871a7109a
662	Maria Eduarda Albuquerque                                                                           	\N	sousapedro@example.com                            	db7232ae3956d0d1eb367bea48ad769225b056f7596956e4d7d9194a475dae18
663	Srta. Evelyn Brito                                                                                  	\N	pimentasarah@example.org                          	e1b2a8d769032ab0514538b85c7c474cb793137c80711a4aa52bb14391324428
664	Sr. Pedro Fogaça                                                                                    	\N	enrico53@example.org                              	c9ab664c472884b0cd84e5e39c109e24b6afd5a3bacec528ed47264e789af5fc
665	Yasmin Dias                                                                                         	\N	luiz-gustavo82@example.com                        	47d1974bf2b4150fe938b7cee9c08100a90cb791db58428dda6c13cc7fd079e1
666	Sra. Alícia Martins                                                                                 	\N	maria-florpeixoto@example.com                     	72dcf9cef60cfbb9640e22e9af33ec11898b94bff74bef5b1695d0e1588f3d67
667	Ana Lívia Câmara                                                                                    	\N	cavalcantejoaquim@example.com                     	b6bd82850b260763abc7679f0d25bd385414c185b83b98fbce4557dd940d64e2
668	Laura Cavalcanti                                                                                    	\N	bryan78@example.org                               	b2ac0004fd72896f762cb5ca3c62f7369cfac5f0fe51d7805cf98f890ec9e12c
669	Benjamim Cavalcanti                                                                                 	\N	rafael66@example.org                              	63f692b97c90ec3a7146ee5cb563cdbb7bb34331e6d998f7f8fb09a595686fbd
670	Sr. Pedro Henrique Castro                                                                           	\N	wleao@example.com                                 	d22f6dc66e67e25fb30990982b9ecb0ec3cb70be4b6c1fff200432fe3cb6d690
671	Carlos Eduardo Jesus                                                                                	\N	freitasmaria-helena@example.com                   	744e717c5ac6b4ca1a2d85f0a151f83f5a41172892c7c976e150cf1ef24c7963
672	Carlos Eduardo Silveira                                                                             	\N	zbarbosa@example.net                              	81e2824b50933bc58e1a87326aa878a593f3c161be879ece6b08851d985bd187
673	Oliver da Cunha                                                                                     	\N	almeidaana-carolina@example.net                   	7d4a1635ec62c502c089f87e442ca1199b2854b19e55b9f14c8f763336a397e9
674	Maria Eduarda Gonçalves                                                                             	\N	joao-guilherme72@example.net                      	0596d0a6e66282509cc62453bb816047ba32c7698b795681579a76b4df09dfba
675	Isabel Brito                                                                                        	\N	emanuellymelo@example.net                         	e50dc0f3a6bbf7e8df7298c6b1d70b0a9a1c96ccce9a36020959ad3144106f4f
676	Maria Júlia Siqueira                                                                                	\N	cnovaes@example.org                               	b4109407a75c83e6de2d64a1af620c0bdac1a5bb9967752ea00ba01a10e1f801
677	Bryan Nascimento                                                                                    	\N	leaofrancisco@example.com                         	47f6011bdb2967a4169ee8df9d34895d87ad4e12cf200e5bc45a9921003ae077
678	Alice Vargas                                                                                        	\N	vda-mota@example.com                              	b94efe3434a99a206fa537e44769cc1581df05993c9df7e54e8581238d1633a5
679	Evelyn Marques                                                                                      	\N	falves@example.org                                	1f4d49a6167e21a9928649032ae8317d0451eb0c2719d1d2eb4deb05e8a0dfe2
680	João Gabriel Oliveira                                                                               	\N	viniciusporto@example.com                         	90b104147b79f1b1597d21eee17574a001b98d5e88262f8ac994abaf4bd90810
681	Lucas Gabriel Ribeiro                                                                               	\N	isaaccarvalho@example.com                         	963c63c85c7e76504d591d836896e1fba2fb10864fa73ccf8601f07803e09e35
682	Gabrielly Ribeiro                                                                                   	\N	paraujo@example.org                               	964699d99578dbcf0add8424930d51fcfa4df9ecd4b380f2540da7f1b9275005
683	Matheus Siqueira                                                                                    	\N	ylopes@example.net                                	3142f4c1ce4ca80b0494cc36a6654d43fe3b293355d838cde03bee222e9f2f3a
684	Yan Fogaça                                                                                          	\N	yuri58@example.net                                	399f24641c357753b2c51bfdb4cb98ca0cde22360b51da78b36c0990a6244aff
685	Henry Cassiano                                                                                      	\N	tandrade@example.org                              	44f7aaea418b57d722d9963a87bfd382a3fe7469fcda92fb1696d6764cb2cacd
686	Pedro Lucas Lima                                                                                    	\N	nogueirapietra@example.org                        	74c2c2eed673922533630ee0b329dfb0ce1c58116ab1c3c3ddd773c95027e280
687	Pedro Miguel Alves                                                                                  	\N	rda-rocha@example.net                             	e863a61782c2f1b349bf1a1c3eb606a1d4e440c17488db9ab47a0f8c1e620747
688	Thales Montenegro                                                                                   	\N	kaiquesousa@example.net                           	b10e398a5558e4ecee4ef34550aa80039e93cf38f3e3165df236f29668eaadba
689	Daniela da Mata                                                                                     	\N	da-matabenjamin@example.net                       	822ed6fe85f76c73ba7e0d7f365aa428d6c6406f5a4a6f041d620d8b3b0c91db
690	Luiz Miguel Novaes                                                                                  	\N	maria-vitoriada-conceicao@example.org             	4ddfe4dbde6e2595dc3dedcfe99cc2818bea37f39a587cd06aba1fd4c54ab4fc
691	Olivia da Costa                                                                                     	\N	juliada-paz@example.org                           	0b10d4e521f6b7bba07174d1cad68a77124d8df19030b16feb2135247811ba80
692	Yuri Fonseca                                                                                        	\N	nicole83@example.net                              	8fc8f4e92f9718f6759edc7cea1acacb079272e8654ca05967ad008b6d076325
693	Maria Eduarda Souza                                                                                 	\N	lorenzo16@example.net                             	c63fe81bea1f0f805d19287db6154440af73b1310ab0bb8b20d74983d3085e61
694	Sr. Luiz Otávio Brito                                                                               	\N	carlos-eduardomonteiro@example.net                	48a1201054078a1abfd567bdfdcd3f9ef2da29e9380fa18c443f694b106c32e8
695	Larissa Novaes                                                                                      	\N	leo91@example.com                                 	978ad8cf05dfc9469445738dd394d2c8fedef38c0d3521096657eabfc30896b5
696	Dra. Eduarda Azevedo                                                                                	\N	maria-julia05@example.org                         	a254d4853f4071e0cbe19b5ef1cf7253370311f457bf6733c2124535ebeb3749
697	Alícia Novais                                                                                       	\N	jesusbenjamim@example.org                         	62bac1ec23dd30bdaceda8e94345e95346111b9d06165255c7dfca583ffebc31
698	José Miguel Albuquerque                                                                             	\N	casa-grandemariane@example.net                    	3b5428991e8bc4dd516c094a115794b774d0e5fd09a78a884395065dc68192b7
699	Ryan Nogueira                                                                                       	\N	da-rochasabrina@example.net                       	5b6eae42ad74696f7b31960b54f25e653278c045115162a1368ccaae7d3b78cc
700	Sr. Nathan Borges                                                                                   	\N	lara24@example.net                                	2d7332a5141702da23c1252b05d3c20799a007e7ac037225876bc4b29e769008
701	Emanuelly Abreu                                                                                     	\N	leaomilena@example.org                            	b6e15a348f9ca7d1b086bd02c6ffbc9433a7ec20ffdfba4f89ca474a5caebac3
702	Isabelly Araújo                                                                                     	\N	yasmin15@example.net                              	2758d5fdfa96b4f17181c0dbcce69fb8f631458520b4c33e6409681912d3b629
703	Mariana Ferreira                                                                                    	\N	albuquerqueana-luiza@example.org                  	f3b0904655e0dd38d56ddbdc1ea8120050aa76a9d8ad25774a987f06c2affecf
704	Pedro Moreira                                                                                       	\N	asafe59@example.com                               	ed486520d6c100ca0a793b6e1017544dd129480f4a174bdcd6f79b505218ec69
705	Antonella Pinto                                                                                     	\N	camargohenry-gabriel@example.net                  	3a08c218ad711e66d65c05c755578633c48314f2a07192e2d9bf1232b9e95e17
706	Dr. Anthony Gabriel Vieira                                                                          	\N	franciscooliveira@example.net                     	1fc54fbc453906ea01fb7e4928450d19a80d9805a966aa261aeb730425eea91c
707	Maysa Barbosa                                                                                       	\N	maria-sophia60@example.net                        	e850f573edcbd3166554c24f1e8d7eb29b8a34cebd39f135e2fd52a883ee2b2d
708	Enrico Barros                                                                                       	\N	iangarcia@example.com                             	b09bf7b1072eac0e29a0b38caa3d4f8eaf39d4fa49060c00ef80815a00ae2872
709	Emilly da Rocha                                                                                     	\N	salesbruna@example.net                            	3e495f76d419a1561149b7817bf764fb2dcb28251708190e4439ec34954adae7
710	Srta. Maria Liz Teixeira                                                                            	\N	maria-sophia42@example.com                        	17225f918f4b10466a57cb58131388ebff1ebb26d2f05ec56b564b3ac4680eec
711	João Guilherme Ribeiro                                                                              	\N	alana88@example.org                               	9c0a47482b0db96f1af7ef7304895a875d168c218d63ff20bcf11acf224a0538
712	Srta. Lunna Novais                                                                                  	\N	edas-neves@example.org                            	06eaac070b935f9f31c4ffc7371417e2d3727954d52078757c292976cddc3da9
713	Caroline Mendonça                                                                                   	\N	enzo-gabrielmoura@example.com                     	586948af2cdd896c8908cbd42491d0c50c2d9c3ff46b3d13089f918d406f4628
714	Vicente Costa                                                                                       	\N	joao38@example.com                                	d72f6f08d80f0e4c581ef5e64d536a01d1f2b7eb1b1203411356c5ca511103fd
715	Bella Freitas                                                                                       	\N	lopesravi-lucca@example.org                       	958c210ff7089d17787c923d5dc80062796e9a04e76402dc6882c47dbd2633fe
716	Thomas Duarte                                                                                       	\N	asa@example.com                                   	98ca6ce9f73eb0413e23597d1d67e58e52f9bd1f76c7ee4ec08f3194e8d16096
717	Dra. Alícia Melo                                                                                    	\N	ksampaio@example.net                              	0a2b2a75e35fba1b90deff2509ba1395b6f99f0af283e965736739c1e1326e5b
718	Joaquim Souza                                                                                       	\N	isabelly62@example.org                            	fd16c0a43325f28dfdcc8bbda2d8bcca4bbbc302e4b890bb3d50902c58c888c9
719	Laís Lima                                                                                           	\N	ceciliaalves@example.org                          	94428f19a0962f7d67b2f238e6d38d7147ee072555edd80e6b4d8540eea40b8f
720	Olivia Andrade                                                                                      	\N	yanjesus@example.com                              	f56a247a72a7332760d5b9586b3d1d8df189fdc04920813b729be8ed0ca81ed2
721	Gabriel Caldeira                                                                                    	\N	joao-gabriel63@example.net                        	bd8dedd5a8a2e11353076b36bd0d44fc0ad1ce8277aac9ce24427e3648ca1c0b
722	Brayan Pimenta                                                                                      	\N	ferreirajoao-gabriel@example.net                  	f94f1dfe62914250b69986903e7caa116d3438135ab89c2412b6d8eb04f8502a
723	Sr. João Gabriel Aragão                                                                             	\N	joao-feliperezende@example.com                    	455ecaae2ba2428984066dc8a18f6ee7d2119aa6a4e5a46b68feebf59e9c603a
724	Luna Mendonça                                                                                       	\N	luanmonteiro@example.net                          	6cd6ef938a82b530741a7a2554a96766c7c764130310a91e651688f42e9413b7
725	Yasmin Pimenta                                                                                      	\N	rebecasilva@example.net                           	8e9949113ce530d55b15d425854e656b6383ae50e4d5e87b4226918dbd5161b1
726	Rhavi Alves                                                                                         	\N	costajuliana@example.org                          	5ac99b4667a13136c29fe8129801dd82c5a84dfec500b1e570e1bdd206eb8e60
727	Heitor Viana                                                                                        	\N	benicio02@example.org                             	acf70313d5a1576a90484c208a7bd45af9eb957913194a890619a646cf4bf8f4
728	Alexia Rezende                                                                                      	\N	davi-lucasda-costa@example.net                    	cc1647459860b9d688ba111da5e41c9544f7dcd1617faa35465c374df93646b7
729	Dr. Pedro Abreu                                                                                     	\N	isabeladias@example.org                           	5eea63045f1dfda0908507431509609e1f66fff440f267b115652845665a5723
730	Nicole Novaes                                                                                       	\N	agatha67@example.com                              	ae701eb55c231bfd827ee6bfb7293261074cecdcf4892938b2dc660273d8bf74
731	Bianca Azevedo                                                                                      	\N	kda-luz@example.com                               	738e35ad064bd0dc493b21815c2c67f46354e2d603bdad469a4661575d29ce5f
732	Heloísa Garcia                                                                                      	\N	da-luzgiovanna@example.net                        	40d783ce33c3a65060f1eae96be316ed18520491173dfbe6b37c4ce39ba13cc0
733	Maria Alice Aparecida                                                                               	\N	almeidajoao-pedro@example.net                     	e7711069e2a1e759290f371aa0a5741f2324792cfea10ddd0c128cf7417d8427
734	Clarice Jesus                                                                                       	\N	limamurilo@example.net                            	887113903e8d5d5d297342bee3b6453b6d2382cdf89154aa061119b4d916cc01
735	Ana Luiza Pereira                                                                                   	\N	maria-sophia69@example.net                        	0e59c03f8b265c3633e5a985def2de213b5425f5fe799e066024ecf142757b40
736	Luiz Gustavo Jesus                                                                                  	\N	da-rochaantony@example.net                        	20d5ee6513a6f77724cdf721abf2f4e74b34e0781948d0f56363a02c4b7abdee
737	Dr. Luiz Fernando Câmara                                                                            	\N	pbarros@example.org                               	00f030d71c0564a49f38bfe19d44141c0e1f8ea68ecea158745e83ecf4ea016e
738	Pedro Miguel Macedo                                                                                 	\N	iviana@example.net                                	bcf7366d43710dd4325c675f34b502539922432658cfe4a13f7922e34b1166a3
739	Augusto Correia                                                                                     	\N	gustavoda-mata@example.net                        	d09381b915138341869a456e75d4915beb1d79d63ed52971f7142122a1df0989
740	Sr. Enzo da Mota                                                                                    	\N	pimentaagatha@example.com                         	94bd244313b119d9fad599bc47e799547c515acde4dfeb2fd70cfc8147a891ea
741	Rebeca Campos                                                                                       	\N	correiajade@example.net                           	d71d61db622c869811cf3df2beaa1ed626b855167fed19cf10215673dd28f9d5
742	Maysa Freitas                                                                                       	\N	nviana@example.net                                	bc8fa2bd3c1d1d22942fe7d9322ba87c0086d7b0581a6f7dc010df9b101142a3
743	Fernanda Costa                                                                                      	\N	znascimento@example.com                           	d5490f10a40525e811e014a5600de776edb30a47b749312c87bf7fa13f81a71d
744	Maria Liz Cardoso                                                                                   	\N	camposluisa@example.org                           	3ce35e9f89e89380b16d4cfa2699e98c04dc693efe2a51e0461c5e1fe62d6c72
745	Yuri Pires                                                                                          	\N	leo02@example.net                                 	ec241abe9085c1337f8f40b77661ccc3926e549721e996ffc311860dc911564e
746	Francisco Aragão                                                                                    	\N	davi-luiznascimento@example.org                   	49859af197a7ccb09a2991fc7c4b979c05750f62d19f16f8fedaf13b0d83fc6c
747	Dra. Fernanda Casa Grande                                                                           	\N	jose-miguelnovais@example.com                     	18cef31901ce57d510e8bbe807c5d0609b63667dc005bf16011307018f8efc48
748	Benício Moraes                                                                                      	\N	santosdanilo@example.org                          	93831ead9248223cf53e651913392b37a794ca65cd068d4807aea7997de4ffff
749	Gabriel Melo                                                                                        	\N	isaque60@example.net                              	49171fbcb581da077419b76ed06ec3f90fd072fb5cb13024ddfb17fdcb6ea31e
750	Alícia Monteiro                                                                                     	\N	mirellabrito@example.net                          	54cdb64233dc0fac0780323fb4058d157aed145ba4becb85a99ef7ba484241c1
751	Beatriz Abreu                                                                                       	\N	eduarda42@example.net                             	a267fc482f1c2a95e75c3db9295a86b8c1d46f0dde073ffdadffa494cae1795b
752	Mathias Abreu                                                                                       	\N	iviana@example.com                                	1693db87234ff3746a37e95f655b0273943744760d5444af43b2696582dcd983
753	Melissa da Paz                                                                                      	\N	das-nevescecilia@example.net                      	94d04c1c7a99711b7f8cd246813baffef3f99bedc7b30273782962d230ea6bfd
754	Anthony Gabriel Cavalcanti                                                                          	\N	rebeca23@example.com                              	5fba487532557f710b4c4a586687245c2376d3940dd0b717c5fc843722642fbe
755	Vitor Gabriel Monteiro                                                                              	\N	vieiraisaac@example.org                           	5e7b117a31c832ae04d90354bf458ccbebf4bc1a834192cb58b5d595ddf5b53d
756	Júlia Nunes                                                                                         	\N	ncunha@example.net                                	17b3325732958076c87b40c8a9358814a96bd9d1935aa649b50fc66b731f0de6
757	Melina Jesus                                                                                        	\N	brunomarques@example.com                          	e250ac6e8e8341bc45df2a95ba4fdf3a52e32d637fab9555f0996819c47d8faa
758	Ágatha Viana                                                                                        	\N	isabellanascimento@example.org                    	5fb7a2ff05f99f2ecc067caa692e5ccb6d4eeda8d6fc5eebbcf3b34d49e9cea8
759	Gael Henrique Machado                                                                               	\N	kevin10@example.net                               	52fa756ada26ea715de5803c8d2032edde1bf6f29cf86cb591a43cbafecf5a30
760	Daniela Caldeira                                                                                    	\N	mariadias@example.net                             	56e1ccdfc2ce7ad331885e03ac41406695548e0c7c69c07ef03ab08f943a30f8
761	Srta. Ester Oliveira                                                                                	\N	haragao@example.com                               	fe6a69c7ad51f119bf3b396303a417132d2b63d0f57c7816d63b7cad013c95b7
762	Elisa Pacheco                                                                                       	\N	joseda-cruz@example.com                           	d752791f1ac21c5aaf71046eb15f81a1312f4d69caa0b5535912de19331fe4ad
763	Igor Andrade                                                                                        	\N	bgarcia@example.org                               	5b47a4e19af8eb14f66798985377f8236d985c2c940449216a1ad8ce7796b6f4
764	Dr. Murilo Carvalho                                                                                 	\N	otavio64@example.org                              	56653340f8b5e8eef1024b730d2814816aa56efc2973bc02b70bf3d238a0da4d
765	Mariana Cavalcante                                                                                  	\N	carolina88@example.net                            	1041406e0151f5b1435731dec9e899a04df2aa7c120bf2bdd3493b8783116c92
766	Dr. Mathias Souza                                                                                   	\N	cmendes@example.org                               	bf3d6afb5f6ad77b311e2733b712c5bc9b19a62872190194c20391be2084bca6
767	João Vitor Freitas                                                                                  	\N	theo68@example.net                                	cfef2eea5e4487a138480e5fb09b7d26955e58712246007a4551f015447b1985
768	Ester Freitas                                                                                       	\N	rda-mota@example.net                              	491c39546a7173bc96a588d0bc18ea95d690d759fa14119b540b1ed1a640435a
769	Igor Abreu                                                                                          	\N	jose-pedro65@example.org                          	458b2dc67fd320132bd75ddf6c3a218dfb8a92a43e3de6949d751634875b3f50
770	Valentina Monteiro                                                                                  	\N	cmarques@example.net                              	ca334a9766e7340f992a79480a619df660a2085a31820c41d1bd22c7bd8fed44
771	Mariah Rios                                                                                         	\N	nicole87@example.com                              	28c0065133ee07d376dbe152d5ba27547c8d108772476eb1ac63a5970005c106
772	Yan Cavalcante                                                                                      	\N	riosluiz-otavio@example.net                       	aab6de8ac95b67c1dd3067441c7f7617e864b4fa0d35da9b15a279b3dbad0d6a
773	Maria Helena Fernandes                                                                              	\N	asafejesus@example.net                            	1c1dbf63987be882cd47734dbc1ce2df96242e5a1c0af6ffde068cce1d7279a1
774	Sr. Davi Lucas Câmara                                                                               	\N	nbarbosa@example.com                              	4f782888bc38976f29024b569fa2d5f12835b32eaa2cf5700447c1b1c2b1cc1c
775	Sophia Lopes                                                                                        	\N	heloisaborges@example.org                         	66444e610bfe71bd7060fb06a3d887faefcad68db817372d8a224716b93cb232
776	Joana Andrade                                                                                       	\N	marquesjoana@example.org                          	83a1a78de60ac5f6199d71db3b21638c9290a0e9f2012a4ad4ee93be3fc2d4ab
777	Gael Fonseca                                                                                        	\N	ncasa-grande@example.net                          	daf7b86f91fcc6b637d9e0d2c798732eda1a70c283d2a5c0dc3edcf6a4a7468a
778	Eloah da Costa                                                                                      	\N	joao-miguelazevedo@example.net                    	b3a15fed9e04b899d71af74b9346dc5cf388478aa64e75cbfd008393fcd0e91e
779	Eduarda Oliveira                                                                                    	\N	milenamonteiro@example.net                        	7de02d55b4fc67b3fba6d8a0aa098ee3189bf22fc77790293bf5be4dfa1aa9dc
780	Maria Sophia Lima                                                                                   	\N	miguelferreira@example.com                        	181bc797584ba1e2371f6d50cf786538313910702ae970c6631375e10d91af24
781	Sra. Maria Alice da Rocha                                                                           	\N	evelyn41@example.org                              	72cd13dbcc64ef7d47d5968c23e83d6f07455345efb276d842244c793617f677
782	Felipe Cardoso                                                                                      	\N	ribeirorebeca@example.com                         	aff6d6fa5c25790d3b52f8164a8f2c21d0ec0056b30b3210c0d1032ab9939e9f
783	Cecilia Vasconcelos                                                                                 	\N	camarapaulo@example.net                           	e90040a0615bf40a28368d048d4d99c7ddfe63faf6f429affb2122fdd3859e7f
784	Gabrielly Cavalcante                                                                                	\N	bento07@example.org                               	5f1406197bf1e3d9328d993b4831d8151f6cbfb604d97a1f49288b3d792b36a4
785	Sr. Arthur Miguel Pacheco                                                                           	\N	maria-fernandaaparecida@example.com               	ac47c8f9548fa330fa4418b952a1b4ed915807bb74787d924f681ecb0c9992c9
786	Cecilia Rezende                                                                                     	\N	calebe92@example.com                              	54600e986fd2161bcde9cc37518a1d71b2998360e3ebfa802a6082c7d6bca935
787	Dra. Maria Julia das Neves                                                                          	\N	rezendevitoria@example.com                        	f6fc427c1fec706015a585282461bbeb127c6ad45931612bd010eff2c2c4dd39
788	Arthur Gabriel Pacheco                                                                              	\N	casa-grandebenicio@example.org                    	e09eb69857351694041ca3e3869919a56ffedf4f4c2f9a2137432eb357567678
789	Ísis Câmara                                                                                         	\N	maria-eduardasilva@example.net                    	7c093fb2d5b68a0b4bff0cb46022cb7c2c07dfdcbd9c9c78706caa3f671d8703
790	Maria Laura Fernandes                                                                               	\N	ana-luizapires@example.net                        	6ac072cd8d74bc3708430e8e2d80e6db7654fd16d09514b3218cc58a167743c9
791	André da Cunha                                                                                      	\N	caldeirajose-miguel@example.org                   	b89b717bb0f2cefa2b5f502e5a27327f3dfd7a4ef5b7508340a83a19fd08f8cb
792	Vitória Moura                                                                                       	\N	ana-julia28@example.org                           	4aaa3b4160a409677782545bcc57b24c8c03f1fe097acaaa88ab95edf89d6ed9
793	Vitória Cavalcante                                                                                  	\N	enzo-gabriel52@example.net                        	86ce2d337b0a888a5674508c6d21c0b43e99c817d11b1a0a6df093f504c3a3d6
794	João Pedro Viana                                                                                    	\N	ovieira@example.com                               	23fe382d0ba18dfedb8003befdf1f2c5f87c594ecbbfa6bc9c369494e8cd4002
795	Maria Luiza Novais                                                                                  	\N	apimenta@example.net                              	f71295c55ee2b6e40eb8330de573b6cb6aa415706c84f289f76da73bdb796e22
796	Luiz Miguel Vieira                                                                                  	\N	raquelgomes@example.com                           	80f0ea5470ba685828833c734469f544e942323fab6de68fc1841264743b613d
797	Ana Liz Moreira                                                                                     	\N	wgoncalves@example.net                            	31649f5061e2390499decce4074aa348a225c802155f22c458e543cd1c47cd5a
798	Ana Clara Monteiro                                                                                  	\N	cauecostela@example.com                           	f0c83785170653d33c08fc241439bfb6b789c75ccfe7d407ef1c4384dc7c02d7
799	Daniela Fernandes                                                                                   	\N	tmoreira@example.net                              	d1d4168d63c1d1da819b516aa3c63ad2348839ba1b23c8c8df6ad627513f2f9f
800	Ana Liz Marques                                                                                     	\N	henry62@example.net                               	aa6d9605c4e741a3e6100b45d8e6d5926f51c4c7203b25d9a130166bf4f628a2
801	Dr. Cauã Cirino                                                                                     	\N	abreuantony@example.com                           	8913af1d3c5360b73a2417bb9b5f9726b060d728736675fa33843e2b9ce4080b
802	Mirella Sampaio                                                                                     	\N	davi-luizleao@example.com                         	7f08d79454113fda5cdbf4e98b847359d29baf6e2b4a8b285ec03b36aabf3539
803	Danilo Sá                                                                                           	\N	mouramilena@example.com                           	b8e0ce99abcb40a98cc3c14800e37f3356ba7f254ec2fb5329c3e042769364fc
804	Maria Vitória Sales                                                                                 	\N	naparecida@example.net                            	bff6abfa0a3a99b45f6d93d3c7c7573e16d085cc3a6e82d234eda8fa24289e12
805	Miguel Novais                                                                                       	\N	lunna93@example.com                               	496f0c1074ed5fd479a0dfefa8fb276ca3a92dc168daeaf003cf6b5984047bb7
806	Maitê Duarte                                                                                        	\N	svargas@example.org                               	7aac6b7f1c05978825e373ba3176f8ca83b7326fb017b9ed0feb55b915a394d9
807	Ágatha Freitas                                                                                      	\N	zmelo@example.net                                 	480fe6aba1997ab9a839de73e28e3d5ad9bbca6733d5eeda8b397065d7853844
808	Vicente Dias                                                                                        	\N	novaesrhavi@example.org                           	8513eb915cc2aa8159e5c6f1041c4768a2e5e500d50a83985eaf0cf0b382fa3c
809	João Vitor Pacheco                                                                                  	\N	melinabarbosa@example.net                         	16b9795f3741e6e10cefbace039c38467398085546890e6e9a5f022ef328f9c3
810	Juliana Cavalcanti                                                                                  	\N	marquesyuri@example.net                           	39f5d0c9f59a0c5fd3bfc80f28a986d5a6e9be0e9ed961236e90bd5541057cec
811	Ana Laura Borges                                                                                    	\N	rodriguesbreno@example.org                        	6f24deeb19a9ed716b6feabce8e3c6e31e41597a4bb1efcddd95e076fe4d770c
812	Sophie Castro                                                                                       	\N	alicecosta@example.net                            	30ee85da1d22abcf4b54ff1351c976e94bebf00c424fcd9e2e903db400c7d94c
813	Sra. Maitê Monteiro                                                                                 	\N	gustavo-henrique18@example.org                    	cb365b2796eccc4b7880f6b0e9cd1a32935af8e942e9c7b0b644f78aa1542c8d
814	Paulo Macedo                                                                                        	\N	araujocarlos-eduardo@example.com                  	7dd5de5f8d1b2da0427f18cdbce753c86a3d74210b27f53d4a2dd2662c0ec109
815	Henry Gabriel Leão                                                                                  	\N	da-motaotavio@example.com                         	bafb19ede53fd2ffdecc412df3214727a8167324ecb117033044b27c18963826
816	Sr. Otto Nunes                                                                                      	\N	muriloribeiro@example.org                         	b9080556ebb8dd8c7423dde4e7ba1fca7837e3e6b4aebe6f3ac90b2b546ff594
817	Dra. Antonella Freitas                                                                              	\N	teixeiralais@example.com                          	5c5291498e2ac466ad0fe061d244a708241da7698ba20538c3bee272e39a4f5b
818	Nathan Brito                                                                                        	\N	vcirino@example.net                               	5025957a2c95377bd666eafb77a5c389ca247e41c947d3d874c88aa52596573a
819	Gael Henrique Melo                                                                                  	\N	yguerra@example.net                               	c567be4bbc4e7254fcba6dd2df358f7d817df63a133ffa92792a301bd01446b5
820	Letícia Rezende                                                                                     	\N	fernandesantonio@example.org                      	d1a4be07c936117a912d8c80b27d2fc3c676d9421a9f4718b36ac918b6f0f6ac
821	Dr. João Vitor Duarte                                                                               	\N	sophia70@example.org                              	d5778a1edae38cf2bf06d08b4e2fc453945d89630b373a62a47c7606fa947b48
822	Bruno Casa Grande                                                                                   	\N	caue70@example.org                                	ad897e43c34eebb7cbb1d5b1a216b9095fc1ef030352770c82f2756cdda9d989
823	Sra. Caroline Pastor                                                                                	\N	cduarte@example.com                               	75615612d85f6131cc7e8d421ce8420802a8540ca5fb8b7a372c5c9f0abf6e22
824	Isabela Marques                                                                                     	\N	esilveira@example.org                             	a68aca1ebcdebd97593b7d858d7b1667971326daf1a849a5b151798c06d424b9
825	Maria Araújo                                                                                        	\N	catarina74@example.net                            	2acfc181aff364bec76d53b9a7a27c68d5477c6d95d8aae464214b2135920de5
826	Luiz Felipe Teixeira                                                                                	\N	agatha82@example.net                              	1c1cfb602d60e5ace3537b45081a16a784619ac7ac5eebf7c960a1872bb12813
827	Vitor Gabriel da Cunha                                                                              	\N	silvajoao-gabriel@example.com                     	c9ea19973d6c07021524ee0542c994fd6bc3841fd36fcc04603ba0fd37b4e137
828	Vitor Gabriel Cunha                                                                                 	\N	camposnina@example.com                            	eca9c4c4f18c6848ca27ca7afa17dd7347aaa7973a2be327cd7388949644d709
829	Arthur Miguel Melo                                                                                  	\N	silveiralorena@example.org                        	4c905855a78b37c0717ea0c56da8c3989cb5580fc831faa52440496ab4effe0b
830	Agatha Rezende                                                                                      	\N	nascimentojose-pedro@example.com                  	b926a08416e482126faf9c0501b2d95041ecf2f6cdc1766b5ae54611751cf67a
831	Enzo Barbosa                                                                                        	\N	rpires@example.com                                	7fd11dcbca98dda1679ea0305afd26fead295536ee3b9e381f83e6718835f675
832	Matheus Dias                                                                                        	\N	rochabella@example.com                            	6600ce6ef94e699d08611d83e6c8c8e8a61db55a74a219a617b0c8988f20f08b
833	Lorena Cirino                                                                                       	\N	vitorialima@example.org                           	0103532289b86ef4cc023ec804c55fdf81ba92c185aed80d2aa29f947b12439a
834	Maria Luísa da Luz                                                                                  	\N	sampaiobrenda@example.net                         	032fc632c693804677ad8c006de4001824b9376ac35f2c8cd68e78128e8b905f
835	Erick Araújo                                                                                        	\N	ecamara@example.org                               	59f320ccb37d69444fbf5c552dbf34ce148faa010b64d4379600590b6646925a
836	Ravy Souza                                                                                          	\N	paulo79@example.org                               	1f2f832dc81aedf4ab11e6d59a4e9a943bd27f310792bfbe43d23dc4008d4251
837	João Pedro Novaes                                                                                   	\N	wda-rosa@example.net                              	ce3875cdeccc0078070986b69dd3d46a2757edd3bfcfadd0543a12414bfe285d
838	Josué Peixoto                                                                                       	\N	vasconcelospedro-lucas@example.com                	6b83019d731506f6838f879a4f56cb8d9c4ce8d9b8d2ed625fc817b97dc4a807
839	Ian Vasconcelos                                                                                     	\N	mendoncaoliver@example.com                        	550bfe9ae2e3828d5f7087c22df63044cc41f0d809ad074c632ce1918a5be2d5
840	Valentim Pimenta                                                                                    	\N	yduarte@example.org                               	b4cd1238c8969a86f9bdc6bdf917496bcd05d71a49c5d5600886ea2d5baf2a5b
841	Yan Aragão                                                                                          	\N	da-matagael@example.org                           	fba990dd34473747f012e91e48495f7ddaba87fb70e8edc809c6214072ff43c0
842	João Lucas da Cruz                                                                                  	\N	marquesvitor-hugo@example.org                     	55fc141974df61d3798776790dcaf4835de9d13a38fe1d95cb6e246568246b73
843	João Felipe Porto                                                                                   	\N	svieira@example.org                               	ad34666ed7af6b811cf13d69b81e5723a61e5031578f6f371d5ebf946532b031
844	Anthony Rezende                                                                                     	\N	sampaioliam@example.com                           	7132bccb6564d8f2212cd46985a1dc2778c7dc306276cd25c678bcb3dac1f18a
845	Pietro Fernandes                                                                                    	\N	vcosta@example.org                                	09cca4485a2c22130d64f3d177c402f9b739ec3f2484893d9e6cb412fe9f8f4b
846	Isabel Carvalho                                                                                     	\N	carvalhojose-miguel@example.net                   	d47e638c98b37935c1b3e2939285350de581e0bf9016ed701bcea01afd030ef0
847	Aylla Nogueira                                                                                      	\N	fernandamachado@example.com                       	19de614cbd675fc025a64877e7a9632dc2b2d81546f8c9c86d6f30650b19f203
848	Ayla Rocha                                                                                          	\N	eduardapimenta@example.net                        	3fb30f305493a8a721c9a823bbad7578a830b5315afea44d12e3014cdffb8990
849	Bento Jesus                                                                                         	\N	lucas-gabriel60@example.com                       	4116dcddcbf38bf11957ff1e6c3952ad8947d5b1f5c4753d1a03c22fec7353a8
850	João Vitor Ferreira                                                                                 	\N	ravi-lucca91@example.com                          	504fa020f238280a74b656f593fe8d2fa4a85ac45a4afcf51d8ca6d0b3bb1e50
851	Sofia Machado                                                                                       	\N	srezende@example.org                              	e1d5627c03e7feb14d35cdf9e50dc841d4dc7239815f7aa8d2e5b5258d3589ce
852	Sr. Isaac Teixeira                                                                                  	\N	jose-pedro17@example.net                          	6fd4fe7d0a093bcd6d723e7e818ad5d08aabbfae14f1d669dc33cbe5168819a3
853	Ana Carolina Mendonça                                                                               	\N	ucamara@example.com                               	e6b10838077003f992cc14bd7ad143b42266d1f5419985e37c3e876f6910c2b5
854	João Guilherme Andrade                                                                              	\N	vitor-hugocardoso@example.com                     	8b272f83713a0f19ba0dc683fdab232aa459f5cdb404fca70c9658e2b595ee10
855	Otávio Rocha                                                                                        	\N	murilo56@example.com                              	598453de3e0380e3a146d2acb5b1dbbddd338d2202804650b0b9fb5a4a33eda9
856	Dr. Vinicius Azevedo                                                                                	\N	jda-rocha@example.com                             	72ec228a6d3d74167dde161164e0f5a3d68397354c281f2f0c6d140540b95989
857	Thales Gomes                                                                                        	\N	zoesampaio@example.org                            	cbe559762f8f37b67f4ef17d770097fb73c9832fa9c98032f28159e91ba1bf4e
858	Gustavo Pacheco                                                                                     	\N	vicente58@example.org                             	4895b2230263bc491a75e32c1e8db553681576c9c2d3088af102bd5a95d07ad7
859	Gabriela Nunes                                                                                      	\N	yan77@example.net                                 	5ebd8592dd60e4e0872213bca83be4bbd04323a494d4bfd62ebcab036f917809
860	Sr. Lucca Novaes                                                                                    	\N	danilonunes@example.net                           	3fd897568304216ac486f8057ecc18c27c9364ef648e9dc7fcbc5851debf7efb
861	Stella Cunha                                                                                        	\N	maria-sophiacunha@example.com                     	6d1024f29931600bd0ebdd04d9f393604689879c3d3094783e171357b1081eb3
862	Joaquim da Cunha                                                                                    	\N	rafaela92@example.net                             	26c4816ba3e4351a4beb72bb1b69ec2fb06cd4884e02b8ff1c2044fc00bda6a0
863	Catarina Cardoso                                                                                    	\N	guerraantony@example.org                          	44e6517144b4bb2b2da671b93ae41962b13443b844f765bd561ec3c13463c8ae
864	Alice Porto                                                                                         	\N	thomasalmeida@example.com                         	ab8558c96b6a6cbaa25c485537c8fdac06285c23c4c000acc413db717ee6dba8
865	Mariah Cunha                                                                                        	\N	luanrodrigues@example.org                         	750e6f3d1686bc2ba22bddfd9084932821ae21f508cff99132151d2e390b4a2e
866	Henry Aparecida                                                                                     	\N	kmendes@example.net                               	e4db50de9ce6a4759437163e1589c5e8c062140292563c265d44d85c9c87fd00
867	Isadora Martins                                                                                     	\N	clarice25@example.com                             	5f85ac0709d569335490a35040d068e66823f5637eb4fa4461e729ad8fc6774c
868	Manuella Mendonça                                                                                   	\N	sofiaviana@example.net                            	0b5ad6c772e91592e5ca2334b739a73c2ef2d5cff17f30dacc6b6124269fce00
869	Alana da Cruz                                                                                       	\N	xsales@example.net                                	bf765fb1fb0b8e83bae051e2dc684683c7cd704ae45699ec7d3d4b16190d7945
870	Ana Sophia Castro                                                                                   	\N	nathanpastor@example.org                          	28e58110ea05c5a6d0786381b157f58d00b0cd5c8e15c03520f225f5381d6150
871	Antônio das Neves                                                                                   	\N	maria-helena21@example.net                        	3c4052660c8f0f8e504b35044cd97ee7f5595e148c53f03daf6a46b83adb088a
872	Ana Lívia Sampaio                                                                                   	\N	dfreitas@example.org                              	9a57f08f1bc354f95ca74a7f24f791b147daba9e299d7ac9ac2612b8b490fbef
873	Isadora Vasconcelos                                                                                 	\N	pedro-miguel62@example.net                        	8ed6be9c28c1c982fd87758c3a60e7b8e7f0dfe15cedf5c774b2284e3b23e8a1
874	Bryan da Cunha                                                                                      	\N	cfreitas@example.com                              	a29e6d8ec6878e725dd7d0530fabf1073be0170f4d4d0fffb26fff1ca8607c36
875	Ravi Lucca da Mota                                                                                  	\N	barrosnina@example.com                            	d81f64b6a24716ddab258adec8584f1d4ebc6637967140859d626d4ab8b6646f
876	Eloá Marques                                                                                        	\N	ferreiragiovanna@example.com                      	a0d0f2af7e691e666c7e13b4c225cc09364675e625e5e4459e754a85de2ec22e
877	Sra. Ana Almeida                                                                                    	\N	sousaapollo@example.net                           	8c93f7fd7d09d373c1d1f9a7b9a44e915e3270329feeb7fa48b01f392aa4b554
878	Igor Castro                                                                                         	\N	tcardoso@example.com                              	9516735914f43f5b41c248fe6c1522d7f189ca8fb33aac351ba2fac72d4bb5a0
879	Dra. Ana Clara Silveira                                                                             	\N	natalia43@example.net                             	4df85f3081889c7b09b184bb9a193e96c59fc24bd460cb73280a1acaa0c0e6d0
880	Eduarda da Conceição                                                                                	\N	camposjose-miguel@example.net                     	f9f3e11b0f0257b3e372cea3ae33de27bcf691b06f5264f69ad27c8a43fd0f75
881	João Felipe Lima                                                                                    	\N	pintobenjamin@example.com                         	006e1c4ff0c70f805a0c4ce0b2f731cd6706972e347cf87302a4efee40b950cd
882	Davi Lucas da Paz                                                                                   	\N	da-motamilena@example.net                         	387dd4c59f1114b8cf87eeb64437b8deb7d2e861b80f9c2ea76d1c0e7a10d7ec
883	Luana Aparecida                                                                                     	\N	cirinomaria-clara@example.com                     	619da2e2ec38370d1482907420e8be833261c0e5d1cd9d3adb1690511cefd036
884	Lorena Duarte                                                                                       	\N	sramos@example.net                                	8f0a178d95c5fd93a14773f9d4b6fc81cc7fb4b9457126ee7071e19124ceb2d1
885	Dom Gonçalves                                                                                       	\N	hsousa@example.net                                	0ee5ef214041ced6decfea6c06734ad17bb00ee121a2f69091f22c9e5f0340bb
886	Natália Gonçalves                                                                                   	\N	isabellada-luz@example.org                        	27b86483004df8fd7643c9428d4c9668c218c94229d9f045d4c366f7530c8c04
887	Luiz Gustavo Barbosa                                                                                	\N	cassianoliam@example.net                          	0a6611a57388b9f84e906ff08bdd2b29604117b847c0d71984c03513efc2a63e
888	Felipe Casa Grande                                                                                  	\N	da-conceicaonicolas@example.org                   	d9fb541aff9fe7105db10d92045c8008b89f21781c65fde26ca92f81fc8b790b
889	Sr. Luiz Miguel Martins                                                                             	\N	kfogaca@example.com                               	007f59df18afa6337e6bbdacfa5e92e44e37c805650586739ab148471b9853ef
890	Pietra Pereira                                                                                      	\N	heloisa10@example.net                             	b928de149049a9c2d4c529da90d753c81435750a7aaa81e5eb7c002dd6b5c2ae
891	Cauê Gonçalves                                                                                      	\N	vasconcelostheo@example.org                       	c6b7299599a099a5c6fb41ac1834434d18aaab58c5c89599596b144671eecf33
892	Agatha Viana                                                                                        	\N	marquesvicente@example.org                        	7c354ffe235ef4b366fb92f9357530406ff4204815f6dc3b5809e29615b14c9d
893	João Lucas Aparecida                                                                                	\N	viniciusnogueira@example.org                      	51a12ae18c92a0e1f295a3d93824a6a75159050b85e3b117a0a9f874a06e50e1
894	Sr. Joaquim Peixoto                                                                                 	\N	yuri92@example.org                                	0e3a3c38b3ff4b576ccf8bb377f1adf3638d915c9a5319f138ac301f7299f7f5
895	Yago Melo                                                                                           	\N	joaquimsouza@example.com                          	3c94310c08ac23cb3fe7ec115512b9f6b2e7ab385b9fa156ddc7f9027a65b84d
896	Eloá Jesus                                                                                          	\N	rodrigo06@example.com                             	903681952384d266bb1d57106597a4b6ea6c854b88974ddb7a3690c21eb1b101
897	Maria Fernanda Moreira                                                                              	\N	ana-luizaguerra@example.net                       	b97eef95e0948df44a5a5708ab5ffcec772f49c5749274d4de8b8e86df0dbf9c
898	Leandro Pacheco                                                                                     	\N	maria-sophiamoreira@example.net                   	5a3c8a5022cdc5d306b325772ddd724b7948efa42a5c1135762f5306661319d0
899	Sra. Ana Clara Sampaio                                                                              	\N	henryda-costa@example.net                         	f2fdd1e8d119e4ef25c04de8b65319936a080b03f98205ece4fad2e501e5a702
900	Carolina das Neves                                                                                  	\N	limaisabela@example.com                           	5c0178827d21b56b052ab0ccbb54174d1419c3e4f735ea9d48cb9e1fbdb79a55
901	Caio Nascimento                                                                                     	\N	mateus56@example.org                              	674271a682b605022b515efb2f10fca976f8713d258e112039ed6b89eaf68f8e
902	André Moura                                                                                         	\N	isabel72@example.com                              	9d480fb5d382891c3a5a47658357c14531bfe2a6479650870d0d9cb993d3588e
903	Esther Ribeiro                                                                                      	\N	nvieira@example.net                               	9e53d86035bffcd7bb045d83c82bf1b8dbfd67c4cb1ab3341be960c0241e169b
904	Isis Rios                                                                                           	\N	augustogarcia@example.org                         	213c67131d0c18b211df1767a5b0def2923278b215d58d1b783ef09e1e49daf7
905	Emanuella Gonçalves                                                                                 	\N	maite40@example.com                               	6f9270dca00ff0d67497ff4999d5c3d79deb6c62d7b367a1e7156c734e64aeb0
906	Enzo da Mota                                                                                        	\N	vsiqueira@example.net                             	8072e89cd9228dd9f619523b895e0908067cf986c9ca6f35f50123b893934a49
907	Eloah Ferreira                                                                                      	\N	nunesana-beatriz@example.net                      	80710b8404910f7a878d39482993b78a25e79ae6517183623dd8ce4a304ed0f6
908	Sr. João Miguel Sousa                                                                               	\N	rafael24@example.org                              	4bfd084794e05d3fa1bb6991bd1c2a35e1d3015f8980a1918567c466d897cd54
909	Diogo Gonçalves                                                                                     	\N	marcos-vinicius24@example.org                     	a57562f0abba60c139366912b65b15e3766e1a988843b78b6c2193d9b6c8c57c
910	Ana Carolina Brito                                                                                  	\N	maitemartins@example.net                          	3cd8a8c4832db21c280aa532e8b2dd479e585146a1330d09f1d85bc172a585d3
911	Henry da Rosa                                                                                       	\N	moreiramaria-helena@example.com                   	bde6f8ec89b12a384b621bd2624abbf91b1ae6517f83217827d5ac7a569eb647
912	Anna Liz Peixoto                                                                                    	\N	luiz-feliperodrigues@example.org                  	3572acb412b2b431833346734fd7e9965e43f93ea3406abf0f1e0d31232c279c
913	Srta. Mariah Sá                                                                                     	\N	tsantos@example.com                               	ec5f81fd50f3ca1c79bf4e212529af95eb6f4f47612cdd523b5280b7fe8311b9
914	Maria Liz Vargas                                                                                    	\N	ana-cecilia51@example.net                         	4f88f248150b72f3c5d7e1ebd6ec07e880e8185a95e61575c50e4a62bd2d68df
915	Davi Lucca Alves                                                                                    	\N	ceciliacirino@example.com                         	15939f9faadcacbab4c105f9d49af172f981f05194c37ebda29073b615fbdd4c
916	Kaique Santos                                                                                       	\N	joaquim52@example.org                             	1d7f419a71d8f64f0facfc2d6edc9c55f8f4f94c93f2fedc7a8afd6be31627f8
917	Dr. Thomas Viana                                                                                    	\N	kmontenegro@example.com                           	de820934ecbc42136aa82ce56ff9f87dad76decb89f5cf186c0e6d6405aa2dc0
918	Luiza Gomes                                                                                         	\N	murilo22@example.net                              	0fd1a41e9620301db3610b2e74240986055b5e9e2048eb85aaa76c3ac2822542
919	Antonella Mendes                                                                                    	\N	raragao@example.org                               	c014a420a420da5bc971e766bc5b8cddd682259e0aafaed84a535c3f932054dc
920	Srta. Lorena Campos                                                                                 	\N	pedro-miguel38@example.net                        	e4ce35e260d1deed4a190affd96c74a1241a686b42ae0ee259166f62eff30307
921	Daniela Gomes                                                                                       	\N	ana-luiza49@example.net                           	0d4609370b55be5ac673d195530e2cd79fa686bca89b7bd13ae74ac8a143e3af
922	Rafael da Paz                                                                                       	\N	isabella51@example.net                            	f34467f9c9b53b5138159941f939e2ddc44e499a68dbfa05bb77ace69d806451
923	Esther Nascimento                                                                                   	\N	casa-grandealice@example.com                      	4311119f78c0e9d649698996d5f0076a9b6e9fc13bd57d75fe48ca2b63f18314
924	Vitor Monteiro                                                                                      	\N	maria-eduarda40@example.org                       	098ad68adb5d0d3368f5e8f6ec2e9ca4307eebd94a43645c184152fe72316488
925	Lorenzo Farias                                                                                      	\N	sabarbara@example.com                             	9279fad578ed4221811856432823f98aa0537537aa78d1d85af2da84a4679822
926	Dr. Yago Porto                                                                                      	\N	stephany97@example.com                            	46f400a2c1426b9ee32f90591cef30a558f63ce79a8216ec3592851f2eae2b3b
927	Elisa Peixoto                                                                                       	\N	jose-miguel75@example.org                         	7fc8cec30ce4ad2ff5113e7c1f034a833a6c0aee3ec20d3b5da88f914759407d
928	Eduardo Andrade                                                                                     	\N	pachecocamila@example.net                         	b1baa744580279dbed0796081f0ac07e5b168ce68161df7a2c9f3617ca3494ad
929	Ana Liz da Costa                                                                                    	\N	peixotogustavo@example.com                        	b9ba03ba7b6a5df1b539a04499be50df80ea5acac031b893c93d279d45d13adf
930	Sra. Sofia da Cruz                                                                                  	\N	gustavo-henrique23@example.org                    	9ae3ddaa342253c6e3e9f6b4de715b2fd7b71b116e3d392d03a2b3784609cd95
931	Pietro Ferreira                                                                                     	\N	carvalhoarthur-miguel@example.org                 	07b2cdfd5d17d36f1dfabb7cd24ba9478b869d7d52c6d325322eb44561406662
932	Srta. Amanda Ramos                                                                                  	\N	ana97@example.net                                 	daf0d80a4b4b1b0cc9b0c52bbdafc71231ef6f6375dbbc745b60284ef76dce4f
933	Olivia da Cunha                                                                                     	\N	stephanyfogaca@example.com                        	53494ffb8f9805d47c0a00df760b1380b86e3cb151fb4d5f52b5b8465778d761
934	Daniela Duarte                                                                                      	\N	iaragao@example.net                               	a18c8dc7831d326f60f784e5253331975360dc61ff45ee80b5dc2a2a028722ee
935	Hadassa Pires                                                                                       	\N	kda-conceicao@example.org                         	2e44113778a1844f5e0542a4f1267b6d98875ce4f9a63d8eda10e7815a2c4f09
936	Luna Vargas                                                                                         	\N	lopesmaria-eduarda@example.net                    	7dec4e58e9eec8c5e9493a6519580b5b9f7eb96293289822f15c3a067196752e
937	Sr. Raul da Luz                                                                                     	\N	aurora06@example.com                              	c74b73d025b6221c4b55b5ed8e7b64089e778f9472833564bbc4b1b0bdbd42d8
938	Paulo Teixeira                                                                                      	\N	otavio00@example.com                              	940252c983afd990cbbb2549592c79f5d61d749bc23a01646a335152f05a4df6
939	Maria Flor Caldeira                                                                                 	\N	holiveira@example.net                             	fa37d403e9718fc98b3cd7d3971f3c69ded6caaf22d80fc80629c5f9576f3016
940	Ana Sophia Moreira                                                                                  	\N	theonogueira@example.com                          	e73521578be312da78c0dfbb981ac71723906c2a26b45efbb851414f6c251e0b
941	Isabella Pastor                                                                                     	\N	brayandas-neves@example.net                       	72a77722f5f2b278145050bd84736230870e1a0f0d5ab0d67ec72e0351358459
942	Caroline Silva                                                                                      	\N	josefreitas@example.com                           	00133f2c78b0f26b17331bb368a9b01f6572fc19326b2fbc3fd86fa65f67e611
943	Henry Gabriel da Conceição                                                                          	\N	hsa@example.com                                   	a04624a7ebe9fd8ad6f88b8eae101a8cbb28827e80cc966cafb36500a8a93552
944	Dra. Ana Luiza Oliveira                                                                             	\N	manuella22@example.com                            	04d8240a9419fbe9b15e1acbf2c7af7a28cbbd5fe2b5a3b6562e452484b3bb7f
945	Laís da Paz                                                                                         	\N	nalves@example.org                                	c6d03a4e5d69c6120b6c483234c497c0533706dc7df495b2e4c8cc93872a872b
946	Luiz Fernando Nunes                                                                                 	\N	vitor-gabriel83@example.com                       	8e9b1871c7fd02af15541ab3b35e9202f29b2611e011b918e314abc5f2de8683
947	Enzo Gabriel Nogueira                                                                               	\N	da-motalavinia@example.com                        	7b375e9d4ae4f2c5acc35dc3be3bc450bd87f3620591ce30ef23148b63188b08
948	Dr. Marcelo Abreu                                                                                   	\N	wabreu@example.net                                	de2dddfdae8dd855e45a778a01191df26748ddbdcc312739679919dae92ff122
949	Davi Miguel Sousa                                                                                   	\N	machadodavi-luiz@example.net                      	85a7d042257acf9ffe194184d69e094343f92b76c34c914444b609fb2d41df31
950	Benjamim Martins                                                                                    	\N	vasconcelosvinicius@example.com                   	f36bac535e61b94c128bac1baef26abebf5cbd38ee95afdc163518ed9c03ac02
951	Maria Isis da Conceição                                                                             	\N	araujopedro@example.org                           	312c19571ace89caaab19f0e9cb3d6824734823f31bbb1831cc5b336b65d21ce
952	Mirella Santos                                                                                      	\N	yabreu@example.net                                	5d8f2382ab4e18010427695190ec4dc5b01629859d925a0e434505b6f2548619
953	Sr. Brayan Costela                                                                                  	\N	vabreu@example.com                                	46eb3ac3cabc6e3637012c9b61b0e69c4685209fb51a95ed9eab705ec36ff235
954	Alice Porto                                                                                         	\N	sarahbarros@example.org                           	aa1577e195243c2ce8034a3deed46ad6950dfe25c3686687cc22d03d29f4d703
955	Ana Carolina Costela                                                                                	\N	pedro-lucascamara@example.net                     	60fbf43b1a7bd9cd56fb0fb53c553b7be1151808aa2a4c194b78c850b4b7f70b
956	Srta. Kamilly Câmara                                                                                	\N	otavio22@example.net                              	a31390378423602a7a88ee36209ee39faed3bcb4ab0a52053ac800638a2ce925
957	Larissa Andrade                                                                                     	\N	maria-helena06@example.net                        	0addc5f1087acff566aaeceef237a35045689d32608a34735a46c501c4a10fb3
958	Ana Beatriz Campos                                                                                  	\N	machadomaria-luisa@example.com                    	ab63f94550d6b60644bafb5f1e70597c89bcb43ee957ae849981ed7e006d3bc0
959	Maitê Ribeiro                                                                                       	\N	hadassacastro@example.com                         	76bd1ed88698d73f4edba7aaa95c4ca38a623bfc7c8483e25d5721a2f019b344
960	Dra. Agatha Casa Grande                                                                             	\N	jesusemanuelly@example.com                        	003db1bc6e93eeaf0dc1ff15d56b1f9ca1f67f5ea5b463fab4c51b8934fd29db
961	Ravi da Costa                                                                                       	\N	da-pazcecilia@example.net                         	74549edd33b9749ceae3f03561fc991d2bb48812dc3bd90be73bc75d1aa2dc53
962	Luiz Miguel Moura                                                                                   	\N	bryanporto@example.org                            	40b553180943d92ea53308aa35eaf4cec86498e8e54c219608d1094a79faaf2e
963	Juan Abreu                                                                                          	\N	kaiqueazevedo@example.com                         	ec22f663addac07a517d3efaf4fdecd26d3b24ae769bdda7c1b8219dafbf07cd
964	Bryan Costela                                                                                       	\N	joaquimmoreira@example.com                        	fda5d8eae93a4a3d1203b4d7ae32547585eca642583daca9853ec58c9dc217e9
965	Ana Beatriz Andrade                                                                                 	\N	silveiramaite@example.org                         	6a4f80fc03e690719ec4edd3db9446cb01670873e2be1794d0cb9b67bdd1735f
966	Sr. Luiz Miguel Almeida                                                                             	\N	fariaspedro-lucas@example.org                     	bcbb2f990d07850f11f5c1657c7c6626c30e981b59510289b71037ee581f377d
967	Alexia Cavalcanti                                                                                   	\N	manuelafreitas@example.org                        	4a16cd3053212bcdc40ee9942087da0b8895624b96dfe06b66481a93400b9ccd
968	Dra. Eduarda Pinto                                                                                  	\N	araujodiego@example.org                           	b42887d5d6b41bc3347dcb75a3d5fc49da97db1a18a08d2b02f786dc1c534eb8
969	Anthony Gabriel Santos                                                                              	\N	marcelafreitas@example.com                        	12a061f4e94845e0d9270a36d07de7b25063dae9fa34ed4496fbfe76ffd47e8a
970	Dr. José Carvalho                                                                                   	\N	fariasyasmin@example.com                          	533d1da3ab71c4ab5db439c437e5c0a04b5fb0f81c337ec3135e19eb29b83da1
971	Maria Luiza Sá                                                                                      	\N	tdas-neves@example.net                            	dde476b916309fdf1fb4a006324f081a1c5a49a2b3b6fd7e8fcc42fb24e24b39
972	João Felipe Santos                                                                                  	\N	valentim47@example.org                            	a6567b14a4621794542987f20e766fda69938897d86a4c4279f297cf70575765
973	Milena Novais                                                                                       	\N	fonsecabella@example.com                          	86b6d30bef3c5ff6bff94ed373651fe04d791b23d976e3fb2aa8efedf39241bd
974	Sr. Bernardo Leão                                                                                   	\N	cbrito@example.com                                	bca1cab61b077a903f4e097b41f55c691635b4391dfd8f7081a2dae43ea3dc4e
975	Samuel Brito                                                                                        	\N	allana46@example.com                              	f80aaaf27ef2a3ddf24b6f6042ddea4b6e8409db8faa598524b68d4c7657142e
976	Thiago Albuquerque                                                                                  	\N	tandrade@example.net                              	0ade283e37333c721f34a637814b7e70e44ae8e7a1c1bb4791dd71f4ce81c48e
977	Cecilia Carvalho                                                                                    	\N	piresjoana@example.org                            	f88a04239488a1a4b308b1f53134079528d0799ff767a5ca87c7e5b0698e051e
978	Pedro Miguel Vargas                                                                                 	\N	juan21@example.net                                	1fb82e15243d85390d654107be037f8917aff01765841ee2ba6241a71a382b63
979	Sara Cunha                                                                                          	\N	yan78@example.org                                 	e64ff14159f167fdb97f85ef3ec12675bf792e11798cf6f32e8fb111c775dafa
980	Samuel Sousa                                                                                        	\N	noliveira@example.net                             	2e877271475192e647a37442da01353c215ed377ac25d268e7f21cd369f2aae1
981	Hadassa Cavalcanti                                                                                  	\N	aragaoyuri@example.com                            	2d6df2c814ca3edebf79e54a69ba5f2a5dbe8f7e95741b604b7e9eb9ffafb733
982	Lucas Gabriel Castro                                                                                	\N	benjamimrodrigues@example.org                     	2ed353cab74564edd8e5461f7681f5691afa25edf46dc15f2948383487c17c40
983	Antonella Gomes                                                                                     	\N	luiz-felipe68@example.com                         	45acccf552095354ae20f85dc424143bf474d6fc8c2db4258618265f17275b9a
984	Sr. Théo Porto                                                                                      	\N	siqueirabrenda@example.org                        	afae88b70fa62b87856b8d698b7f0ea192dd759386b1e4bf8557aeb99c1ef337
985	Vitor Gabriel Peixoto                                                                               	\N	pedro-lucas77@example.net                         	406e78cec62e26efc4a7a8a4b303aef7c71bf7c5a39d6e9a314040ad9100c7b0
986	Clarice Macedo                                                                                      	\N	diego25@example.com                               	8be80cc29a1ea9fdd9a9eb360570b0a5ed6f6bb54a6410d8b33031fcde36931d
987	Paulo Novais                                                                                        	\N	bpimenta@example.net                              	d0245a72f5a52e2384947885966c2ad8e6209202da0e4c380a811982a2f79663
988	Gabrielly Peixoto                                                                                   	\N	emanuellyborges@example.net                       	4e53db541cf2accad449dc1bf476311b2b39509083f84106480364fe78aca311
989	Isadora Peixoto                                                                                     	\N	bcamargo@example.net                              	fa72cd23ea312f4702531fb902484be6fa522b4e6276f45543503251563ceab1
990	Gael Henrique da Mota                                                                               	\N	lcamargo@example.org                              	8cd917efd988cf525bfd88a5101288801b071e6a07d686c8e7f0b160186e610d
991	Matheus Ferreira                                                                                    	\N	joao-vitor57@example.org                          	cfc5a1644fddeef3dca53b98252799704c61b7a90348a9c5a87eda072a3cefda
992	Matheus Pimenta                                                                                     	\N	vicentelopes@example.com                          	b60fa75a9823bcfa9a636ca60d6e73fe94d944696da86c7a59e656b0c408493d
993	Matheus Cirino                                                                                      	\N	fariasdanilo@example.net                          	e14dc3fd8c73bc4097d9397ed8047e0ca4cdafd497c8005deebe8b365069996d
994	Liam Porto                                                                                          	\N	luiza70@example.net                               	ac74eb1c4146d26319b020a74ffb072a85b209b8eb3dfdfd12c0ccbf2ba337e0
995	Benjamim Peixoto                                                                                    	\N	nalbuquerque@example.net                          	01cb305ee0198b8e531e97c1e7c2248046f566742fe2b7eebe75000702c3cbb1
996	Arthur Guerra                                                                                       	\N	ana-julia65@example.com                           	fdceda721761cf457ef86f548a512ca73b93b04fc24223a311cae93a430ba95d
997	Caio Campos                                                                                         	\N	monteiroaurora@example.org                        	b33df9bd81129ef3d560c69938edfc37fafdcd49715c6fa363758cc30c6d4d41
998	Srta. Bianca Lopes                                                                                  	\N	thiago27@example.org                              	257b8fdc0d0cd3143d361c3f708ebe7deef59632074f9dc8c4e3f0a5ac4857be
999	Oliver Aparecida                                                                                    	\N	fogacaemilly@example.org                          	d49a52bd6a23416d5a0672c1af8388ce0d6457b8764b7beadc943a69d5edf751
1000	Zoe Novaes                                                                                          	\N	francisco62@example.com                           	c7b5617633749530f07bb9b3d0ffc29c3c687dba821c34cbaa1992fdbdf446fe
\.


--
-- Data for Name: Plataforma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Plataforma" ("idPlat", nome) FROM stdin;
1	Plataforma PadrÆo                                                                                   
\.


--
-- Name: Livro_idLivro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Livro_idLivro_seq"', 126, true);


--
-- Name: Pessoa_idPessoa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pessoa_idPessoa_seq"', 1000, true);


--
-- Name: Plataforma_idPlat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Plataforma_idPlat_seq"', 1, true);


--
-- Name: Livro Livro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Livro"
    ADD CONSTRAINT "Livro_pkey" PRIMARY KEY ("idLivro");


--
-- Name: Pessoa Pessoa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pessoa"
    ADD CONSTRAINT "Pessoa_pkey" PRIMARY KEY ("idPessoa");


--
-- Name: Plataforma Plataforma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataforma"
    ADD CONSTRAINT "Plataforma_pkey" PRIMARY KEY ("idPlat");


--
-- Name: Avaliacao pk_avaliacao; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT pk_avaliacao PRIMARY KEY ("idPessoa", "idLivro", "idPlat");


--
-- Name: Pessoa uq_pessoas_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pessoa"
    ADD CONSTRAINT uq_pessoas_email UNIQUE (email);


--
-- Name: Plataforma uq_plataforma_nome; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Plataforma"
    ADD CONSTRAINT uq_plataforma_nome UNIQUE (nome);


--
-- Name: Avaliacao fk_avaliacao_livro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT fk_avaliacao_livro FOREIGN KEY ("idLivro") REFERENCES public."Livro"("idLivro");


--
-- Name: Avaliacao fk_avaliacao_pessoa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT fk_avaliacao_pessoa FOREIGN KEY ("idPessoa") REFERENCES public."Pessoa"("idPessoa");


--
-- Name: Avaliacao fk_avaliacao_plataforma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Avaliacao"
    ADD CONSTRAINT fk_avaliacao_plataforma FOREIGN KEY ("idPlat") REFERENCES public."Plataforma"("idPlat");


--
-- PostgreSQL database dump complete
--

