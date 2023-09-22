/*
Desafio 1
A equipe de producao de produtos de precisa do nome de todas as pessoas que pesam mais de 500 kg mas nao mais que 700kg para inspecao;
*/

SELECT Weight,
       Name
       FROM Production.Product
       WHERE Weight > 500 AND Weight < 700

/*
Desafio 2
A equipe de marketing pediu uma relação de todos os empregados (employees) que sao casados e sao assalariados;
*/

SELECT *
    FROM HumanResources.Employee
    WHERE MaritalStatus = 'm' AND SalariedFlag = 1 

/*
Desafio 3
Um usuario chamado Peter Krebs esta devendo pagamento, consiga o email dele para que possamos enviar uma cobrança!
*/
SELECT BusinessEntityID
    FROM Person.Person
    WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT EmailAddress
    FROM Person.EmailAddress
    WHERE BusinessEntityID = 26