
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


-- utilizamos o comando over para agrupar e ordernar os dados, não precisamos utilziar 
select nome_produto, valor_produto, 
avg(valor_produto) over() as Media, 
stdev(valor_produto) over() as DesvioPadrao,
(valor_produto - avg(valor_produto) over() ) / stdev(valor_produto) over() as Z_Score
from produtos 
 

-- agora agrupando os registros:
SELECT
    nome_produto,
    valor_produto,
    AVG(valor_produto) AS Media,
    STDEV(valor_produto) AS DesvioPadrao,
    CASE
        WHEN STDEV(valor_produto) <> 0 THEN (valor_produto - AVG(valor_produto)) / STDEV(valor_produto)
        ELSE 0
    END AS Z_Score
FROM
    produtos
GROUP BY
    nome_produto,
    valor_produto

