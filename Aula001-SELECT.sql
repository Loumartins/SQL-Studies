
/*
SQL - STRUCTURED QUERY LANGUAGE - 
    --Select = SELECIONE (INSTRUCAO SELECT = CONSULTA) 
    TUDO QUE COMEÇAR COM SELECT SERA UMA QUERY / CONSULTA
    --* TUDO(TODAS_AS_COLUNAS)
    --FROM = A PARTIR DE/VINDO DE
    -- NOME_DA_TABELA
    WHERE = ONDE
*/
    SELECT BusinessEntityID,
           PersonType,
           Title,
           FirstName,
           MiddleName,
           LastName,
           ModifiedDate -- ultima linha sem >virgula<
      FROM Person.Person
      WHERE FirstName = 'Ken'
      AND MiddleName = 'L'