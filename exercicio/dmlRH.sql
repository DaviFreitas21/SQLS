USE bdRecursosHumanos

INSERT INTO tbDepartamento (nomeDepartamento) 
VALUES
('Recursos Humanos'),
('Financeiro'),
('TI'),
('Marketing'),
('Jurídico'),
('Logística'),
('Comercial'),
('Produção'),
('Atendimento'),
('Pesquisa e Desenvolvimento');

INSERT INTO tbFuncionario 
(nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento) 
VALUES
('João Silva', '111.111.111-11', 'M', '1990-05-10', 3500.00, 1),
('Maria Souza', '222.222.222-22', 'F', '1988-03-22', 4200.00, 2),
('Carlos Lima', '333.333.333-33', 'M', '1995-07-15', 5000.00, 3),
('Ana Pereira', '444.444.444-44', 'F', '1992-11-30', 3800.00, 4),
('Fernanda Alves', '555.555.555-55', 'F', '1991-02-14', 4600.00, 5),
('Bruno Rocha', '666.666.666-66', 'M', '1987-08-19', 3900.00, 6),
('Juliana Martins', '777.777.777-77', 'F', '1993-12-03', 4100.00, 7),
('Ricardo Gomes', '888.888.888-88', 'M', '1985-06-25', 5300.00, 8),
('Patrícia Dias', '999.999.999-99', 'F', '1996-09-17', 3700.00, 9),
('Lucas Fernandes', '000.000.000-00', 'M', '1998-01-11', 3400.00, 10);

INSERT INTO tbDependente 
(nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario) 
VALUES
('Pedro Silva', '2015-06-01', 'M', 1),
('Lucas Silva', '2018-09-12', 'M', 1),
('Julia Souza', '2012-04-20', 'F', 2),
('Marina Lima', '2020-01-05', 'F', 3),
('Beatriz Alves', '2016-03-10', 'F', 5),
('Gabriel Rocha', '2014-07-22', 'M', 6),
('Larissa Martins', '2019-05-30', 'F', 7),
('Felipe Gomes', '2013-02-18', 'M', 8),
('Camila Dias', '2021-11-09', 'F', 9),
('Rafael Fernandes', '2017-08-27', 'M', 10);

USE master
DROP DATABASE bdRecursosHumanos