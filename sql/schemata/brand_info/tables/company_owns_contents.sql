--
-- PostgreSQL database dump
--

-- Started on 2011-02-18 14:49:55 EST

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
-- TOC entry 1514 (class 1259 OID 16504)
-- Dependencies: 7
-- Name: company_owns_brand; Type: TABLE; Schema: brand_info; Owner: music_infra_owner; Tablespace: 
--

CREATE TABLE company_owns_brand (
    brand_sid integer NOT NULL,
    company_sid integer NOT NULL,
    from_date date,
    to_date date
);


ALTER TABLE brand_info.company_owns_brand OWNER TO music_infra_owner;

--
-- TOC entry 1798 (class 0 OID 16504)
-- Dependencies: 1514
-- Data for Name: company_owns_brand; Type: TABLE DATA; Schema: brand_info; Owner: music_infra_owner
--

INSERT INTO company_owns_brand (brand_sid, company_sid, from_date, to_date) VALUES (2, 1, NULL, NULL);
INSERT INTO company_owns_brand (brand_sid, company_sid, from_date, to_date) VALUES (1, 2, NULL, NULL);


--
-- TOC entry 1797 (class 2606 OID 16512)
-- Dependencies: 1514 1509
-- Name: c_o_b_brand_fkey; Type: FK CONSTRAINT; Schema: brand_info; Owner: music_infra_owner
--

ALTER TABLE ONLY company_owns_brand
    ADD CONSTRAINT c_o_b_brand_fkey FOREIGN KEY (brand_sid) REFERENCES brand(sid);


--
-- TOC entry 1796 (class 2606 OID 16507)
-- Dependencies: 1511 1514
-- Name: c_o_b_company_fkey; Type: FK CONSTRAINT; Schema: brand_info; Owner: music_infra_owner
--

ALTER TABLE ONLY company_owns_brand
    ADD CONSTRAINT c_o_b_company_fkey FOREIGN KEY (company_sid) REFERENCES company(sid);


-- Completed on 2011-02-18 14:49:56 EST

--
-- PostgreSQL database dump complete
--

