-- table: brand_info.company_owns_brand

-- DROP TABLE brand_info.company_owns_brand

CREATE TABLE brand_info.company_owns_brand (
    brand_sid integer NOT NULL,
    company_sid integer NOT NULL,
    from_date date,
    to_date date,
    CONSTRAINT c_o_b_brand_fkey FOREIGN KEY (brand_sid) 
    	       REFERENCES brands(sid),
    CONSTRAINT c_o_b_company_fkey FOREIGN KEY (company_sid) 
    	       REFERENCES companies(sid)
);
ALTER TABLE brand_info.company_owns_brand OWNER TO music_infra_owner;
