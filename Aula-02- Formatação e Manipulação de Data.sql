-- SQL Server Intermediário (Aula 2) - Funções de Formatação e Manipulação de Data


-- pegar data atual
select GETDATE()


-- diferença de data
select datediff(year,'2001-09-20',getdate());
select datediff(month,'2001-09-20',getdate());


-- adicionar dias á data atual.
select dateadd(day, -1, getdate()) -- tira um dia 
select dateadd(day, 1, getdate()) -- adiciona um dia 
select dateadd(year, -1, getdate()) -- remove um ano 
-- como tirar um ano e um mês da data atual, cada condicional adiciona um dateadd diferente
select dateadd(month, -1, dateadd(year,-1,getdate()))


-- saber qual dia da semana é hoje.
select datepart(weekday,getdate());
select datepart(weekday, dateadd(year, -1, getdate())) -- qual dia da semana era um ano
-- comeca contar no domingo como sendo o dia 1 da semana.



-- fazer um relatiorio de registros das vendas de dois anos atras ate hoje
-- Criação da tabela "vendas"
-- Criação da tabela "vendas"
CREATE TABLE vendas (
  id INT PRIMARY KEY IDENTITY(1,1),
  data_venda DATE,
  codigo_produto VARCHAR(10)
);

-- Inserção de dados na tabela "vendas"
INSERT INTO vendas (data_venda, codigo_produto) VALUES
  ('2022-01-01', 'P001'),
  ('2021-01-01', 'P002'),
  ('2020-05-03', 'P003'),
  ('2019-05-04', 'P004'),
  ('2018-05-05', 'P005');

select * from vendas where data_venda between '2021-01-01' and getdate();
select * from vendas where data_venda between dateadd(year,-2,getdate()) and getdate();
 

-- formatar datas
select format(cast(getdate() as date), 'dd/MM/yyyy')


--- busca vendas desde o começo do ano
select * from vendas where data_venda <= format(getdate(),'yyyy-MM-01');



 