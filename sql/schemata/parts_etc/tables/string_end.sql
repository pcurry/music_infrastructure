-- Table: parts_etc.string_end

-- DROP TABLE parts_etc.string_end;

CREATE TABLE parts_etc.string_end
(
  sid serial NOT NULL,
  end_name varchar(100) NOT NULL,
  end_description varchar(1000),
  CONSTRAINT string_end_pkey PRIMARY KEY (sid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE parts_etc.string_end OWNER TO music_infra_owner;
