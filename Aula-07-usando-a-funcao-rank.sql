

-- ordernando os produtos do mais barato para o mais caro 

select
nome_produto,
valor_produto,
rank() over(ORDER BY valor_produto) 
from produtos


-- pegando somente as 10 primeiras posições dos produtos mais baratos

select    
nome_produto,
valor_produto,
posicao
from ( 
	select nome_produto, valor_produto, rank() over(order by valor_produto desc) as posicao
	from produtos ) dados
where posicao <= 10
 

 -- pegar entre a posicao 5 e 10 do ranking
 select    
nome_produto,
valor_produto,
posicao
from ( 
	select nome_produto, valor_produto, rank() over(order by valor_produto desc) as posicao
	from produtos ) dados
where posicao  between 5 and 10 
 

