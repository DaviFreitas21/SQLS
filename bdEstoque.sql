CREATE DATABASE bdEstoque

GO

USE bdEstoque

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1),
	nomeCliente VARCHAR (50) NOT NULL,
	cpfCliente CHAR(11) UNIQUE NOT NULL,
	emailCliente VARCHAR (50) NOT NULL,
	sexoCliente CHAR (1) NOT NULL,
	dataNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbVenda(
	idVenda INT  PRIMARY  KEY  IDENTITY (1,1),
	dataVenda SMALLDATETIME NOT NULL,
	valorTotalVenda SMALLMONEY NOT NULL,
	idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente) NOT NULL,
)

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY(1,1),
	nomeFabricante VARCHAR (40) NOT NULL,
)

CREATE TABLE tbFornecedor(
	idFornecedor INT PRIMARY KEY IDENTITY (1,1),
	nomeFornecedor VARCHAR (60) NOT NULL,
	contatoFornecedor VARCHAR (50) NOT NULL,
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1),
	descProduto VARCHAR (100) NOT NULL,
	valorProduto SMALLMONEY NOT NULL,
	qtdProduto INT NOT NULL,
	idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante) NOT NULL,
	idFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(idFornecedor) NOT NULL,
)

CREATE TABLE tbItensVenda(
	idItensVenda INT PRIMARY  KEY  IDENTITY (1,1),
	qtdItensVenda INT NOT NULL,
	subTotalItensVenda SMALLMONEY NOT NULL,
	idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda) NOT NULL,
	idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto) NOT NULL, 
)

INSERT INTO tbCliente (nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascCliente)
VALUES ('Armando José Santana', '12345678900','armandojsantana@outlook.com','m','21-02-1961'),