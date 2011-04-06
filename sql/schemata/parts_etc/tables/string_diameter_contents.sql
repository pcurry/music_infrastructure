--
-- PostgreSQL database dump
--

-- Started on 2011-02-18 14:41:36 EST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = parts_etc, pg_catalog;

--
-- TOC entry 1802 (class 0 OID 0)
-- Dependencies: 1517
-- Name: string_diameter_sid_seq; Type: SEQUENCE SET; Schema: parts_etc; Owner: music_infra_owner
--

SELECT pg_catalog.setval('string_diameter_sid_seq', 13, true);


--
-- TOC entry 1799 (class 0 OID 16532)
-- Dependencies: 1518
-- Data for Name: string_diameter; Type: TABLE DATA; Schema: parts_etc; Owner: music_infra_owner
--

INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (1, 0.009000, 0.230000);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (2, 0.010000, NULL);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (3, 0.011000, 0.280000);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (4, 0.016000, 0.410000);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (5, 0.024000, 0.610000);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (6, 0.032000, 0.810000);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (7, 0.042000, 1.070000);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (8, 0.013000, NULL);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (9, 0.017000, NULL);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (10, 0.026000, NULL);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (11, 0.036000, NULL);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (12, 0.046000, NULL);
INSERT INTO string_diameter (sid, in_inches, in_mm) VALUES (13, 0.056000, NULL);


-- Completed on 2011-02-18 14:41:36 EST

--
-- PostgreSQL database dump complete
--

