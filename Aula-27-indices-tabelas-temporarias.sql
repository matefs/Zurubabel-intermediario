

DECLARE @TABELA TABLE (
	COL1 INT INDEX IDX_1 CLUSTERED(COL1 ASC, COL2 ASC),
	COL2 INT INDEX IDX_2 NONCLUSTERED(COL1,COL2)
);

SELECT * FROM @TABELA
-- LEMBRAR! a tabela só existe em tempo de execução
-- fora da execução ela não é acessível e não aparece na listagem das tabelas

