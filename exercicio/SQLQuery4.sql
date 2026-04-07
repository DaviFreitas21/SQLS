USE bdRecursosHumanos

SELECT COUNT(DISTINCT codDependente) 'Dependente' FROM tbDependente
WHERE codFuncionario = 1

