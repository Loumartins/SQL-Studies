

    SELECT TOP (1000) 
           BusinessEntityID AS [ID PESSOA],
           PersonType AS [TIPO PESSOA],
           Title AS [TITULO],
           FirstName AS [PRIMEIRO NOME],
           MiddleName AS [NOME DO MEIO],
           LastName AS [ULTIMO NOME]
     FROM Person.Person
    WHERE Title = 'Mr.'
    ORDER BY [PRIMEIRO NOME] , --ORDENAÇÃO DECRESCENTE
             [ULTIMO NOME] DESC --ORDENAÇÃO  ASCENDENTE


    
    SELECT
    DISTINCT -- DISTINCT = REMOVE DUPLICADOS
       TOP (1000) 
           -- BusinessEntityID AS [ID PESSOA],
           -- PersonType AS [TIPO PESSOA],
           -- Title AS [TITULO],
           FirstName,
           MiddleName,
           LastName
     FROM Person.Person
     WHERE Title = 'Mr.'
     AND MiddleName = 'M.'
     ORDER BY FirstName,
              MiddleName  
   