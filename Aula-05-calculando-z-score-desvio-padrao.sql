-- criando as tabelas poder calcular os resultados

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


-- calculando o z score 
-- https://www.youtube.com/watch?v=NdQZeCgfehw&list=PL4OAe-tL47sbChxtnqCA2huB8jnBCo5l1&index=6&ab_channel=Zurubabel


-- selecionar a media dos precos dos produtos

-- stdev = desvio padrão =  medida de dispersão em torno da média populacional de uma variável aleatória.
-- 
 

-- calcular z score e desvio padrao ao mesmo tempo 
SELECT nome_produto, valor_produto, Calc.Media, Calc.DesvioPadrao, (valor_produto - Calc.Media) / Calc.DesvioPadrao as Z_SCORE
 FROM produtos, (
 SELECT AVG(valor_produto) as Media, 
 STDEV(valor_produto) as DesvioPadrao 
 FROM produtos) Calc 

