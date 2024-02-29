-- INSERT INTO triangles VALUES
-- ( 20, 20, 20),
-- ( 20, 20, 23),
-- ( 23, 24, 25),
-- ( 1, 2, 3);
/*
Enter your query here.
*/
SELECT
    IF ( A + B < C OR A + C < B OR B + C < A, "Not A Triangle", 
       IF (A = B AND B = C, "Equilateral", 
          IF (A = B OR B = C OR C = A, "Isosceles",
             "Scalene"
             )
          )
       )
FROM TRIANGLES