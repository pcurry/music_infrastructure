-- Table: string_info.string_diameter

-- DROP TABLE string_info.string_diameter;

CREATE TABLE string_info.string_diameter
(
  sid serial NOT NULL,
  in_inches numeric(8,6) NOT NULL,
  in_mm numeric(10,6),
  CONSTRAINT string_diameter_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE string_info.string_diameter OWNER TO music_infra_owner;
