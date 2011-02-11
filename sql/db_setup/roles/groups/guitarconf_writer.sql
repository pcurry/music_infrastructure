-- Group role: guitarconf_writer
-- Users with update access to the whole DB who aren't DB or schema owners.
-- Still restricting role creation to the DB owner.

CREATE ROLE guitarconf_write
       NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

