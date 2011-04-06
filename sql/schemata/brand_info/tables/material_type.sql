-- Table: brand_info.material_type

-- DROP TABLE brand_info.material_type;

CREATE TABLE brand_info.material_type
(
  sid serial NOT NULL,
  material_type_name character varying(100) NOT NULL,
  CONSTRAINT material_type_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE brand_info.material_type OWNER TO music_infra_owner;


