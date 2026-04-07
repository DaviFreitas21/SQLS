CREATE DATABASE bdRecursosHumanos
GO
USE bdRecursosHumanos

-- Tabela de Departamentos
CREATE TABLE tbDepartamento (
    codDepartamento INT PRIMARY KEY IDENTITY (1,1)
    nomeDepartamento VARCHAR(100) NOT NULL
);

-- Tabela de Funcionários
CREATE TABLE tbFuncionario (
    codFuncionario INT PRIMARY KEY IDENTITY (1,1),
    nomeFuncionario VARCHAR(100) NOT NULL,
    cpfFuncionario VARCHAR(14) NOT NULL UNIQUE,
    sexoFuncionario CHAR(1),
    dataNascimentoFuncionario DATE,
    salarioFuncionario DECIMAL(10,2),
    codDepartamento INT FOREIGN KEY REFERENCES tbDepartamento(codDepartamento)
);

-- Tabela de Dependentes
CREATE TABLE tbDependente (
    codDependente INT PRIMARY KEY IDENTITY (1,1),
    nomeDependente VARCHAR(100) NOT NULL,
    dataNascimentoDependente DATE,
    sexoDependente CHAR(1),
    codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
);