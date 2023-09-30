SELECT *    
    FROM HumanResources.Employee --290

SELECT PP.BusinessEntityID,
       HRE.BusinessEntityID
       FirstName,
       MiddleName,
       LastName,
       HRE.LoginID,
       HRE.JobTitle,
       HRE.BirthDate
    FROM Person.Person AS PP --19.972
    LEFT JOIN HumanResources.Employee AS HRE ON PP.BusinessEntityID = HRE.BusinessEntityID
    ORDER BY PP.BusinessEntityID

