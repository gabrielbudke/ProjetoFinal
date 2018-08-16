DROP DATABASE IF EXISTS projeto_final;
CREATE DATABASE projeto_final;
USE projeto_final;

CREATE TABLE comerciantes(
	login VARCHAR (30),
	senha VARCHAR (6),	
	nome VARCHAR(100),
	cpf VARCHAR(20),
	email VARCHAR(50),
	telefone VARCHAR (20)
);

CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
        login VARCHAR(30),
        senha VARCHAR(6),
	funcao VARCHAR(50),
	cpf VARCHAR (20),
	telefone VARCHAR(20),
	email VARCHAR(50)
);

CREATE TABLE fornecedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100),
	cnpj VARCHAR (100),
	telefone VARCHAR (20),
	email VARCHAR (50)

);

CREATE TABLE categoria(
	id_produto INTEGER NOT NULL,
	categoria VARCHAR(50), -- TIpo do produto
	FOREIGN KEY (id_produto) REFERENCES produtos(id)

);

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100),
	preco DECIMAL (3,2)
);

CREATE TABLE estoque(
	id_produto INTEGER NOT NULL ,	
	tipo VARCHAR(7), -- Entrada ou Saída
	quantidade INT UNSIGNED,	
	FOREIGN KEY (id_produto) REFERENCES produtos(id)
);



