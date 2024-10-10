USE pandemic;

-- Data Definition - Create tables

CREATE TABLE IF NOT EXISTS regions (
	id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    -- Three-letter country code according to ISO 3166-1 alpha-3 (e.g. 'AUS' for 'Australia'),
	-- ref. list https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 
    -- Together with Our World in Data (OWID) code (e.g. 'OWID_YGS' for 'Yugoslavia' as historical data)
    -- https://en.wikipedia.org/wiki/Our_World_in_Data
    code VARCHAR(8),
    PRIMARY KEY (id),
    UNIQUE (name, code),
    CHECK (CHAR_LENGTH(code) IN (3, 8))
);

CREATE TABLE IF NOT EXISTS infectious_cases (
    region_id INT,
    year YEAR,
    yaws DOUBLE,
    polio DOUBLE,
    guinea_worm DOUBLE,
    rabies DOUBLE,
    malaria DOUBLE,
    hiv DOUBLE,
    tuberculosis DOUBLE,
    smallpox DOUBLE,
    cholera DOUBLE,
    PRIMARY KEY(region_id, year),
    CONSTRAINT fk_infectious_cases_region FOREIGN KEY (region_id) REFERENCES regions (id)
);

-- Data Manipulation - Populate tables

INSERT INTO regions (name, code)
SELECT DISTINCT Entity, Code FROM infectious_cases_import;

INSERT INTO infectious_cases 
(
    region_id, 
    year,
    yaws,
    polio,
    guinea_worm,
    rabies,
    malaria,
    hiv,
    tuberculosis,
    smallpox,
    cholera
)
SELECT
	regions.id AS region_id,
    Year, 
    Number_yaws, 
    polio_cases, 
    cases_guinea_worm, 
    Number_rabies, 
    Number_malaria, 
    Number_hiv, 
    Number_tuberculosis, 
    Number_smallpox, 
    Number_cholera_cases
FROM infectious_cases_import
LEFT JOIN regions ON regions.name = Entity
ORDER BY name, Year;

-- Clean-up - Delete import table

DROP TABLE IF EXISTS infectious_cases_import;