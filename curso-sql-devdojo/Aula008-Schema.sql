/*
Schema
    estrutura organizada que define a maneira como os dados são armazenados, organizados e relacionados dentro de um banco de dados.
*/
use AdventureWorks2019
GO

SELECT *
    FROM INFORMATION_SCHEMA.TABLES


SELECT *
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'PERSON'
    AND TABLE_NAME = 'PERSON'

