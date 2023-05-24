-- simulando o ambiente do video 
-- https://www.youtube.com/watch?v=z-9OEKd3abQ&list=PL4OAe-tL47sbChxtnqCA2huB8jnBCo5l1&index=4&ab_channel=Zurubabel


CREATE TABLE #cidades (
  codigo_cidade INT IDENTITY(1,1) PRIMARY KEY,
  cidade VARCHAR(255) NOT NULL,
  estado VARCHAR(255) NOT NULL
);


INSERT INTO #cidades (cidade, estado) VALUES ('São Paulo', 'SP');
INSERT INTO #cidades (cidade, estado) VALUES ('Rio de Janeiro', 'RJ');
INSERT INTO #cidades (cidade, estado) VALUES ('Belo Horizonte', 'MG');
INSERT INTO #cidades (cidade, estado) VALUES ('Salvador', 'BA');
INSERT INTO #cidades (cidade, estado) VALUES ('Brasília', 'DF');
INSERT INTO #cidades (cidade, estado) VALUES ('Curitiba', 'PR');
INSERT INTO #cidades (cidade, estado) VALUES ('Fortaleza', 'CE');
INSERT INTO #cidades (cidade, estado) VALUES ('Recife', 'PE');
INSERT INTO #cidades (cidade, estado) VALUES ('Manaus', 'AM');
INSERT INTO #cidades (cidade, estado) VALUES ('Porto Alegre', 'RS');




-- para indicar que ela é temporaria, utilizamos o # 
-- você consegue rodar este select a partir de outra tabela. 
select * from #cidades; 
 



