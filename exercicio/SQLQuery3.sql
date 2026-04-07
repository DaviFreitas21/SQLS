USE bdRecursosHumanos

INSERT INTO tbDepartamento (nomeDepartamento) 
VALUES
('Recursos Humanos'),
('Financeiro'),
('TI'),
('Marketing');

INSERT INTO tbFuncionario 
(nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento) 
VALUES
('João Silva', '111.111.111-11', 'M', '1990-05-10', 3500.00, 1),
('Maria Souza', '222.222.222-22', 'F', '1988-03-22', 4200.00, 2),
('Carlos Lima', '333.333.333-33', 'M', '1995-07-15', 5000.00, 3),
('Ana Pereira', '444.444.444-44', 'F', '1992-11-30', 3800.00, 4);

INSERT INTO tbDependente 
(codDependente, nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario) 
VALUES
(1, 'Pedro Silva', '2015-06-01', 'M', 1),
(2, 'Lucas Silva', '2018-09-12', 'M', 1),
(3, 'Julia Souza', '2012-04-20', 'F', 2),
(4, 'Marina Lima', '2020-01-05', 'F', 3);	

USE master
DROP DATABASE bdRecursosHumanos