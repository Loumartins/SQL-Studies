/*
DESAFIO 1 
Estamos querendo identificar as provincias (stateProvinceId) com o maior
numero de cadastros no sistema, entao é preciso encontrar quais provincias
(stateProvinceId) estao registradas no banco de dados mais que 1000 vezes
*/

SELECT *
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'PERSON'
    AND TABLE_NAME = 'STATEPROVINCE'

SELECT StateProvinceID,COUNT(StateProvinceID) AS [CONTAGEM]
    FROM Person.Address
    GROUP BY StateProvinceID
    HAVING COUNT(StateProvinceID) > 1000


/*
DESAFIO 2 
Sabendo que se trata de uma multinacional os gerentes querem saber quais
produtos (productID) nao estao trazendo em media no minimo 1 milhao 
em total de vendas (lineTotal)
*/

SELECT ProductID, AVG(LineTotal) AS [MEDIA] 
    FROM Sales.SalesOrderDetail
    GROUP BY ProductID
    HAVING AVG(LineTotal) < 1000000
