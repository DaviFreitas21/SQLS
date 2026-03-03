CREATE DATABASE bdUniversidade

GO
USE bdUniversidade

CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina VARCHAR (50)
	,descDisciplina VARCHAR (100)
)

CREATE TABLE tbUf(
	idUf INT PRIMARY KEY IDENTITY (1,1)
	,descUf CHAR (2)
)

CREATE TABLE tbCidade(
	idCidade INT PRIMARY KEY IDENTITY (1,1)
	,nomeCidade VARCHAR (50)
	,idUf INT FOREIGN KEY REFERENCES tbUf(idUf)
)

CREATE TABLE tbBairro(
	idBairro INT PRIMARY KEY IDENTITY (1,1)
	,nomeBairro VARCHAR (50)
	,idCidade INT FOREIGN KEY REFERENCES tbCidade(idCidade)
)

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (70)
	,cpfAluno CHAR (11) UNIQUE
	,dataNascAluno SMALLDATETIME
	,logradouroAluno VARCHAR (50)
	,numLograAluno VARCHAR (5)
	,cepAluno CHAR (8)
	,idBairro INT FOREIGN KEY REFERENCES tbBairro(idBairro)
)

CREATE TABLE tbCampi(
	idCampi INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampi VARCHAR (50)
	,logradouroCampi VARCHAR (50)
	,numLograCampi VARCHAR (5)
	,cepCampi CHAR (8)
	,idBairro INT FOREIGN KEY REFERENCES tbBairro(idBairro)
)

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (50)
	,cpfProfessor CHAR (11) UNIQUE
	,dataNascProfessor SMALLDATETIME
	,logradouroProfessor VARCHAR (50)
	,numLograProfessor VARCHAR (5)
	,cepProfessor CHAR (8)
	,idBairro INT FOREIGN KEY REFERENCES tbBairro(idBairro)
)
