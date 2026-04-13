USE bdRecursosHumanos

/*Exercício A*/
SELECT COUNT(codDependente) 'Dependente' FROM tbDependente
WHERE codFuncionario = 1

/*Exercício B*/
SELECT codDepartamento Departamento, AVG(salarioFuncionario) AS 'Média dos salários' FROM tbFuncionario
WHERE codDepartamento !=10
GROUP BY codDepartamento

/*Exercício C*/
SELECT SUM(salarioFuncionario) AS 'Soma dos sálarios' FROM tbFuncionario
WHERE codDepartamento = 9

/*Exercício D*/
SELECT COUNT(codDependente) AS 'Quantidade de dependentes masculinos' FROM tbDependente
WHERE sexoDependente LIKE 'M'

/*Exercício E*/
SELECT COUNT(codDependente) AS 'Dependentes nascidos em 2000' FROM tbDependente
WHERE YEAR(dataNascimentoDependente)=2000

/*Exercício F*/
SELECT COUNT(codFuncionario) AS 'Quantidade de funcionários' FROM tbFuncionario
WHERE codDepartamento = 3

/*Exercício G*/
SELECT AVG(salarioFuncionario) AS 'Média Salarial' FROM tbFuncionario
WHERE codDepartamento=2

/*Exercício H*/
SELECT COUNT(codDependente) AS 'Total de dependentes nascidos em junho dos funcionários 1 e 2' FROM tbDependente
WHERE MONTH(dataNascimentoDependente) = 6 AND codFuncionario IN (1,2)

/*Exercício I*/
SELECT COUNT(codDependente) AS 'Dependentes homens nascidos antes de 2000' FROM tbDependente
WHERE sexoDependente LIKE 'M' AND YEAR(dataNascimentoDependente)<2000

/*Exercício J*/
SELECT COUNT(codDependente) AS 'Dependentes mulheres' FROM tbDependente
WHERE sexoDependente LIKE 'F'  AND codFuncionario != 2

/*Exercício K*/
SELECT COUNT(codDependente) AS 'Quantidade de dependentes' FROM tbDependente
WHERE codFuncionario = 3

/*Exercício L*/
SELECT codDepartamento Departamento, SUM(salarioFuncionario) AS 'Soma dos salários' FROM tbFuncionario
GROUP BY codDepartamento

/*Exercício M*/
SELECT codDepartamento Departamento, AVG(salarioFuncionario) AS 'Média dos salários' FROM tbFuncionario
GROUP BY codDepartamento

/*Exercício N (repetiu o exercício F)*/
SELECT COUNT(codFuncionario) AS 'Quantidade de funcionários' FROM tbFuncionario
WHERE codDepartamento = 3

/*Exercício O*/
SELECT nomeFuncionario AS 'Nome do funcionário', CONVERT (VARCHAR (12), dataNascimentoFuncionario, 103) AS 'Data de Nascimento' FROM tbFuncionario
ORDER BY nomeFuncionario

/*Exercício P*/
SELECT MAX(salarioFuncionario) AS 'Maior salário' FROM tbFuncionario

/*Exercício Q*/
SELECT MIN(salarioFuncionario) AS 'Menor salário' FROM tbFuncionario