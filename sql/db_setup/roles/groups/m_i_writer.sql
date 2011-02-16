-- Group role: m_i_writer
-- Users with update access to the whole DB who aren't DB or schema owners.
-- Still restricting role creation to the DB owner.

CREATE ROLE m_i_writer
       NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

