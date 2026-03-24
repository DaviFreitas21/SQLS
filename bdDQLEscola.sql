CREATE DATABASE bdEscola
GO
USE bdEscola

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1),
	nomeAluno VARCHAR (50),
	dataNascimentoAluno SMALLDATETIME,
	rgAluno VARCHAR (9),
	naturalidadeAluno VARCHAR (20)
);

CREATE TABLE tbCurso(
	idCurso INT PRIMARY KEY IDENTITY (1,1),
	nomeCurso VARCHAR (30),
	cargaHorariaCurso INT,
	valorCurso MONEY
);

CREATE TABLE tbTurma(
	idTurma INT PRIMARY KEY IDENTITY (1,1),
	nomeTurma VARCHAR (30),
	idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso),
	horarioTurma SMALLDATETIME
);

CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1),
	dataMatricula SMALLDATETIME,
	idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno),
	idTurma INT FOREIGN KEY REFERENCES tbMatricula(idMatricula)
);

INSERT INTO tbCurso(nomeCurso, cargaHorariaCurso, valorCurso)
VALUES ('Inglês', 2000, 356.00),
('Alemão', 3000, 478.00)

INSERT INTO tbAluno(nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno)
VALUES (),