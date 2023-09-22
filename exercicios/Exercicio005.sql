/*
DESAFIO 1 
Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato

*/

USE AdventureWorks2017
GO

SELECT *
 FROM INFORMATION_SCHEMA.COLUMNS
 WHERE TABLE_SCHEMA = 'PRODUCTION'
 AND TABLE_NAME = 'PRODUCT'


SELECT TOP 10 ProductID, ListPrice
    FROM Production.Product
    ORDER BY ListPrice DESC


/*
DESAFIO 2 -
Obter o nome e numero do produto dos produtos que tem o ProductID entre 1 ~ 4
*/

SELECT Name, ProductNumber
    FROM Production.Product
    WHERE ProductID BETWEEN 1 AND 4 -- ORDER BY ProductID ASC