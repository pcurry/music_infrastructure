-- table name: brands

-- DROP TABLE brand_info.brands


CREATE TABLE brand_info.brands (
    sid serial NOT NULL,
    brand_name character varying(250) NOT NULL,
    CONSTRAINT brands_table_pkey PRIMARY KEY (sid)	    
);
ALTER TABLE brand_info.brands OWNER TO music_infra_owner;
