CREATE DATABASE bdLojaSimples
GO

USE bdLojaSimples
GO

--Tabela Cliente
CREATE TABLE tbCliente (
    idCliente INT PRIMARY KEY IDENTITY(1,1)
    ,nomeCliente VARCHAR(60)
    ,telefoneCliente VARCHAR(15)
);

--Tabela Produto
CREATE TABLE tbProduto (
    idProduto INT  PRIMARY KEY IDENTITY(1,1)
    ,nomeProduto VARCHAR(50)
    ,precoProduto MONEY
    ,estoqueAtual INT
);

--Tabela Caixa
CREATE TABLE tbCaixa (
    idCaixa INT PRIMARY KEY IDENTITY(1,1)
    ,dataAbertura DATE
	,horaAbertura TIME
	,valorAbertura MONEY
	,dataFechamento DATE
	,horaFechamento TIME
	,valorFechamento MONEY
);

--Tabela Venda
CREATE TABLE tbVenda (
    idVenda INT PRIMARY KEY IDENTITY(1,1)
    ,dataVenda DATE
    ,valorTotal MONEY
	,idCliente INT FOREIGN KEY (idCliente) REFERENCES tbCliente(idCliente)
	,idCaixa INT FOREIGN KEY REFERENCES tbCaixa(idCaixa)
    
);

--Tabela ItensVenda
CREATE TABLE tbItensVenda(
	idItensVenda INT PRIMARY KEY IDENTITY(1,1)
	,idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
	,idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
);

--Tabela Forma de Pagamento
CREATE TABLE tbFormaPagamento(
	idFormaPagamento INT PRIMARY KEY IDENTITY(1,1)
	,descricaoFormaPagamento VARCHAR(40)
);

--Tabela Parcela
CREATE TABLE tbParcela(
	idParcela INT PRIMARY KEY IDENTITY(1,1)
	,idVenda INT FOREIGN KEY REFERENCES tbVenda(idVEnda)
	,idFormaPagamento INT FOREIGN KEY REFERENCES tbFormaPagamento(idFormaPagamento)
);

INSERT INTO tbCliente(nomeCliente, telefoneCliente)
VALUES ('João Silva','1198765-4321')
,('Maria Oliveira','1199999-1010')
,('Carlos Santos','1198888-2020')
,('Ana Souza','1197777-3030')
,('Paulo Lima','1196666-4040')
,('Fernanda Alves','1195555-5050')
,('Ricardo Mendes','1194444-6060');

INSERT INTO tbProduto(nomeProduto, precoProduto, estoqueAtual)
VALUES ('Mouse sem fio','79.90','20')
,('Teclado mecânico','250.00','15')
,('Monitor 24 polegadas','899.00','10')
,('Cabo HDMI 2m','35.00','30')
,('Headset Gamer','199.90','18')
,('Pendrive 64GB','59.90','25')
,('Notebook Dell Inspiron','4200.00','5');

INSERT INTO tbCaixa (dataAbertura,horaAbertura,valorAbertura,dataFechamento,horaFechamento,valorFechamento)
VALUES ('2025-11-01','08:00','500.00','2025-11-01','18:00','2500.00')
,('2025-11-02','08:10','500.00','2025-11-02','18:15','2200.00')
,('2025-11-03','08:05','400.00','2025-11-03','18:20','3100.00')
,('2025-11-04','08:00','600.00','2025-11-04','18:30','2950.00')
,('2025-11-05','08:10','550.00','2025-11-05','18:00','2750.00')
,('2025-11-06','08:00','500.00','2025-11-06','18:15','2600.00')
,('2025-11-07','08:00','450.00','2025-11-07','18:20','2800.00');

INSERT INTO tbVenda (dataVenda, valorTotal, idCliente, idCaixa)
VALUES ('2025-11-01','329.90',1,1)
,('2025-11-01','199.90',2,1)
,('2025-11-02','1150.00',3,2)
,('2025-11-03','4200.00',4,3)
,('2025-11-04','289.90',5,4)
,('2025-11-05','250.00',6,5)
,('2025-11-06','129.90',7,6);

INSERT INTO tbItensVenda (idProduto,idVenda)
VALUES (1,1)
,(4,1)
,(5,2)
,(3,3)
,(7,4)
,(2,5)
,(6,6);

INSERT INTO tbFormaPagamento (descricaoFormaPagamento)
VALUES ('Dinheiro')
,('Cartão de Crédito')
,('Cartão de Débito')
,('PIX')
,('Boleto')
,('Transferência')
,('Vale Presente');

INSERT INTO tbParcela (idVenda, idFormaPagamento)
VALUES (1,1)
,(2,3)
,(3,2)
,(4,2)
,(5,4)
,(6,1)

--Exercício 1
UPDATE tbCliente
SET telefoneCliente= '1199000-1111' WHERE idCliente=1;

--Exercício 2
UPDATE tbProduto
SET nomeProduto = 'Pendrive 64GB Sandisk' WHERE idProduto=6;

--Todos os itens já foram vendidos, por isso, não dá pra concluir o terceiro exercício

--Exercício 4
UPDATE tbProduto
SET precoProduto = precoProduto * 1.05;

--Exercício 5
UPDATE tbProduto
SET estoqueAtual = '40' WHERE idProduto=4;

--Exercício 6
DELETE FROM tbFormaPagamento WHERE idFormaPagamento=5;
DELETE FROM tbFormaPagamento WHERE idFormaPagamento=6;
DELETE FROM tbFormaPagamento WHERE idFormaPagamento=7;

--Exercício 7
UPDATE tbParcela
SET idFormaPagamento = 4 WHERE idParcela=3;

--Exercício 8
UPDATE tbVenda
SET valorTotal = '350,00' WHERE idVenda=1;

--Exercício 9
UPDATE tbCaixa
SET horaFechamento = '18:15' WHERE idCaixa=5;

--Exercício 10
--Na verdade, o cliente 7 já havia realizado uma compra sim, mas ainda conseguimos apagar seus dados
DELETE FROM tbParcela WHERE idVenda=7;
DELETE FROM tbVenda WHERE idCliente=7;
DELETE FROM tbCliente WHERE idCliente=7;
