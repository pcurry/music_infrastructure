--
-- PostgreSQL database dump
--

-- Started on 2011-02-18 14:46:56 EST

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
-- TOC entry 1509 (class 1259 OID 16464)
-- Dependencies: 7
-- Name: brand; Type: TABLE; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

CREATE TABLE brand (
    sid integer NOT NULL,
    brand_name character varying(250) NOT NULL,
    website_sid integer
);


ALTER TABLE brand_info.brand OWNER TO music_infra_owner;

--
-- TOC entry 1508 (class 1259 OID 16462)
-- Dependencies: 1509 7
-- Name: brand_sid_seq; Type: SEQUENCE; Schema: brand_info; Owner: music_infra_owner
--

CREATE SEQUENCE brand_sid_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE brand_info.brand_sid_seq OWNER TO music_infra_owner;

--
-- TOC entry 1805 (class 0 OID 0)
-- Dependencies: 1508
-- Name: brand_sid_seq; Type: SEQUENCE OWNED BY; Schema: brand_info; Owner: music_infra_owner
--

ALTER SEQUENCE brand_sid_seq OWNED BY brand.sid;


--
-- TOC entry 1806 (class 0 OID 0)
-- Dependencies: 1508
-- Name: brand_sid_seq; Type: SEQUENCE SET; Schema: brand_info; Owner: music_infra_owner
--

SELECT pg_catalog.setval('brand_sid_seq', 3, true);


--
-- TOC entry 1796 (class 2604 OID 16467)
-- Dependencies: 1509 1508 1509
-- Name: sid; Type: DEFAULT; Schema: brand_info; Owner: music_infra_owner
--

ALTER TABLE brand ALTER COLUMN sid SET DEFAULT nextval('brand_sid_seq'::regclass);


--
-- TOC entry 1802 (class 0 OID 16464)
-- Dependencies: 1509
-- Data for Name: brand; Type: TABLE DATA; Schema: brand_info; Owner: music_infra_owner
--

INSERT INTO brand (sid, brand_name, website_sid) VALUES (3, 'Fender', 1);
INSERT INTO brand (sid, brand_name, website_sid) VALUES (2, 'DR', 2);
INSERT INTO brand (sid, brand_name, website_sid) VALUES (1, 'Elixir', 3);


--
-- TOC entry 1798 (class 2606 OID 16469)
-- Dependencies: 1509 1509
-- Name: brand_pkey; Type: CONSTRAINT; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

ALTER TABLE ONLY brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (sid);


--
-- TOC entry 1799 (class 1259 OID 16495)
-- Dependencies: 1509
-- Name: brand_pkey_index; Type: INDEX; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

CREATE UNIQUE INDEX brand_pkey_index ON brand USING btree (sid);


--
-- TOC entry 1800 (class 1259 OID 16494)
-- Dependencies: 1509
-- Name: fki_brand_website_fkey; Type: INDEX; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

CREATE INDEX fki_brand_website_fkey ON brand USING btree (website_sid);


--
-- TOC entry 1801 (class 2606 OID 16489)
-- Dependencies: 1509 1513
-- Name: brand_website_fkey; Type: FK CONSTRAINT; Schema: brand_info; Owner: music_infra_owner
--

ALTER TABLE ONLY brand
    ADD CONSTRAINT brand_website_fkey FOREIGN KEY (website_sid) REFERENCES website(sid);


-- Completed on 2011-02-18 14:46:56 EST

--
-- PostgreSQL database dump complete
--

