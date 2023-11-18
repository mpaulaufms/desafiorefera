INSERT INTO Produtos (CategoriaID, Produto, FornecedorID)
SELECT CategoriaID, Produto, FornecedorID
FROM RAW_Produtos
GO
