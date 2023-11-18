CREATE TABLE Clientes(
	ClienteID INT NOT NULL,
	Cliente VARCHAR(50) NOT NULL,
	NomeContato VARCHAR(50) NOT NULL,
	Endereco VARCHAR(50) NOT NULL,
	Cidade VARCHAR(30) NOT NULL,
	Pais VARCHAR(25) NOT NULL,
	PaisSigla CHAR(2) NOT NULL,
	Regiao VARCHAR(30) NOT NULL,
	CEP VARCHAR(10) NULL,
	Latitude NUMERIC(10,6) NOT NULL,
	Longitude NUMERIC(10,6) NOT NULL,
	Fax VARCHAR(25) NULL,
	Telefone VARCHAR(25) NULL,
	CONSTRAINT PK_Clientes PRIMARY KEY (ClienteID)
)
GO

CREATE TABLE Escritorios(
	EscritorioID INT NOT NULL IDENTITY(1,1),
	EscritorioLocalizacao VARCHAR(25) NOT NULL,
	CONSTRAINT PK_Escritorios PRIMARY KEY (EscritorioID)
)
GO

CREATE TABLE Funcionarios(
	FuncionarioID INT NOT NULL,
	Extensao INT NULL,
	NomeFuncionario VARCHAR(40) NOT NULL,
	Genero CHAR(1) NOT NULL,
	DataAdmissao DATE NOT NULL,
	EscritorioID INT NOT NULL,
	Supervisor VARCHAR(25) NOT NULL,
	Cargo VARCHAR(30) NOT NULL,
	SalarioAnual DECIMAL NOT NULL,
	MetaVendas Decimal NULL,
	CONSTRAINT PK_Funcionarios PRIMARY KEY (FuncionarioID),
	CONSTRAINT FK_Funcionarios_Escritorio FOREIGN KEY (EscritorioID) REFERENCES Escritorios (EscritorioID)
)
GO

CREATE TABLE Fornecedores(
	FornecedorID INT NOT NULL IDENTITY(1,1),
	Fornecedor VARCHAR(40) NOT NULL,
	FornecedorContato VARCHAR(30) NOT NULL,
	FornecedorPais VARCHAR(20) NOT NULL,
	CONSTRAINT PK_Fornecedores PRIMARY KEY (FornecedorID)
)
GO

CREATE TABLE Categoria(
	CategoriaID INT NOT NULL IDENTITY(1,1),
	Categoria VARCHAR(30) NOT NULL,
	Departamento VARCHAR(30) NOT NULL,
	Descricao VARCHAR(30) NOT NULL,
	CONSTRAINT PK_Categoria PRIMARY KEY (CategoriaID)
)
GO

CREATE TABLE Produtos(
	ProdutoID INT NOT NULL IDENTITY(1,1),
	CategoriaID INT NOT NULL,
	Produto VARCHAR(30) NOT NULL,
	FornecedorID INT NOT NULL,
	CONSTRAINT PK_Produtos PRIMARY KEY (ProdutoID),
	CONSTRAINT FK_Produtos_Categoria FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID),
	CONSTRAINT FK_Produtos_Fornecedores FOREIGN KEY (FornecedorID) REFERENCES Fornecedores(FornecedorID)
)
GO