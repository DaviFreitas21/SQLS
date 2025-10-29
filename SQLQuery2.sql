CREATE DATABASE bdTransito

USE bdTransito; 

CREATE TABLE tbMotorista(
	idMotorista INT PRIMARY KEY IDENTITY
	,nomeMotorista VARCHAR (50)
	,cpfMotorista CHAR (14)
	,dataNascMotorista DATE
	,cnhMotorista VARCHAR (20)
);

CREATE TABLE tbCarro(
	idCarro INT PRIMARY KEY IDENTITY
	,placaCarro CHAR (7)
	,modeloCarro VARCHAR (50)
	,corCarro VARCHAR (20)
	,idMotorista INT FOREIGN KEY (idMotorista) REFERENCES tbMotorista(idMotorista)
);

CREATE TABLE tbMulta(
	idMulta INT PRIMARY KEY IDENTITY
	,dataMulta DATE
	,valorMulta DECIMAL (10,2)
	,descMulta VARCHAR (100)
	,idCarro INT FOREIGN KEY (idCarro) REFERENCES tbCarro(idCarro)
);



