-- User/login role: guitarconf_user
-- The role that will have the standard user access on the DB,
-- including the ability to create tables.  Might curb the create 
-- out of the role later, but it seems useful while developing.
--
-- Remember to set a password for this user!!!

CREATE ROLE guitarconf_user LOGIN
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;
GRANT guitarconf_writer TO guitarconf_user;


