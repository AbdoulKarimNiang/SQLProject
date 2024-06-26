-- Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) 
-- and their respective average city populations (CITY.Population) rounded down to the nearest integer.

-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

-- Input Format

-- The CITY and COUNTRY tables are described as follows:


| Field           | Type            |
|---------        |---------------- |
| ID              | NUMBER          |
| NAME            | VARCHAR2(17)    |
| CONTRYCODE      | VARCHAR2(3)     |
| DISTRICT        | VARCHAR2(20)     |
| POPULATION      | NUMBER          |


-- COUNTRY
  
| Field           | Type            |
|---------        |---------------- |
| CODE            | VARCHAR2(3)     |
| NAME            | VARCHAR2(44)    |
| CONTINENTE      | VARCHAR2(13)    |
| REGION          | VARCHAR2(5)     |
| SURFACEAREA     | NUMBER          |
| INDEPYEAR       | VARCHAR2(4)     |
| POPULATION      | NUMBER          |
| LIFEEXPENTANCY  | VARCHAR2(4)     |
| GNP             | NUMBER          |
| GNPOLD          | VARCHAR2(9)     |
| LOCALNAME       | VARCHAR2(44)    |
| GOVERNMENTFORM  | VARCHAR2(44)    |
| HEADOFSTATE     | VARCHAR2(32)    |
| CAPITAL         | VARCHAR2(4)     |
| CODE2           | VARCHAR2(2)    


SELECT co.continent, FLOOR(AVG(cy.population))
FROM country co
INNER JOIN city cy ON co.code = cy.countrycode
GROUP BY co.continent;

