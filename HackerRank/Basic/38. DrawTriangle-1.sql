-- P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- *****
-- ****
-- ***
-- **
-- *

WITH RECURSIVE p20 AS (
  SELECT 20 AS n
  UNION ALL
  SELECT n - 1 AS n FROM p20 WHERE n > 0
)
SELECT REPEAT('* ', n) FROM p20;
