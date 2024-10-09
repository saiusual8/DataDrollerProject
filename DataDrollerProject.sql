--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.4

-- Started on 2024-10-09 15:45:39 CDT

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
-- TOC entry 216 (class 1259 OID 16508)
-- Name: grocery_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grocery_categories (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL
);


ALTER TABLE public.grocery_categories OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16507)
-- Name: grocery_categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grocery_categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.grocery_categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 4325 (class 0 OID 0)
-- Dependencies: 215
-- Name: grocery_categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grocery_categories_category_id_seq OWNED BY public.grocery_categories.category_id;


--
-- TOC entry 220 (class 1259 OID 16590)
-- Name: household; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.household (
    household_id integer NOT NULL,
    household_name character varying(100) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.household OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16589)
-- Name: household_household_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.household_household_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.household_household_id_seq OWNER TO postgres;

--
-- TOC entry 4326 (class 0 OID 0)
-- Dependencies: 219
-- Name: household_household_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.household_household_id_seq OWNED BY public.household.household_id;


--
-- TOC entry 218 (class 1259 OID 16558)
-- Name: purchased_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchased_items (
    category_id integer NOT NULL,
    category_name character varying(100) NOT NULL
);


ALTER TABLE public.purchased_items OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16557)
-- Name: purchased_items_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchased_items_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchased_items_category_id_seq OWNER TO postgres;

--
-- TOC entry 4327 (class 0 OID 0)
-- Dependencies: 217
-- Name: purchased_items_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchased_items_category_id_seq OWNED BY public.purchased_items.category_id;


--
-- TOC entry 222 (class 1259 OID 16598)
-- Name: receipts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receipts (
    receipt_id integer NOT NULL,
    household_id integer,
    store_name character varying(100),
    total_amount numeric(10,2)
);


ALTER TABLE public.receipts OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16597)
-- Name: receipts_receipt_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receipts_receipt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receipts_receipt_id_seq OWNER TO postgres;

--
-- TOC entry 4328 (class 0 OID 0)
-- Dependencies: 221
-- Name: receipts_receipt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receipts_receipt_id_seq OWNED BY public.receipts.receipt_id;


--
-- TOC entry 4155 (class 2604 OID 16511)
-- Name: grocery_categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grocery_categories ALTER COLUMN category_id SET DEFAULT nextval('public.grocery_categories_category_id_seq'::regclass);


--
-- TOC entry 4157 (class 2604 OID 16593)
-- Name: household household_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.household ALTER COLUMN household_id SET DEFAULT nextval('public.household_household_id_seq'::regclass);


--
-- TOC entry 4156 (class 2604 OID 16561)
-- Name: purchased_items category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchased_items ALTER COLUMN category_id SET DEFAULT nextval('public.purchased_items_category_id_seq'::regclass);


--
-- TOC entry 4159 (class 2604 OID 16601)
-- Name: receipts receipt_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipts ALTER COLUMN receipt_id SET DEFAULT nextval('public.receipts_receipt_id_seq'::regclass);


--
-- TOC entry 4313 (class 0 OID 16508)
-- Dependencies: 216
-- Data for Name: grocery_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grocery_categories (category_id, category_name) FROM stdin;
\.


--
-- TOC entry 4317 (class 0 OID 16590)
-- Dependencies: 220
-- Data for Name: household; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.household (household_id, household_name, created_at) FROM stdin;
1	Smith Family	2024-10-09 16:57:21.448348
2	Smith Family	2024-10-09 16:58:27.543711
\.


--
-- TOC entry 4315 (class 0 OID 16558)
-- Dependencies: 218
-- Data for Name: purchased_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchased_items (category_id, category_name) FROM stdin;
\.


--
-- TOC entry 4319 (class 0 OID 16598)
-- Dependencies: 222
-- Data for Name: receipts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receipts (receipt_id, household_id, store_name, total_amount) FROM stdin;
1	1	Costco	150.00
\.


--
-- TOC entry 4329 (class 0 OID 0)
-- Dependencies: 215
-- Name: grocery_categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grocery_categories_category_id_seq', 1, false);


--
-- TOC entry 4330 (class 0 OID 0)
-- Dependencies: 219
-- Name: household_household_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.household_household_id_seq', 2, true);


--
-- TOC entry 4331 (class 0 OID 0)
-- Dependencies: 217
-- Name: purchased_items_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchased_items_category_id_seq', 1, false);


--
-- TOC entry 4332 (class 0 OID 0)
-- Dependencies: 221
-- Name: receipts_receipt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receipts_receipt_id_seq', 1, true);


--
-- TOC entry 4161 (class 2606 OID 16513)
-- Name: grocery_categories grocery_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grocery_categories
    ADD CONSTRAINT grocery_categories_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4165 (class 2606 OID 16596)
-- Name: household household_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.household
    ADD CONSTRAINT household_pkey PRIMARY KEY (household_id);


--
-- TOC entry 4163 (class 2606 OID 16563)
-- Name: purchased_items purchased_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchased_items
    ADD CONSTRAINT purchased_items_pkey PRIMARY KEY (category_id);


--
-- TOC entry 4167 (class 2606 OID 16603)
-- Name: receipts receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipts
    ADD CONSTRAINT receipts_pkey PRIMARY KEY (receipt_id);


--
-- TOC entry 4168 (class 2606 OID 16604)
-- Name: receipts receipts_household_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receipts
    ADD CONSTRAINT receipts_household_id_fkey FOREIGN KEY (household_id) REFERENCES public.household(household_id);


-- Completed on 2024-10-09 15:45:45 CDT

--
-- PostgreSQL database dump complete
--

