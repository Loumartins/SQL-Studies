/*
INNER JOIN - 
BUSSINESSENTITYID, FIRSTNAME, LASTNAME, EMAILADDRES
*/

SELECT TOP 10*
    FROM Person.Person

SELECT TOP 10*
    FROM Person.EmailAddress

SELECT p.BusinessEntityID, p.FirstName, p.LastName, PE.EmailAddress
    FROM Person.Person AS p
    INNER JOIN Person.EmailAddress AS PE ON P.BusinessEntityID = PE.BusinessEntityID


--QUEREMOS OS NOMES DOS PRODUTOS E AS INFORMAÇÕES DE SUAS SUBCATEGORIAS

SELECT *
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'PRODUCTION'
    AND TABLE_NAME = 'PRODUCT'

SELECT TOP 10 *
    FROM Production.Product

SELECT TOP 10 *
    FROM Production.ProductSubcategory

SELECT PP.ListPrice, PP.Name, PPS.Name
    FROM Production.Product AS PP
    INNER JOIN Production.ProductSubcategory AS PPS ON PP.ProductSubcategoryID = PPS.ProductSubcategoryID

--JUNTANDO TODAS AS INFORMAÇÕES

SELECT TOP 10 *
    FROM Person.BusinessEntityAddress

SELECT TOP 10 *
    FROM PERSON.Address


SELECT TOP 10 *
    FROM Person.BusinessEntityAddress AS BA
    INNER JOIN Person.Address AS PA ON PA.AddressID = BA.AddressID

