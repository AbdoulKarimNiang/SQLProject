-- Query the total population of all cities in CITY where District is California.

-- Input Format
| Field       | Type            |
|-------------|-----------------|
| ID          | NUMBER          |
| NAME        | VARCHAR(17)     |
| COUNTRYCODE | VARCHAR2(3)     |
| DISTRICT    | VARCHAR2(20)    |
| POPULATION  | NUMBER          |

-- The CITY table is described as follows:

SELECT SUM(population) FROM city WHERE district = 'California';
