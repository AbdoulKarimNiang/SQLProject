--Query the names of all the Japanese cities in the CITY table.
-- The COUNTRYCODE for Japan is JPN.

| Field       | Type            |
|-------------|-----------------|
| ID          | NUMBER          |
| NAME        | VARCHAR(17)     |
| COUNTRYCODE | VARCHAR2(3)     |
| DISTRICT    | VARCHAR2(20)    |
| POPULATION  | NUMBER          |

  
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'
