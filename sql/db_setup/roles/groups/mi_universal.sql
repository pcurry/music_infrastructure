-- Role: mi_universal

-- DROP ROLE mi_universal;

CREATE ROLE mi_universal
  NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;
COMMENT ON ROLE mi_universal IS 'Non-login, but will hold privileges that anyone who can access any of MI should have.';
