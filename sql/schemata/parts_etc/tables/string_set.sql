-- Table: parts_etc.string_set

-- DROP TABLE parts_etc.string_set;

CREATE TABLE parts_etc.string_set
(
  string_set_sid serial NOT NULL,
  instrument_type INTEGER,
  CONSTRAINT string_set_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.string_set OWNER TO music_infra_owner;
