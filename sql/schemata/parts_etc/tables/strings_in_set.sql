-- Table: parts_etc.strings_in_set

-- DROP TABLE parts_etc.strings_in_set;

CREATE TABLE parts_etc.strings_in_set
(
  strings_sid INTEGER NOT NULL, 
  string_set_sid INTEGER NOT NULL, 
  string_position_in_set INTEGER NOT NULL,
  -- expected pitch integer  -- to be added later.
  CONSTRAINT strings_in_set_pkey PRIMARY KEY (strings_sid, string_set_sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.strings_in_set OWNER TO music_infra_owner;
