-- Database: guitarconf
-- create the database on the PostgreSQL instance which will hold the 
-- guitar configurator data.
-- DROP DATABASE guitarconf;

CREATE DATABASE guitarconf
  WITH OWNER = guitarconf_owner
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'en_US.UTF8'
       LC_CTYPE = 'en_US.UTF8'
       CONNECTION LIMIT = -1;
GRANT CONNECT, TEMPORARY ON DATABASE guitarconf TO public;
GRANT ALL ON DATABASE guitarconf TO guitarconf_owner;
GRANT CONNECT ON DATABASE guitarconf TO guitarconf_reader;
GRANT CONNECT, CREATE ON DATABASE guitarconf TO guitarconf_writer;
