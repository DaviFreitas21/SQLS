CREATE DATABASE bdLojaRoupas 
GO
USE bdLojaRoupas

CREATE TABLE tbCliente(
	idCliente INT PRIMARY KEY IDENTITY(1,1),
	nomeCliente VARCHAR (60) NOT NULL,
	idadecliente INT NOT NULL,
)

CREATE TABLE tbFuncionario (
	idFuncionario INT PRIMARY KEY IDENTITY(1,1),
	nomeFuncionario VARCHAR(60) NOT NULL,
	idadeFuncionario INT NOT NULL,
	dataAdmissao SMALLDATETIME NOT NULL,
	salarioFuncionario MONEY NOT NULL,
)

CREATE TABLE tbFabricante(
	idFabricante INT PRIMARY KEY IDENTITY (1,1),
	nomeFabricante VARCHAR (60) NOT NULL,
)

CREATE TABLE tbVendedor(
	idVendedor INT PRIMARY KEY IDENTITY (1,1),
	nomeVendedor VARCHAR (60) NOT NULL,
)

CREATE TABLE tbProduto(
	idProduto INT PRIMARY KEY IDENTITY (1,1),
	nomeProduto Varchar (30) NOT NULL,
	precoProduto MONEY NOT NULL,
	dataEntradaProduto SMALLDATETIME NOT NULL,
	idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario),
	idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante) NOT NULL,
)

CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY (1,1),
	dataVenda SMALLDATETIME NOT NULL,
	idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente) NOT NULL,
	idVendedor INT FOREIGN KEY REFERENCES tbVendedor(idVendedor) NOT NULL,
	totalVendas INT NOT NULL,
)

CREATE TABLE tbItensVenda(
	idItensVenda INT PRIMARY KEY IDENTITY (1,1),
	idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda) NOT NULL,
	idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto) NOT NULL,
	qtdItens INT NOT NULL,
	subTotalItens MONEY NOT NULL,
)

INSERT INTO tbFabricante (nomeFabricante)
VALUES ('Malwee'),
('Marisol'),
('Cia da Malha')

