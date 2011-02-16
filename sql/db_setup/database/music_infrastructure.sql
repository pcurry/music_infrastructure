-- Database: music_infrastructure
-- create the database on the PostgreSQL instance which will hold the 
-- system data.
-- DROP DATABASE music_infrastructure;

CREATE DATABASE music_infrastructure
  WITH OWNER = music_infra_owner
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF8'
       LC_CTYPE = 'en_US.UTF8'
       CONNECTION LIMIT = -1;
GRANT CONNECT, TEMPORARY ON DATABASE  TO public;
GRANT ALL ON DATABASE music_infrastructure TO music_infra_owner;
GRANT CONNECT ON DATABASE music_infrastructure TO mi_reader;
GRANT CONNECT, CREATE ON DATABASE music_infrastructure TO mi_writer;
