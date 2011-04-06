-- Table: parts_etc.strings

-- DROP TABLE parts_etc.strings;

CREATE TABLE parts_etc.strings
(
  sid serial NOT NULL,
  string_diameter_sid INTEGER NOT NULL, 
  string_ends_sid INTEGER NOT NULL, 
  material_sid INTEGER, 
  string_coatings_sid INTEGER,
  CONSTRAINT strings_table_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.strings OWNER TO music_infra_owner;
