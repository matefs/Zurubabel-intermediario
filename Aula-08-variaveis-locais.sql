

-- variáveis locais
-- o comando declare é utilizado para atribuir valor, não precisa ser necessariamente de variáveis.

declare @maior_preco decimal(6,2) -- inicializa a  variavel no valor null 

-- o comando set só funciona no escopo da execução
-- ( rodar junto com o comando declare funciona) 
set @maior_preco = 6.5; -- atribui um valor a variavel 
  
select @maior_preco;


--

declare @maiorPreco integer; -- inicializando a variavel no formato integer ( não puxa os decimais)  
set @maiorPreco = 12.0123123;
select @maiorPreco 



