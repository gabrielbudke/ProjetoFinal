DROP DATABASE IF EXISTS projeto_final;
CREATE DATABASE projeto_final;
USE projeto_final;

CREATE TABLE comerciantes(
        id INT AUTO_INCREMENT PRIMARY KEY,
	login VARCHAR (30) NOT NULL,
	senha VARCHAR (6) NOT NULL,	
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(20) NOT NULL,
	email VARCHAR(50),
	telefone VARCHAR(20) NOT NULL,
        rua VARCHAR(50) NOT NULL,
        numero VARCHAR(5) NOT NULL,
        bairro VARCHAR(50) NOT NULL,
        cidade VARCHAR(50) NOT NULL,
        estado VARCHAR(20) NOT NULL
);

CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
        id_comerciante INTEGER NOT NULL,
        login VARCHAR(30) NOT NULL,
        nome VARCHAR (100) NOT NULL,
        senha VARCHAR(6) NOT NULL,
	funcao VARCHAR(50) NOT NULL,
	cpf VARCHAR (20) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL,
        FOREIGN KEY (id_comerciante) REFERENCES comerciantes(id)
);

CREATE TABLE endereço_funcionarios(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INTEGER NOT NULL,
    cep VARCHAR(10),
    estado VARCHAR(2),
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

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
        id_categoria INTEGER NOT NULL,
        nome VARCHAR (100),
	preco DECIMAL (3,2),
        FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

CREATE TABLE produtos_saida(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100),
        quantidade INT UNSIGNED,
        total FLOAT
);

CREATE TABLE estoque(
        id INT AUTO_INCREMENT PRIMARY KEY,
	id_produto INTEGER NOT NULL,	
	tipo VARCHAR(7) NOT NULL, -- Entrada ou Saída
	quantidade INT UNSIGNED,	
	FOREIGN KEY (id_produto) REFERENCES produtos(id));

CREATE TABLE fluxo_caixa(
        id INT AUTO_INCREMENT PRIMARY KEY,
        total_recebido DECIMAL(4,2),
        total_saida DECIMAL (4,2),
        saldo_inicial DECIMAL(4,2),
        saldo_final DECIMAL(4,2)


);



