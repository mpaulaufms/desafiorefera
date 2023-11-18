INSERT INTO Fornecedores(Fornecedor, FornecedorContato, FornecedorPais)
SELECT Fornecedor, FornecedorContato, FornecedorPais
FROM RAW_Fornecedores
GO