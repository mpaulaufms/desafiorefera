SELECT
    ProdutoID,
    SUM(Quantidade) AS QuantidadeTotal,
    SUM(ValorLiquido) AS ValorTotalVenda
FROM RAW_FatoDetalhes_DadosModelagem
GROUP BY ProdutoID
ORDER BY ProdutoID;