-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
-- Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with  sides of equal length.
-- Isosceles: It's a triangle with  sides of equal length.
-- Scalene: It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.

-- Input Format
| Field | Type    |
|-------|---------|
| A     | INTEGER |
| B     | INTEGER |
| C     | INTEGER |

-- The TRIANGLES table is described as follows:

| A   | B   | C   |
|-----|-----|-----|
| 20  | 20  | 23  |
| 20  | 20  | 20  |
| 20  | 21  | 22  |
| 13  | 14  | 30  |

-- Each row in the table denotes the lengths of each of a triangle's three sides.

SELECT
CASE
    WHEN A+B <= C OR B+C<= A OR A+C<=B THEN "Not A Triangle"
    WHEN A=B AND B=C THEN "Equilateral"
    WHEN A=B or B=C or A=C THEN "Isosceles"
    ELSE "Scalene"
END
FROM TRIANGLES;
