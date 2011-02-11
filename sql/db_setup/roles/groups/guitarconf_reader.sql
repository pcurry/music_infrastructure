-- group role: guitarconf_reader
-- Separate out users who don't need update ability.

CREATE ROLE guitarconf_reader 
       NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

