CREATE TABLE produtos (
    codigo_produto INT IDENTITY(1, 1) PRIMARY KEY,
    nome_produto VARCHAR(100),
    valor_produto DECIMAL(10, 2)
);

INSERT INTO produtos (nome_produto, valor_produto) VALUES
    ('Produto 1', 10.99),
    ('Produto 2', 15.50),
    ('Produto 3', 25.75),
    ('Produto 4', 8.99),
    ('Produto 5', 12.99),
    ('Produto 6', 19.99),
    ('Produto 7', 5.50),
    ('Produto 8', 9.75),
    ('Produto 9', 14.99),
    ('Produto 10', 11.50),
    ('Produto 11', 18.25),
    ('Produto 12', 7.99),
    ('Produto 13', 13.99),
    ('Produto 14', 21.99),
    ('Produto 15', 6.50),
    ('Produto 16', 10.75),
    ('Produto 17', 16.99),
    ('Produto 18', 9.50),
    ('Produto 19', 14.25),
    ('Produto 20', 8.99);
-- duplicando um registro 
INSERT INTO produtos (nome_produto, valor_produto) VALUES
    ('Produto 1', 10.99)

-- selecionando todos os produtos 
select * from produtos ;

-- listar todos os produtos mostrando quais sao duplicados 
select count(*), nome_produto from produtos group by nome_produto  


-- mostrar somente os produtos duplicados.
select count(*), nome_produto from produtos 
group  by nome_produto having  count(*) >= 2

     


-- inserir somente os produtos duplicados em uma tabela temporaria
SELECT nome_produto, valor_produto INTO #ProdutosTemporario
FROM produtos
WHERE nome_produto IN (
  SELECT nome_produto
  FROM produtos
  GROUP BY nome_produto
  HAVING COUNT(*) >= 2
);

-- selecionar os produtos da tabela temporaria criada acima.
select * from #ProdutosTemporario

