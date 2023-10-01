SELECT SSP.BusinessEntityID,
       TerritoryID,
       SalesQuota,
       Bonus,
       SalesLastYear,
       FirstName,
       MiddleName,
       LastName
    FROM SALES.SalesPerson AS SSP 
    RIGHT JOIN PERSON.Person AS PP 
    ON SSP.BusinessEntityID = PP.BusinessEntityID
    ORDER BY SSP.BusinessEntityID