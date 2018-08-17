DROP DATABASE IF EXISTS projeto_final;
CREATE DATABASE projeto_final;
USE projeto_final;

CREATE TABLE comerciantes(
	login VARCHAR (30) NOT NULL,
	senha VARCHAR (6) NOT NULL,	
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	telefone VARCHAR(20) NOT NULL,
        rua VARCHAR(50) NOT NULL,
        numero VARCHAR(5) NOT NULL,
        bairro VARCHAR(50) NOT NULL,
        cidade VARCHAR(50) NOT NULL
);

CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
        login VARCHAR(30) NOT NULL,
        senha VARCHAR(6) NOT NULL,
	funcao VARCHAR(50) NOT NULL,
	cpf VARCHAR (20) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE endereço_funcionarios(
    id_funcionario INTEGER NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero VARCHAR(5), 
    bairro VARCHAR (50) NOT NULL,
    cidade VARCHAR (50) NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

CREATE TABLE fornecedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
	cnpj VARCHAR (100) NOT NULL,
	telefone VARCHAR (20) NOT NULL,
	email VARCHAR (50)
);

CREATE TABLE categoria(
	id_produto INTEGER NOT NULL,
	categoria VARCHAR(50), -- Tipo do produto
	FOREIGN KEY (id_produto) REFERENCES produtos(id)

);

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100),
	preco DECIMAL (3,2)
);

CREATE TABLE estoque(
	id_produto INTEGER NOT NULL ,	
	tipo VARCHAR(7) NOT NULL, -- Entrada ou Saída
	quantidade INT UNSIGNED,	
	FOREIGN KEY (id_produto) REFERENCES produtos(id)
);



