CREATE DATABASE bdUniversidade

GO
USE bdUniversidade

CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina VARCHAR (50) NOT NULL
	,descDisciplina VARCHAR (100) NOT NULL
)

CREATE TABLE tbUf(
	idUf INT PRIMARY KEY IDENTITY (1,1)
	,descUf CHAR (2) NOT NULL
)

CREATE TABLE tbCidade(
	idCidade INT PRIMARY KEY IDENTITY (1,1)
	,nomeCidade VARCHAR (50) NOT NULL
	,idUf INT FOREIGN KEY REFERENCES tbUf(idUf) NOT NULL
)

CREATE TABLE tbBairro(
	idBairro INT PRIMARY KEY IDENTITY (1,1)
	,nomeBairro VARCHAR (50) NOT NULL
	,idCidade INT FOREIGN KEY REFERENCES tbCidade(idCidade) NOT NULL
)

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (50) NOT NULL
	,descCurso VARCHAR (100) NOT NULL
	,duracaoCurso INT NOT NULL 
	,quantAlunoCurso INT NOT NULL
)

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (70) NOT NULL
	,cpfAluno CHAR (11) UNIQUE NOT NULL
	,dataNascAluno SMALLDATETIME NOT NULL
	,logradouroAluno VARCHAR (50) NOT NULL
	,numLograAluno VARCHAR (5) NOT NULL
	,cepAluno CHAR (8) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso) NOT NULL
	,idBairro INT FOREIGN KEY REFERENCES tbBairro(idBairro) NOT NULL
)

CREATE TABLE tbFoneAluno(
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,descFoneAluno CHAR (11) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno) NOT NULL
)

CREATE TABLE tbEmailAluno(
	idFoneAluno	INT PRIMARY KEY IDENTITY (1,1)
	,descEmailAluno VARCHAR (30) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno) NOT NULL
)

CREATE TABLE tbCampi(
	idCampi INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampi VARCHAR (50) NOT NULL
	,logradouroCampi VARCHAR (50) NOT NULL
	,numLograCampi VARCHAR (5) NOT NULL
	,cepCampi CHAR (8) NOT NULL
	,idBairro INT FOREIGN KEY REFERENCES tbBairro(idBairro) NOT NULL
)

CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (50) NOT NULL
	,cpfProfessor CHAR (11) UNIQUE NOT NULL
	,dataNascProfessor SMALLDATETIME NOT NULL
	,logradouroProfessor VARCHAR (50) NOT NULL
	,numLograProfessor VARCHAR (5) NOT NULL
	,cepProfessor CHAR (8) NOT NULL
	,idBairro INT FOREIGN KEY REFERENCES tbBairro(idBairro) NOT NULL
)

CREATE TABLE tbEmailProfessor(
	idEmailProfessor INT PRIMARY KEY IDENTITY (1,1)
	,descEmailProfessor VARCHAR (30) NOT NULL 
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor) NOT NULL
)

CREATE TABLE tbFoneProfessor(
	idFoneProfessor INT PRIMARY KEY IDENTITY (1,1)
	,descFoneProfessor CHAR (11) NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor) NOT NULL
)

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,descTurma VARCHAR (20) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno) NOT NULL
)

CREATE TABLE tbTurmaAluno(
	idTurmaAluno INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno) NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma) NOT NULL
)

CREATE TABLE tbProfDisciplinaTurma (
	idProfDisciplinaTurma INT PRIMARY KEY IDENTITY (1,1)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor) NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma) NOT NULL
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina) NOT NULL
)

CREATE TABLE tbCampiCurso(
	idCampiCurso INT PRIMARY KEY IDENTITY (1,1)
	,idCampi INT FOREIGN KEY REFERENCES tbCampi(idCampi) NOT NULL 
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso) NOT NULL
)

CREATE TABLE tbDisciplinaCurso(
	idDisciplinaCurso INT PRIMARY KEY IDENTITY (1,1)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso) NOT NULL
)

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME NOT NULL
	,descMatricula VARCHAR (100) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno) NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma) NOT NULL
)

CREATE TABLE tbSalaCampi(
	idSalaCampi INT PRIMARY KEY IDENTITY(1,1)
	,numSalaCampi INT NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma) NOT NULL
)

CREATE TABLE tbAnoFormacao(
	idAnoFormacao INT PRIMARY KEY IDENTITY(1,1)
	,dataAnoFormacao SMALLDATETIME NOT NULL
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma) NOT NULL
)