
-- este comando de criação da função escalar deve ser executado separadamente

CREATE FUNCTION  ObterNomeUsuarioPorID
(
    @id INT
)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @nome VARCHAR(100);
    SELECT @nome = nome FROM usuarios WHERE id = @id;
    RETURN @nome;
END;

