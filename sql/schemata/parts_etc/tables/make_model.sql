-- Table: parts_etc.make_model

-- DROP TABLE parts_etc.make_model;

CREATE TABLE parts_etc.make_model
(
  sid serial NOT NULL,
  brand_sid integer,
  CONSTRAINT make_model_pkey PRIMARY KEY (sid),
  CONSTRAINT brand_sid_fkey FOREIGN KEY (brand_sid)
      REFERENCES brand_info.brand (sid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.make_model OWNER TO music_infra_owner;
