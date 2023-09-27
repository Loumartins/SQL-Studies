/*
ALL (SUBQUERY)
AND
OR
SOME | ANY (SUBQUERY)
BETWEEN
EXISTS (SUBQUERY)
IN | NOT IN (TRAZ UMA LISTA / UMA NAO LISTA)
LIKE | LIKE NOT
*/

SELECT *
    FROM Person.Person
    WHERE BusinessEntityID IN (1,2,3,4,659,800,900,4500)

SELECT *
    FROM Person.Person
    WHERE FirstName NOT IN ('KEN', 'GIGI', 'AARON')

SELECT *
    FROM Person.Person
    WHERE BusinessEntityID BETWEEN 600 AND 800
    -- AND (FirstName = 'Aaron' OR MiddleName<> 'G')
    -- ORDER BY FirstName
    
SELECT *
    FROM Person.Person
    WHERE FirstName LIKE 'G%'


SELECT *
    FROM Person.Person
    WHERE FirstName LIKE '___A'


SELECT *
    FROM Person.Person
    WHERE FirstName LIKE '[ABCDEFG]__A'
    ORDER BY FirstName
     
SELECT *
    FROM Person.Person
    WHERE FirstName NOT LIKE '[ABCDEFG]__A'
    ORDER BY FirstName