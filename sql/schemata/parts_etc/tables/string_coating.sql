-- Table: parts_etc.string_coating

-- DROP TABLE parts_etc.string_coating;

CREATE TABLE parts_etc.string_coating
(
  sid serial NOT NULL,
  coating_name varchar(100) NOT NULL,
  coating_description varchar(1000),
  CONSTRAINT string_coating_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.string_coating OWNER TO music_infra_owner;
