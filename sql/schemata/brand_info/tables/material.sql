CREATE TABLE brand_info.material
(
  sid serial NOT NULL,
  material_name character varying(100) NOT NULL,
  material_description character varying(1000),
  material_type_sid integer NOT NULL,
  CONSTRAINT material_pkey PRIMARY KEY (sid),
  CONSTRAINT material_material_type_fkey FOREIGN KEY (material_type_sid)
      REFERENCES brand_info.material_type (sid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION -- Every material fits into some type category.
)
WITH (
  OIDS=FALSE
);
ALTER TABLE brand_info.material OWNER TO music_infra_owner;
COMMENT ON CONSTRAINT material_material_type ON brand_info.material IS 'Every material fits into some type category.';

