USE pandemic;

-- RENAME TABLE infectious_cases TO infectious_cases_import;

CREATE TABLE IF NOT EXISTS region (
	id INT AUTO_INCREMENT,
    region VARCHAR(100) NOT NULL,
    -- Three-letter country code is according to ISO 3166-1 alpha-3,
	-- ref. list https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 
    code VARCHAR(3),
    PRIMARY KEY (id),
    UNIQUE (region, code)
);

-- SELECT DISTINCT Entity, Code
-- FROM infectious_cases
-- WHERE Code IS NULL;