-- Query a count of the number of cities in CITY having a Population larger than 100.000.

-- Input Format
| Field       | Type            |
|-------------|-----------------|
| ID          | NUMBER          |
| NAME        | VARCHAR(17)     |
| COUNTRYCODE | VARCHAR2(3)     |
| DISTRICT    | VARCHAR2(20)    |
| POPULATION  | NUMBER          |

-- The CITY table is described as follows:

SELECT
COUNT(NAME)
FROM CITY
WHERE POPULATION >100000;
  
