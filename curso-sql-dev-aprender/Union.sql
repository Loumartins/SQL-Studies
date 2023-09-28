-- O operador union combina dois ou mais resultados de um select em um resultado apenas

SELECT ProductID, Name, ProductNumber 
    FROM Production.Product 
    WHERE Name LIKE '%CHAIN%'
UNION
SELECT ProductID, Name, ProductNumber
    FROM Production.Product WHERE Name LIKE '%Decal%'
    

SELECT FirstName, Title, MiddleName
    FROM Person.Person
    WHERE Title = 'MR'
UNION 
SELECT FirstName, Title, MiddleName
    FROM PERSON.Person
    WHERE MiddleName = 'A'
    ORDER BY FirstName