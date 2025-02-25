-- Adicionamos a coluna que vai receber chave estrangeira;
ALTER TABLE tb_produtos ADD categoriaId BIGINT;

-- CONSTRAINT = restriçãoptimize
-- Sinalizar para mysql que esse campo é uma chave estrangeira
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias -- fk_produtos_categorias nome
FOREIGN KEY (categoriaId) -- coluna chama categoriaId
REFERENCES tb_categorias(id); -- de onde vem a chave estrangeira

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE nome = "banana";

UPDATE tb_produtos SET categoriaID = 1 WHERE id = 1;

UPDATE tb_produtos SET categoriaID = 1 WHERE id = 3;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias  -- junção da tabela tb_produtos com a tabela tb_categorias
ON tb_produtos.categoriaId = tb_categorias.id; -- onde existe a conexão entre as tabelas

SELECT * FROM
tb_produtos
LEFT JOIN tb_categorias
ON tb_produtos.categoriaId = tb_categorias.id;

SELECT * FROM
tb_produtos
RIGHT JOIN tb_categorias
ON tb_produtos.categoriaId = tb_categorias.id;