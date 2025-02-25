SELECT * FROM tb_produtos;

-- Ordenar por ordem ascendente - ordem alfabetica nome
SELECT * FROM tb_produtos ORDER BY nome ASC;

-- Ordenar por ordem descrescente - ordem alfabetica decrescente nome;
SELECT * FROM tb_produtos ORDER BY nome DESC;

-- Inserindo mais dados na tabela
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.99);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("alface",500, "2023-12-15", 1.99);

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (descricao) VALUES ("Frutas");
INSERT INTO tb_categorias (descricao) VALUES ("Verduras");
INSERT INTO tb_categorias (descricao) VALUES ("Legumes");
INSERT INTO tb_categorias (descricao) VALUES ("Temperos");
INSERT INTO tb_categorias (descricao) VALUES ("Hotaliças");
INSERT INTO tb_categorias (descricao) VALUES ("Cereais");

SELECT * FROM tb_categorias;

SELECT * FROM tb_categorias ORDER BY descricao ASC;

SELECT * FROM tb_categorias WHERE descricao = "Cereais";

-- Like compara textos e são sempre utilizados em conjunto com o operador % 
SELECT * FROM tb_categorias WHERE descricao LIKE "Cer%";

SELECT * FROM tb_categorias WHERE descricao LIKE "%s";

SELECT * FROM tb_categorias WHERE descricao LIKE "%a%";

DROP TABLE tb_categorias;

-- Alterando o nome "Hotaliças" para "Hortaliças"
UPDATE  tb_categorias SET descricao = "Hortaliças" WHERE id = 5;

-- IN Funciona como multiplos ORs
SELECT * FROM tb_produtos WHERE preco IN(5.0, 010.0, 15.0);

-- BETWEEN (entre) Verifica quais valores estão dentro do range definido
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.0 AND 15.0;

-- AVG Executa a media
SELECT AVG(preco) AS "Media de preços" FROM tb_produtos;

-- SUM Executa a soma
SELECT SUM(preco) AS "Soma de preços" FROM tb_produtos;

-- MAX Maximo
SELECT MAX(preco) AS "Valor mais caro" FROM tb_produtos;

-- MIN Minimo
SELECT MIN(preco) AS "Valor mais barato" FROM tb_produtos;

-- COUNT conta as linhas preenchidas;
SELECT COUNT(preco) AS "Qtdade de linhas" FROM tb_produtos;
