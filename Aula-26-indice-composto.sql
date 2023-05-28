

create table tabelaTesteIndices (
col1 int,
col2 int,
)



select * from tabelaTesteIndices 



create index IDX_1 on tabelaTesteIndices(col1) include (col2)
-- nao unico e não clusterizado (sem registro fisico) 



create clustered index IDX_2 on tabelaTesteIndices(col1 asc, col2 asc)

select * from tabelaTesteIndices 

create clustered index IDX_2 on tabelaTesteIndices(col1 desc, col2 desc) 
-- pode definir a ordem das colunas
