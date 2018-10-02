DROP DATABASE IF EXISTS projeto_final;
CREATE DATABASE projeto_final;
USE projeto_final;


CREATE TABLE funcionarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_funcionario INTEGER,

	login VARCHAR (30),
	senha VARCHAR (8),	
	nome VARCHAR(100),
	cpf VARCHAR(20),
	email VARCHAR(50),
	telefone VARCHAR(20),
	rua VARCHAR(50),
	numero VARCHAR(5) ,
	bairro VARCHAR(50) ,
	cidade VARCHAR(50) ,
	estado VARCHAR(20) ,
	funcao VARCHAR(50) ,
	cep VARCHAR(20) ,

	tipo VARCHAR(100) DEFAULT 'Colaborador',
	FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO funcionarios (nome,login, senha, telefone, funcao) VALUES
('Patrick', 'patrick', '12345678', '(83) 3542-2574', 'Suporte'),
('Gabriel', 'gabriel', '12345678', '(83) 3232-4545', 'Suporte'),
('Logan', 'logan', '12345678', '(83) 3434-4646', 'Suporte'),
('Joseph', 'joseph', '12345678', '(83) 3535-4747', 'Suporte'),
('Kaio', 'kaio', '12345678', '(83) 3636-4848', 'Suporte'),
('João Paulo', 'joao_paulo', '123', '(84) 3507-3289', 'motorista'),
('Isadora da Costa ', 'isadora', '123', '(84) 98104-9974', 'advogada');

CREATE TABLE fornecedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100) ,
	cnpj VARCHAR (100) ,
	telefone VARCHAR (20) ,
	email VARCHAR (50)
);

INSERT INTO fornecedores (nome, cnpj, telefone, email) VALUES
('Padaria Pão de Açucar', '12345678000165', '47-33252471', 'padaria@padaria.com');

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100)
);

INSERT INTO categorias (nome) VALUES
('Elêtronicos'),
('Acessórios'),
('Eletrodomésticos'),
('Alimentos e Bebidas'),
('Vestuários');

CREATE TABLE produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
        id_categoria INTEGER NOT NULL,
        nome VARCHAR (100),
	preco DECIMAL (8,2),
        FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO produtos (id_categoria, nome, preco) VALUES 
(1, 'Xbox', 1800),
(2, 'Pulseira', 4.50),
(1, 'PS4', 4000),
(1, 'TV', 5000),
(3, 'Geladeira', 1800),
(3, 'Pia', 800),
(1, 'Sorvete', 12),
(1, 'Apple Watch', 12000),
(1, 'Monitor', 800),
(1, 'Rádio', 1000),
(4, 'Salgadinho', 5.50),
(4, 'Refrigerante', 7),
(4, 'Suco', 1.86),
(1, 'Mouse', 300),
(1, 'Teclado', 750),
(5, 'Camiseta', 25),
(5, 'Calça Jeans', 87),
(5, 'Camisa Polo', 58.75);

CREATE TABLE estoque(
    id INT AUTO_INCREMENT PRIMARY KEY,
	id_produto INTEGER NOT NULL,	
	tipo VARCHAR(7), -- Entrada ou Saída
	quantidade INT UNSIGNED,
	FOREIGN KEY (id_produto) REFERENCES produtos(id)
);

INSERT INTO estoque (id_produto, tipo, quantidade) VALUES
(1, 'Entrada', 4),
(2, 'Entrada', 5),
(1, 'Entrada', 100),
(4, 'Entrada', 30),
(1, 'Saida', 5),
(4, 'Saida', 10),
(2, 'Saida', 2);


