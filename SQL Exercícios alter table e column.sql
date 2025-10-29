CREATE DATABASE bdAeroporto;

USE bdAeroporto;

CREATE TABLE tbPassageiro(
	id INT IDENTITY(1,1),
	nome VARCHAR(100),
	idade INT
	);

	ALTER TABLE tbPassageiro ALTER COLUMN nome INT NOT NULL;

	ALTER TABLE tbPassageiro ADD cpf CHAR (14);

	EXEC sp_rename 'tbPassageiro.idade', 'anoNascimento', 'column';

	ALTER TABLE tbPassageiro ALTER COLUMN cpf CHAR (11);

	ALTER TABLE	tbPassageiro ADD CONSTRAINT uq_cpf UNIQUE (cpf);

	ALTER TABLE tbPassageiro ADD nacionalidade VARCHAR (30);

	ALTER TABLE tbPassageiro ADD CONSTRAINT pk_id PRIMARY KEY (id);

	ALTER TABLE tbPassageiro DROP COLUMN nacionalidade;

	EXEC sp_rename 'tbPassageiro', 'tbClienteVoo';