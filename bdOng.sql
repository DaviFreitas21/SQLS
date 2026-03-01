CREATE DATABASE bdOng
GO

USE bdOng

CREATE TABLE tbSexo(
	idSexo INT PRIMARY KEY IDENTITY (1,1)
	,descSexo VARCHAR (30) NOT NULL
)

CREATE TABLE tbStatusCrianca(
	idStatusCrianca INT PRIMARY KEY IDENTITY (1,1)
	,descStatusCrianca VARCHAR (20) NOT NULL
)

CREATE TABLE tbPadrinho (
	idPadrinho INT PRIMARY KEY IDENTITY (1,1)
	,nomePadrinho VARCHAR (50) NOT NULL
	,cpfPadrinho CHAR (11) NOT NULL
)

CREATE TABLE tbCrianca(
	idCrianca INT PRIMARY KEY IDENTITY (1,1)
	,nomeCrianca VARCHAR (50) NOT NULL
	,dataNascCrianca SMALLDATETIME NOT NULL
	,idStatusCrianca INT FOREIGN KEY REFERENCES tbStatusCrianca(idStatusCrianca) NOT NULL
	,idSexo INT FOREIGN KEY REFERENCES tbSexo(idSexo) NOT NULL
)

CREATE TABLE tbObservacaoCrianca(
	idObservacaoCrianca INT PRIMARY KEY IDENTITY (1,1)
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca) NOT NULL
	,obsCrianca VARCHAR (150) NOT NULL
	,dataObsCrianca SMALLDATETIME NOT NULL
)

CREATE TABLE tbApadrinhamento(
	idApadrinhamento INT PRIMARY KEY IDENTITY (1,1)
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca)
	,idPadrinho INT FOREIGN KEY REFERENCES tbPadrinho(idPadrinho)
	,dataApadrinhamento SMALLDATETIME NOT NULL
)

CREATE TABLE tbProntuario(
	idProntuario INT PRIMARY KEY IDENTITY (1,1)
	,obsProntuario VARCHAR (100) NOT NULL
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca) UNIQUE NOT NULL
)

CREATE TABLE tbDoenca(
	idDoenca INT PRIMARY KEY IDENTITY (1,1)
	,nomeDoenca VARCHAR (100) NOT NULL
	,cidDoenca VARCHAR(6) NOT NULL
)

CREATE TABLE tbProntuarioDoenca(
	idProntuarioDoenca INT PRIMARY KEY IDENTITY (1,1)
	,idProntuario INT FOREIGN KEY REFERENCES tbProntuario(idProntuario) NOT NULL
	,idDoenca INT FOREIGN KEY REFERENCES tbDoenca(idDoenca) NOT NULL
)

CREATE TABLE tbGenitor(
	idGenitor INT PRIMARY KEY IDENTITY (1,1)
	,nomeGenitor VARCHAR (50) NOT NULL
	,cpfGenitor CHAR (11) NOT NULL
)

CREATE TABLE tbFiliacao(
	idFiliacao INT PRIMARY KEY IDENTITY (1,1)
	,idCrianca INT FOREIGN KEY REFERENCES tbCrianca(idCrianca) NOT NULL
	,idGenitor INT FOREIGN KEY REFERENCES tbGenitor(idGenitor) NOT NULL
)