DROP DATABASE IF EXISTS projeto_final;
CREATE DATABASE projeto_final;
USE projeto_final;

CREATE TABLE comerciantes(
	nome_comerciante VARCHAR(100),
	cpf_comerciante VARCHAR(20),
	email_comerciante VARCHAR(50),
	telefone_comerciante VARCHAR (20)
);

CREATE TABLE funcionarios(
	id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
	funcao_funcionario VARCHAR(50),
	cpf_funcionario VARCHAR (20),
	telefone_funcionario VARCHAR(20),
	email_funcionario VARCHAR(50)
);


CREATE TABLE fornecedores(
	id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100),
	cnpj VARCHAR (100),
	telefone VARCHAR (20),
	email VARCHAR (50)

);

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100),
	preco DECIMAL (3,2)
);

CREATE TABLE estoque(
	id_produto INTEGER NOT NULL ,	
	tipo VARCHAR(10), -- Entrada ou Saída
	quantidade INT UNSIGNED,	
	FOREIGN KEY (id_produto) REFERENCES produtos(id)
);


