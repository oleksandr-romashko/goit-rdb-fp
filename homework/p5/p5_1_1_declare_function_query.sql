USE pandemic;

DROP FUNCTION IF EXISTS fn_calc_years_from_now;

DELIMITER //

/*
	Calculates difference between current year and provided year in years.
	Returns integer value of years difference.
*/
CREATE FUNCTION fn_calc_years_from_now(year YEAR)
RETURNS INT
NO SQL
BEGIN
	DECLARE result INT;
    SET result = TIMESTAMPDIFF(YEAR, MAKEDATE(year, 1), CURDATE());
    RETURN result;
END //

DELIMITER ;