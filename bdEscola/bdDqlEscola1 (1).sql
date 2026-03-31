USE bdEscola

SELECT nomeAluno nome, rgAluno AS 'Rg do aluno', CONVERT (VARCHAR (12), dataNascimentoAluno, 105) AS 'Data de nascimento' FROM tbAluno
WHERE naturalidadeAluno = 'SP'

SELECT nomeAluno Nome, rgAluno AS 'Rg do aluno' FROM tbAluno
WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso AS 'Nome do curso' FROM tbCurso
WHERE cargaHorariaCurso > 2000

SELECT nomeAluno Nome, rgAluno RG FROM tbAluno
WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno Nome, CONVERT (VARCHAR(12), dataNascimentoAluno, 105) AS 'Data de nascimento' FROM tbAluno
WHERE MONTH(dataNascimentoAluno) = 03

SELECT	idAluno Código, CONVERT (VARCHAR(12), dataMatricula, 105) AS 'Data de matrícula' FROM tbMatricula
WHERE MONTH(dataMatricula) = 05

SELECT	idAluno Código FROM tbTurma
WHERE nomeCurso LIKE 'Inglês'

SELECT * FROM tbAluno

SELECT * FROM tbTurma