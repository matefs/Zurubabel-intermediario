-- exibir através do if else


  declare @desconto smallint;
  set @desconto = 1 --  1 = desconto; 2 = sem desconto

  if @desconto = 1 
	select top 10 *, 
	case when valor_produto > 4 then valor_produto * 0.8 else valor_produto
	end as vlProdutoDesconto
	from produtos
  else
	select top 10 *  from produtos 
