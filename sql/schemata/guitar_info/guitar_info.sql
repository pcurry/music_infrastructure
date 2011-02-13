-- Schema: guitar_info

-- DROP SCHEMA guitar_info;

CREATE SCHEMA guitar_info
  AUTHORIZATION guitarconf_owner;
GRANT ALL ON SCHEMA guitar_info TO guitarconf_owner WITH GRANT OPTION;
GRANT ALL ON SCHEMA guitar_info TO guitarconf_writer;
GRANT USAGE ON SCHEMA guitar_info TO guitarconf_reader;
