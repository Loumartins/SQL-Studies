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
      FROM PERSON.ADDRESS 