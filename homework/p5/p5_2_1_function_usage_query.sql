USE pandemic;

SELECT DISTINCT 
	year AS case_year,
	MAKEDATE(year, 1) AS case_date,
    CURDATE() AS cur_date,
    fn_calc_years_from_now(year) AS years_ago
FROM infectious_cases
ORDER BY case_date ASC;