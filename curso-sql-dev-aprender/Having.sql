/*
Basicamente muito usado junto com o group by 
para filtrar resultados de um agrupamento

De forma mais simples ele é basicamente um where para dados agrupados

Diferença entre Having e Where --
O having é utilizado após os dados serem agrupados e o where é utilizado
anteriormente a esse agrupamento dos dados

*/

--quais nomes do sistema tem tem ocorrencia maior que 10

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'Person'
and TABLE_NAME = 'Person'

SELECT FirstName, COUNT(FirstName) AS [CONTAGEM]
    FROM Person.Person
    GROUP BY FirstName
    HAVING COUNT(FirstName) > 10

-- QUAIS PRODUTOS QUE NO TOTAL DE VENDAS ESTAO ENTRE 162K E 500K

SELECT *
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'SALES'
    AND TABLE_NAME = 'SALESORDERDETAIL'

SELECT ProductID, SUM(LineTotal) AS [SOMA]
    FROM SALES.SalesOrderDetail
    GROUP BY ProductID
    HAVING SUM(LineTotal) BETWEEN 162000 AND 500000


