USE bdEscola


/* Exercício 1 */
SELECT nomeAluno nome, rgAluno AS 'Rg do aluno', CONVERT (VARCHAR (12), dataNascimentoAluno, 105) AS 'Data de nascimento' FROM tbAluno
WHERE naturalidadeAluno = 'SP'

/* Exercício 2 */
SELECT nomeAluno Nome, rgAluno AS 'Rg do aluno' FROM tbAluno
WHERE nomeAluno LIKE 'P%'

/* Exercício 3 */
SELECT nomeCurso AS 'Nome do curso' FROM tbCurso
WHERE cargaHorariaCurso > 2000

/* Exercício 4 */
SELECT nomeAluno Nome, rgAluno RG FROM tbAluno
WHERE nomeAluno LIKE '%Silva%'

/* Exercício 5 */
SELECT nomeAluno Nome, CONVERT (VARCHAR(12), dataNascimentoAluno, 105) AS 'Data de nascimento' FROM tbAluno
WHERE MONTH(dataNascimentoAluno) = 03

/* Exercício 6 */
SELECT	idAluno Código, CONVERT (VARCHAR(12), dataMatricula, 105) AS 'Data de matrícula' FROM tbMatricula
WHERE MONTH(dataMatricula) = 05

/* Exercício 7 */
SELECT	idAluno Código FROM tbMatricula
WHERE idTurma IN(
	SELECT idTurma FROM tbTurma
	WHERE idCurso = (
		SELECT idCurso FROM tbCurso
		WHERE nomeCurso = 'Inglês'
	)
)

/* Exercício 8 */
SELECT idAluno Código FROM tbMatricula
WHERE idTurma IN (
	SELECT idTurma FROM tbTurma
	WHERE nomeTurma LIKE '1AA'
)

/* Exercício 9 */
SELECT * FROM tbAluno

/* Exercício 10 */
SELECT * FROM tbTurma