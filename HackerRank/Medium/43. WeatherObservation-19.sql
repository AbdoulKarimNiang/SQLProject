-- Consider P1(a,b) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective 
--minimum and maximum values of Northern Latitude (LAT_N) and  (c,b) are the respective 
-- minimum and maximum values of Western Longitude (LONG_W) in STATION.

-- Query the Euclidean Distance between points  and  and format your answer to display 4 decimal digits.

-- Input Format

-- The STATION table is described as follows:

| Field    | Type         |
|----------|--------------|
| ID       | NUMBER       |
| CITY     | VARCHAR(21)  |
| STATE    | VARCHAR(2)   |
| LAT_N    | NUMBER       |
| LONG_W   | NUMBER       |

--where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT
ROUND(SQRT(POWER( MIN(LAT_N) - MAX(LAT_N) ,2) + POWER( MIN(LONG_W) - MAX(LONG_W) ,2 ) ),4)
FROM STATION;
