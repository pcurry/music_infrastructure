-- User/login role: music_infra_owner
-- The DB owner role.  Will be the only user who can create the 
-- DB, or new roles.
--
-- Remember to set a password for this user!!!

CREATE ROLE music_infra_owner LOGIN
  NOSUPERUSER INHERIT CREATEDB CREATEROLE;

