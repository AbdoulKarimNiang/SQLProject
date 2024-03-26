-- Query the list of CITY names ending with vowels (a, e, i, o, u) 
-- from STATION. Your result cannot contain duplicates.

--Input Format

| Field    | Type         |
|----------|--------------|
| ID       | NUMBER       |
| CITY     | VARCHAR(21)  |
| STATE    | VARCHAR(2)   |
| LAT_N    | NUMBER       |
| LONG_W   | NUMBER       |


-- The STATION table is described as follows:
-- where LAT_N is the northern latitude and LONG_W is the western longitude.

SELECT
DISTINCT CITY 
FROM STATION
WHERE right(CITY,1) IN ('a','e','i','o','u');
