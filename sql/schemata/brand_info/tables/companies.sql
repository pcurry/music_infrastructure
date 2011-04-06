-- table name: companies

-- DROP TABLE brand_info.companies


CREATE TABLE brand_info.companies (
    sid integer NOT NULL,
    company_name character varying(500) NOT NULL,
    CONSTRAINT companies_table_pkey PRIMARY KEY (sid)	    
);
ALTER TABLE brand_info.companies OWNER TO music_infra_owner;

