-- Table: parts_etc.string_diameter

-- DROP TABLE parts_etc.string_diameter;

CREATE TABLE parts_etc.string_ends
(
  sid serial NOT NULL,
  ends_name varchar(100) NOT NULL,
  ends_description varchar(1000),
  CONSTRAINT string_ends_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.string_ends OWNER TO music_infra_owner;
