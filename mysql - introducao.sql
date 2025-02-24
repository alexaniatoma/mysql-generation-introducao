-- Cria um banco de dados com nome db_quitanda
CREATE DATABASE db_quitanda;

-- Seleciona o banco de dados db_quintanda para o uso
USE db_quitanda;

-- id = chave primaria => dado unico
-- Colunas objetos não podem ter ?*%+- ç (caracteres especiais) palavrasReservadas
CREATE TABLE tb_produtos
( id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

-- Retornar os dados da tabela - asteristico * all(tudo) todas as colunas
SELECT * FROM tb_produtos;

-- Inserir um novo registro
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES 
("banana", 1200, "2025-02-26", 10.0);

INSERT INTO tb_produtos(nome, quantidade, datavalidade,preco) VALUES
("Abacate", 400, "2025-02-27", 10.0);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES
 ("Goiaba", 550, "2025-02-26", 10.0);
 
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) VALUES 
("Melancia", 40, "2025-02-28", 25.0);

-- Formas diferentes de uso do SELECT
-- Retorna as colunas nome e preço
SELECT nome, preco FROM tb_produtos;

-- Retorna o nome e o preço com ALIAS "apelido" para cada coluna ajuda a criar uma visualização mais simpática
SELECT nome AS nomeProduto, preco AS "Preço" FROM tb_produtos;

-- Retornar apenas uma linha ou as linhas correspondentes a um critério
SELECT * FROM tb_produtos WHERE id = 4;

SELECT * FROM tb_produtos WHERE preco <= 10;

SELECT * FROM tb_produtos WHERE preco <> 10;

SELECT DISTINCT nome FROM tb_produtos;

-- Retorna as linhas que atendem os dois critérios o preço e diferente de 40 e quantidade igual a 40
SELECT * FROM tb_produtos WHERE preco <> 10.0 AND quantidade = 40;

-- Retorna as linhas onde a quantidade a quantidade não é 40
SELECT * FROM tb_produtos WHERE NOT quantidade = 40;

-- Ajuste na estrutura
-- Modificar um campo existente
ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2);

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

-- Atualiza a informação(dado)
UPDATE tb_produtos SET preco = 2.99;

-- Setando configuração -> TRAVA DE SEGURANÇA
SET SQL_SAFE_UPDATES = 1;

-- Setando configuração -> TIRAR A TRAVA DE SEGURANÇA
SET SQL_SAFE_UPDATES = 0;

-- Atualiza a informação(dado) onde o id for 1
UPDATE tb_produtos SET preco = 5.99 WHERE id = 1;

-- Delete da tabela tb_produtos onde o id = 3
DELETE FROM tb_produtos WHERE id = 3;

-- Requer tirar a trava de segurança, pois deleta mais de uma linha caso tenha mais de um item banana
DELETE FROM tb_produtos WHERE nome = "banana";

-- Requer tirar a trava de segurança, pois deleta mais de uma linha
-- Caso tenha  mais de um item com valor nome = goiaba ou abacaxi
DELETE FROM tb_produtos WHERE nome = "Goiaba" OR nome = "abacaxi";

-- Apaga a estrutura da tb_produtos
DROP TABLE tb_produtos;	

-- Apaga a estrutura do banco de dados tb_quitanda
DROP DATABASE db_quitanda;





