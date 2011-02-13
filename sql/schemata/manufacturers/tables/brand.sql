-- Table: manufacturers.brand
-- Dumped to file from pgAdmin III.

-- DROP TABLE manufacturers.brand;

CREATE TABLE manufacturers.brand
(
  sid serial NOT NULL,
  brandname character varying(100),
  CONSTRAINT brand_pk PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE manufacturers.brand OWNER TO guitarconf_owner;
