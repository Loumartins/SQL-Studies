-- Monte um relatorio de todos os produtos cadastrados que tem preco acima
-- da media

SELECT *   
    FROM Production.Product
    WHERE ListPrice > (SELECT AVG(ListPrice)FROM Production.Product)


-- QUAL O NOME DOS FUNCIONARIOS QUE TEM O CARGO DE 'DESIGN ENGINEER'

SELECT *    
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'PERSON'
    AND TABLE_NAME = 'PERSON'

SELECT * 
    FROM Person.Person

SELECT * 
    FROM HumanResources.Employee

    SELECT  FirstName
        FROM Person.Person
        WHERE BusinessEntityID 
        IN (
            SELECT BusinessEntityID 
                FROM HumanResources.Employee WHERE JobTitle = 'Design Engineer')