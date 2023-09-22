/*
DESAFIO
Quantos produtos temos cadastrados no sistema que custam mais que 1500 dolares?
*/
SELECT *
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE TABLE_SCHEMA = 'PRODUCTION'
   AND TABLE_NAME = 'PRODUCT'

 SELECT COUNT(ListPrice)
    FROM Production.Product
    WHERE ListPrice > 1500


   /*
   DESAFIO 2-
   QUANTAS PESSOAS TEMOS COM O SOBRENOME QUE INICIA COM A LETRA P?
   */
    
   SELECT COUNT (LastName)
      FROM Person.Person
      WHERE LastName LIKE 'P%'

   /*
   DESAFIO 3- 
   EM QUANTAS CIDADES UNICAS ESTAO CADASTRADOS NOSSOS CLIENTES??
   */

   SELECT COUNT (DISTINCT(CITY))
      FROM Person.Address 

   /*
   DESAFIO 4-
   QUAIS SAO AS CIDADES UNICAS CADASTRADAS EM NOSSOS SISTEMA??
   
   */

   SELECT  DISTINCT City
      FROM Person.Address

   /*
   DESAFIO 5
   QUANTOS PRODUTOS VERMELHOS TEM PRECO ENTRE 500 A 1000 DOLARES
   */

   SELECT COUNT (*)
      FROM Production.Product
      WHERE Color = 'RED' 
      AND ListPrice BETWEEN 500 AND 1000

   /*
   DESAFIO 6 - 
   QUANTOS PRODUTOS CADASTRADOS TEM A PALAVRA 'ROAD' NO NOME DELES??
   */

   SELECT Name
    FROM Production.Product
    WHERE Name LIKE '%ROAD%'  
      