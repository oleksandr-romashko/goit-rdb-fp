USE pandemic;

SELECT 
    name AS region_name, 
    code AS region_code,
    AVG(rabies) AS avg_rabies_cases, 
    MIN(rabies) AS min_rabies_cases, 
    MAX(rabies) AS max_rabies_cases, 
    SUM(rabies) AS sum_rabies_cases 
FROM infectious_cases
LEFT JOIN regions ON regions.id = region_id
WHERE rabies IS NOT NULL
GROUP BY region_id
ORDER BY avg_rabies_cases DESC
LIMIT 10;