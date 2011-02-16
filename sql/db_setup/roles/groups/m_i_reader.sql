-- group role: m_i_reader
-- Even some of the users of the whole music_infrastructure system
-- don't require update rights.

CREATE ROLE m_i_reader 
       NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE;

