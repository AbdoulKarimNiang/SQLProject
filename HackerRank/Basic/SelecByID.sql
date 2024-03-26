-- Query all columns for a city in CITY with the ID 1661.


| Field       | Type            |
|-------------|-----------------|
| ID          | NUMBER          |
| NAME        | VARCHAR(17)     |
| COUNTRYCODE | VARCHAR2(3)     |
| DISTRICT    | VARCHAR2(20)    |
| POPULATION  | NUMBER          |


SELECT *
FROM CITY
WHERE ID = 1661
