/*
 Join
*/

SELECT PP.BusinessEntityID,
       Title,
       FirstName,
       MiddleName,
       LastName,
       EmailAddress,
       PEA.BusinessEntityID
    FROM Person.Person AS PP
    INNER JOIN Person.EmailAddress AS PEA 
        ON PP.BusinessEntityID = PEA.BusinessEntityID   


SELECT TOP 5 *
    FROM Person.EmailAddress