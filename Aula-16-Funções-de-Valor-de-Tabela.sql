-- utilizando a tabela usuarios criada anteriormente
-- criando uma funcao para simular uma tabela a partir de outra (usuarios) 
CREATE FUNCTION DadosCompletosUsuarios()
RETURNS @Retorno TABLE (
    NomeIdade VARCHAR(200),
    Data_Nascimento VARCHAR(50)
)
AS
BEGIN
    INSERT INTO @Retorno
    SELECT
        nome + ' ' + CAST(DATEDIFF(year, data_aniversario, GETDATE()) AS VARCHAR(50)) + ' anos' AS NomeIdade,
        'Data de nascimento: ' + CONVERT(VARCHAR(50), data_aniversario, 103) AS Data_Nascimento
    FROM usuarios

    RETURN
END




-- utilize o comando abaixo para deletar a procedure caso precise.
-- drop function DadosCompletosUsuarios;

-- Testando se a funcao deu certo 
select * from DadosCompletosUsuarios();



