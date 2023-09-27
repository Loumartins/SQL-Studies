/*
Desafio 1
Traga as seguintes informações BussinessEntityId, Name, PhoneNumberTypeId, PhoneNumber das tabelas a seguir utilizando o join.

select top 10 *
    from person.PhoneNumberType


select top 10 *
    from person.PersonPhone
*/

select top 10 *
    from person.PhoneNumberType


select top 10 *
    from person.PersonPhone


-- Resolvendo 

SELECT TOP 10 PPP.BusinessEntityID,PPNT.Name, PPP.PhoneNumberTypeID, PPP.PhoneNumber
    FROM Person.PhoneNumberType AS PPNT
    INNER JOIN Person.PersonPhone AS PPP ON PPP.PhoneNumberTypeID = PPNT.PhoneNumberTypeID


/*
Desafio 2

Tendo as seguintes tabelas

select top 10 *
    from person.stateprovince


select top 10 * 
    from person.address

obtenha o adressId, City, StateProvinceId, Name
*/


--resolvendo 
select top 10 *
    from person.stateprovince


select top 10 * 
    from person.address


SELECT TOP 10 PA.AddressID, PA.City, PSP.StateProvinceID, PSP.Name    
    FROM Person.StateProvince AS PSP 
    INNER JOIN Person.Address AS PA ON PA.StateProvinceID = PSP.StateProvinceID