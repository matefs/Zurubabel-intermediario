

-- ver o tempo de demora para o resultado da query
 set statistics time on


-- a query abaixo é executada através do clustered index scan 
-- Aperte Ctrl + L para visualizar o gráfico informativo
select * from usuarios;

-- select * into #temporaria from usuarios 

 
-- é selecionada através da operação table scan (menos performatica)
select * from #temporaria



