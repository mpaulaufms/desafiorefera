INSERT INTO Clientes (ClienteID, Cliente, NomeContato, Endereco, Cidade, Pais, PaisSigla, Regiao, CEP, Latitude, Longitude, Fax, Telefone)
SELECT ClienteID, Cliente, NomeContato, Endereco, Cidade, Pais, PaisCodigo, Regiao, CEP, Latitude, Longitude, Fax, Telefone
FROM RAW_Cliente
GO