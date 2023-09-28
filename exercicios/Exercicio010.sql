-- Encontre todos os endereços que estão no estado de 'Alberta, Pode trazer
-- todas as informações


SELECT *
    FROM Person.Address

SELECT *    
    FROM Person.StateProvince
--utilizando inner join
SELECT *    
    FROM Person.Address AS PA
    INNER JOIN Person.StateProvince AS PSP ON PSP.StateProvinceID = PA.StateProvinceID
    WHERE PSP.NAME = 'alberta'

--utilizando subquery

SELECT *    
    FROM Person.Address
    WHERE StateProvinceID IN (
        SELECT StateProvinceID 
            FROM Person.StateProvince
            WHERE Name = 'ALBERTA')