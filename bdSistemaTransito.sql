CREATE DATABASE bdSistemaTransito

USE bdSistemaTransito; 

CREATE TABLE tbMotorista(
	idMotorista INT PRIMARY KEY IDENTITY (1,1)
	,nomeMotorista VARCHAR (50)
	,cpfMotorista CHAR (14)
	,dataNascMotorista DATE
	,cnhMotorista VARCHAR (20)
);

CREATE TABLE tbCarro(
	idCarro INT PRIMARY KEY IDENTITY (1,1)
	,placaCarro CHAR (7)
	,modeloCarro VARCHAR (50)
	,corCarro VARCHAR (20)
	,idMotorista INT FOREIGN KEY (idMotorista) REFERENCES tbMotorista(idMotorista)
);

CREATE TABLE tbMulta(
	idMulta INT PRIMARY KEY IDENTITY (1,1)
	,dataMulta DATE
	,valorMulta DECIMAL (10,2)
	,descMulta VARCHAR (100)
	,idCarro INT FOREIGN KEY (idCarro) REFERENCES tbCarro(idCarro)
);

INSERT INTO tbMotorista(nomeMotorista, cpfMotorista, dataNascMotorista, cnhMotorista)
VALUES ('Carlos Silva','12345678900', '1985-06-15','01234567890')
,('Maria Oliveira', '98765432100','1990-09-23','902345678')
,('João Pereira','32165498700','1988-12-05','65498732100')
,('Ana Souza','15975325800','1995-07-19','75325815900')
,('Pedro Lima','45678912300','1982-03-28','78912345600');

--O modelo e a cor do carro de placa JKL-1122 não foi comentado no slide, então nós escolhemos esses
INSERT INTO tbCarro(placaCarro, modeloCarro, corCarro, idMotorista)
VALUES ('ABC1234','Honda Civic','Preto',1)
,('XYZ5678','Toyota Corolla','Branco',2)
,('DEF4321','Ford Focus','Vermelho',3)
,('GHI8765','Chevrolet Onix','Prata',4)
,('JKL1122','Volkswagen Jetta','Prata',5);


INSERT INTO tbMulta(dataMulta, valorMulta, descMulta, idCarro)
VALUES ('25-03-01 14:30:00','150.00','Excesso de velocidade (80km/h em zona de 60km/h',1)
,('2025-03-02 10:00:00','200.00','Avançar sinal vermelho',1)
,('2025-03-03 15:45:00','180.00','Estacionamento proibido',2)
,('2025-03-04 12:20:00','220.00','Dirigir sem cinto de segurança',3)
,('2025-03-05 08:10:00','300.00','Uso de celular ao volante',5);

UPDATE tbMotorista
SET nomeMotorista = 'João Pedro Pereira' WHERE idMotorista=3;

UPDATE tbMotorista
SET cnhMotorista = '75325815999' WHERE idMotorista=4;

UPDATE tbCarro
SET corCarro = 'Preto' WHERE idCarro=3;

UPDATE tbMulta
SET valorMulta = '250.00' WHERE idCarro=5;

UPDATE tbCarro
SET modeloCarro = 'Chevrolet Cruze' WHERE idCarro=4;

UPDATE tbMulta
SET valorMulta = '180.00' WHERE idMulta=1;

DELETE FROM tbMulta WHERE idCarro=2;
DELETE FROM tbCarro WHERE idCarro=2;

DELETE FROM tbMulta WHERE idCarro=5;
DELETE FROM tbCarro WHERE idMotorista=5;
DELETE FROM tbMotorista WHERE idMotorista=5;