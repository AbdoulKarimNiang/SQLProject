-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
-- Your result cannot contain duplicates.

-- The STATION table is described as follows:

| Field    | Type         |
|----------|--------------|
| ID       | NUMBER       |
| CITY     | VARCHAR(21)  |
| STATE    | VARCHAR(2)   |
| LAT_N    | NUMBER       |
| LONG_W   | NUMBER       |


SELECT
  CITY 
FROM STATION
WHERE SUBSTRING(CITY,1,1) in ("a","e","i","o","u");
