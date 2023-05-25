

-- Criar um campo de desconto no final da tabela 

SELECT 
  codigo_produto, 
  nome_produto, 
  valor_produto, 
  CASE 
  WHEN valor_produto <= 6 THEN valor_produto * 1.2 
  WHEN valor_produto >= 6.0 THEN valor_produto * 0.8 
  ELSE valor_produto 
  END AS v1ProdutoComDesconto 
FROM 
  produtos
