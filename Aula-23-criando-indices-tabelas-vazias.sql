
 
-- Aula 23 - Criando Índices em tabelas vazias

create table tabelaTesteIndices (
col1 int,
col2 int,
)

-- criando indice não clusterizado 
create nonclustered index idx_1 on tabelaTesteIndices(col1)


-- cria um loop para inserir 800 registros aleatorios
declare @i int = 0 ;
while @i < 800
begin 
	insert into tabelaTesteIndices (col1, col2) values (Round(Rand() * 1000,0), Round(Rand() * 1000,0))
	set @i = @i + 1 
end 

 
-- deletando todos os registros 
delete from tabelaTesteIndices

-- criando indice   clusterizado 
create  clustered index idx_2 on tabelaTesteIndices(col1)

set statistics time on 

-- Novamente cria um loop para inserir 50 registros aleatorios após ter criado um indice clusterizado
declare @i int = 0 ;
while @i < 50
begin 
	insert into tabelaTesteIndices (col1, col2) values (Round(Rand() * 1000,0), Round(Rand() * 1000,0))
	set @i = @i + 1 
end 


-- diferença
--  ao rodar um comando "select" com um indice clusterizado, é feito uma operacao de clustered index scan 
--  ao rodar um comando "select" com um indice não clusterizado, é feito um table scan


