-- Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880.
-- Round your answer to 4 decimal places.

-- Input Format

-- The STATION table is described as follows:

 
| Field   | Type        |
|---------|-------------|
| ID      | NUMBER      |
| CITY    | VARCHAR(21) |
| STATE   | VARCHAR(2)  |
| LAT_N   | NUMBER      |
| LONG_W  | NUMBER      |

SELECT
ROUND(LAT_N,4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC
LIMIT 1;
