--
-- PostgreSQL database dump
--

-- Started on 2011-02-18 14:50:13 EST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = brand_info, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1513 (class 1259 OID 16483)
-- Dependencies: 7
-- Name: website; Type: TABLE; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

CREATE TABLE website (
    sid integer NOT NULL,
    url character varying(250) NOT NULL
);


ALTER TABLE brand_info.website OWNER TO music_infra_owner;

--
-- TOC entry 1512 (class 1259 OID 16481)
-- Dependencies: 1513 7
-- Name: website_sid_seq; Type: SEQUENCE; Schema: brand_info; Owner: music_infra_owner
--

CREATE SEQUENCE website_sid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE brand_info.website_sid_seq OWNER TO music_infra_owner;

--
-- TOC entry 1803 (class 0 OID 0)
-- Dependencies: 1512
-- Name: website_sid_seq; Type: SEQUENCE OWNED BY; Schema: brand_info; Owner: music_infra_owner
--

ALTER SEQUENCE website_sid_seq OWNED BY website.sid;


--
-- TOC entry 1804 (class 0 OID 0)
-- Dependencies: 1512
-- Name: website_sid_seq; Type: SEQUENCE SET; Schema: brand_info; Owner: music_infra_owner
--

SELECT pg_catalog.setval('website_sid_seq', 3, true);


--
-- TOC entry 1796 (class 2604 OID 16486)
-- Dependencies: 1512 1513 1513
-- Name: sid; Type: DEFAULT; Schema: brand_info; Owner: music_infra_owner
--

ALTER TABLE website ALTER COLUMN sid SET DEFAULT nextval('website_sid_seq'::regclass);


--
-- TOC entry 1800 (class 0 OID 16483)
-- Dependencies: 1513
-- Data for Name: website; Type: TABLE DATA; Schema: brand_info; Owner: music_infra_owner
--

INSERT INTO website (sid, url) VALUES (1, 'www.fender.com');
INSERT INTO website (sid, url) VALUES (2, 'www.DRstrings.com');
INSERT INTO website (sid, url) VALUES (3, 'www.elixirstrings.com');


--
-- TOC entry 1798 (class 2606 OID 16488)
-- Dependencies: 1513 1513
-- Name: website_pkey; Type: CONSTRAINT; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

ALTER TABLE ONLY website
    ADD CONSTRAINT website_pkey PRIMARY KEY (sid);


--
-- TOC entry 1799 (class 1259 OID 16496)
-- Dependencies: 1513
-- Name: website_pkey_index; Type: INDEX; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

CREATE UNIQUE INDEX website_pkey_index ON website USING btree (sid);


-- Completed on 2011-02-18 14:50:14 EST

--
-- PostgreSQL database dump complete
--

