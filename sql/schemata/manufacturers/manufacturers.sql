-- Schema: manufacturers
-- Dumped from pgAdmin III

-- DROP SCHEMA manufacturers;

CREATE SCHEMA manufacturers
  AUTHORIZATION guitarconf_owner;
GRANT ALL ON SCHEMA manufacturers TO guitarconf_owner;
GRANT ALL ON SCHEMA manufacturers TO guitarconf_writer;
GRANT USAGE ON SCHEMA manufacturers TO guitarconf_reader;
