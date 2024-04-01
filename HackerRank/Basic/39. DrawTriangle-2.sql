--  P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

-- *
-- **
-- ***
-- ****
-- *****

WITH RECURSIVE p20 AS (
  SELECT 1 AS n
  UNION ALL
  SELECT n + 1 AS n FROM p20 WHERE n < 20
)
SELECT REPEAT('* ', n) FROM p20;
