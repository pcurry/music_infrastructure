-- User/login role: guitarconf_owner
-- The DB owner role.  Will be the only user who can create the 
-- DB, or new roles.
--
-- Remember to set a password for this user!!!

CREATE ROLE guitarconf_owner LOGIN
  NOSUPERUSER INHERIT CREATEDB CREATEROLE;

-- Probably redundant to add the writer privileges, but I don't think it
-- will hurt.
GRANT guitarconf_writer TO guitarconf_owner;