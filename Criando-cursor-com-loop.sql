
 declare @primeiro_nome varchar(50),
		 @nome_do_meio varchar(50),
		 @sobrenome varchar(50);


-- criando um cursor
declare cur_nomeCompleto CURSOR
for select top 10 primeiro_nome, nome_do_meio, sobrenome from usuarios 

-- abrindo o cursor
open cur_nomeCompleto 

-- selecionar os dados
fetch next from cur_nomeCompleto
into @primeiro_nome, @nome_do_meio, @sobrenome 


-- interação entre os dados retornados pelo cursor
-- @@ significa variavel global
while @@FETCH_STATUS = 0 
begin 
	select @primeiro_nome + ' ' + isnull(@nome_do_meio, '') + ' ' +@sobrenome

	-- pegar os proximos dados 
	fetch next from cur_nomeCompleto
	into @primeiro_nome, @nome_do_meio, @sobrenome 

end


select @primeiro_nome primeiroNome, @nome_do_meio segundoNome, @sobrenome  sobrenome

-- fechando e desalocando o cursor da memoria
close cur_nomeCompleto 
deallocate cur_nomeCompleto;
