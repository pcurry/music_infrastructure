-- Table: parts_etc.string_coatings

-- DROP TABLE parts_etc.string_coatings;

CREATE TABLE parts_etc.string_coatings
(
  sid serial NOT NULL,
  coating_name varchar(100) NOT NULL,
  coating_description varchar(1000),
  CONSTRAINT string_coatings_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.string_coatings OWNER TO music_infra_owner;
