SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS MES
    FROM Sales.SalesOrderHeader