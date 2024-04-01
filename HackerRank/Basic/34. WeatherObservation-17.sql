-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7880.
-- Round your answer to 2 decimal places.

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

  
SELECT
ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N > 38.7880
ORDER BY LAT_N ASC
LIMIT 1;

