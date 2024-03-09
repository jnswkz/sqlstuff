-- CREATE TABLE BST(
--     N INT,
--     P INT
-- );

-- INSERT INTO BST VALUES
-- (1, 2),
-- (3, 2),
-- (6, 8),
-- (9, 8),
-- (2, 5),
-- (8, 5),
-- (5, NULL);

SELECT * FROM BST;

SELECT B.N, 
CASE 
    WHEN B.P IS NOT NULL THEN
        CASE
            WHEN (SELECT COUNT(*) FROM BST WHERE P = B.N ) = 0 THEN
                'Leaf'
            ELSE 
                'Inner'
        END
    ELSE
        'Root'
END
FROM BST B
ORDER BY B.N