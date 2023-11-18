UPDATE RAW_Funcionario
SET Extensao = NULL
WHERE Extensao = 'NULL'
GO

INSERT INTO Funcionarios (FuncionarioID, Extensao, NomeFuncionario, Genero, DataAdmissao, EscritorioID, Supervisor, Cargo, SalarioAnual, MetaVendas)
SELECT FuncionarioID, Extensao, NomeFuncionario, Genero, DataAdmissao, Escritorio, Supervisor, Cargo, SalarioAnual, MetaVendas
FROM RAW_Funcionario
GO