
-- só funciona no escopo de execução
-- executando separado não irá funcionar.

-- criando uma tabela dentro de uma variável.
declare @tabela table (
	codigoProduto int primary key,
	nomeProduto varchar(50)
)

insert into @tabela values (1,'Celular');
select * from @tabela;
 


-- declarar variavel sem usar o set
DECLARE @variavel INT = 10;
select @variavel
