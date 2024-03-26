-- Query a list of CITY and STATE from the STATION table.
-- The STATION table is described as follows:

| Field    | Type         |
|----------|--------------|
| ID       | NUMBER       |
| CITY     | VARCHAR(21)  |
| STATE    | VARCHAR(2)   |
| LAT_N    | NUMBER       |
| LONG_W   | NUMBER       |


SELECT
CITY,
STATE
FROM STATION;
