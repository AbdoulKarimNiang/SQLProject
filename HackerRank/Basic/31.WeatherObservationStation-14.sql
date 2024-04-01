-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345.
-- Truncate your answer to  decimal places.

-- Input Format

-- The STATION table is described as follows:

  
| Field   | Type        |
|---------|-------------|
| ID      | NUMBER      |
| CITY    | VARCHAR(21) |
| STATE   | VARCHAR(2)  |
| LAT_N   | NUMBER      |
| LONG_W  | NUMBER      |

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT ROUND(MAX(LAT_N),4) AS TOTAL
FROM STATION
WHERE LAT_N < 137.2345;

