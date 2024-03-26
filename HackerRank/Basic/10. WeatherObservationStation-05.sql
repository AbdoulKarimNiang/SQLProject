-- Query the two cities in STATION with the shortest and longest CITY names, 
-- as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- The STATION table is described as follows:
| Field    | Type         |
|----------|--------------|
| ID       | NUMBER       |
| CITY     | VARCHAR(21)  |
| STATE    | VARCHAR(2)   |
| LAT_N    | NUMBER       |
| LONG_W   | NUMBER       |


-- where LAT_N is the northern latitude and LONG_W is the western longitude.
-- Sample Input
-- For example, CITY has four entries: DEF, ABC, PQRS and WXY.

-- Sample Output
-- ABC 3
-- PQRS 4


(
  SELECT
CITY,
LENGTH(CITY) as lenght
FROM STATION
ORDER BY lenght ASC, CITY ASC
LIMIT 1
  )
UNION ALL
(
  SELECT
CITY,
LENGTH(CITY) as lenght
FROM STATION
ORDER BY lenght DESC, CITY ASC
LIMIT 1
  )

