-- Query the average population of all cities in CITY where District is California.

-- Input Format


-- The CITY table is described as follows:

| Field       | Type            |
|-------------|-----------------|
| ID          | NUMBER          |
| NAME        | VARCHAR(17)     |
| COUNTRYCODE | VARCHAR2(3)     |
| DISTRICT    | VARCHAR2(20)    |
| POPULATION  | NUMBER          |



SELECT AVG(Population)
FROM city
WHERE district = 'California';
