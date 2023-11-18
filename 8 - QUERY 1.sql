SELECT
    p.ProdutoID,
    p.CupomID,
    SUM(p.ValorLiquido) AS ValorTotalVenda,
    f.CupomID AS CupomFrete,
    SUM(f.ValorFrete) AS ValorTotalFrete
FROM RAW_FatoDetalhes_DadosModelagem p
JOIN RAW_FatoCabecalho_DadosModelagem f ON p.CupomID = f.CupomID
GROUP BY p.ProdutoID, p.CupomID, f.CupomID
ORDER BY p.CupomID;
GO