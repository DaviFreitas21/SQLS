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
	idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante) NOT NULL,
)

CREATE TABLE tbVenda(
	idVenda INT PRIMARY KEY IDENTITY (1,1),
	dataVenda SMALLDATETIME NOT NULL,
	idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente) NOT NULL,
	idVendedor INT FOREIGN KEY REFERENCES tbVendedor(idVendedor) NOT NULL,
	totalVenda MONEY NOT NULL,
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

INSERT INTO tbProduto (nomeProduto,precoProduto, dataEntradaProduto, idFabricante)
VALUES ('Conjunto Pijama', 119.99 , '16/04/2024', 1),
('Camiseta Licenciada do Palmeiras', 99.99 ,'25/10/2023', 3),
('Camiseta Licenciada do Flamengo', 99.99, '22/11/2025', 2),
('Calça	Jogador Rasgada', 139.99, '04/04/2025', 2),
('Chinelo de Borracha', 29.99, '07/09/2025', 1),
('Jaqueta Puffer', 219.99 ,'06/07/2025', 3),
('Shorts Jeans', 89.99, '02/02/2024', 2),
('Calça Legging', 64.99, '19/05/2022', 2)

INSERT INTO tbCliente(nomeCliente, idadeCliente)
VALUES ('Henrique Negri', 16),
('Thiago Borges', 16),
('Aline Cordeiro', 67),
('Clodoaldo Bastos', 58),
('Kaique Candido', 16)

INSERT INTO tbVendedor(nomeVendedor)
VALUES ('Ryan Albuquerque'),
('Rayssa Santos')

INSERT INTO tbVenda( dataVenda, idCliente, idVendedor, totalVenda)
VALUES ('11/12/2025', 1, 1, 204.98),
('18/01/2026', 2, 2, 169.98),
('23/03/2026', 3, 2, 129.98),
('15/03/2024', 4, 1, 189.98)