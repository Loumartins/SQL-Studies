/*
Desafio 1
Quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName
*/

SELECT MiddleName, COUNT(MiddleName) as [CONTAGEM] 
    FROM Person.Person
    GROUP BY MiddleName

/*
Desafio 2 
Em media qual a quantidade que cada produto é vendido na loja.
*/

SELECT ProductID, AVG(OrderQty) AS [MEDIA]
    FROM Sales.SalesOrderDetail
    GROUP BY ProductID

/*
Desafio 3
Quais foram as 10 vendas que no total tiveram os maiores valores de venda 
(line total) por produto. Do maior valor para o menor valor
  */

SELECT TOP 10 ProductID, SUM (LineTotal) AS [SOMA] 
    FROM Sales.SalesOrderDetail
    GROUP BY ProductID
    ORDER BY SOMA DESC

/*
Desafio 4
Quantos produtos e qual a quantidade media de produtos temos cadastrados nas nossas ordens de serviço ( WorkOrder ), agrupados por productID
*/

SELECT PRODUCT.ProductID, COUNT (ProductID) AS [CONTAGEM], 
       AVG(OrderQty) AS [MEDIA]
    FROM PRODUCTION.WorkOrder
    GROUP BY ProductID
