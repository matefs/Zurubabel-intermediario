


DECLARE @PrimeiroNome VARCHAR(50)
DECLARE @Sobrenome VARCHAR(50)

DECLARE CursorUsuarios CURSOR FOR
SELECT primeiro_nome, sobrenome
FROM usuarios

OPEN CursorUsuarios

FETCH NEXT FROM CursorUsuarios INTO @PrimeiroNome, @Sobrenome

WHILE @@FETCH_STATUS = 0
BEGIN
-- Faça algo com os dados do usuário, por exemplo, imprimir o nome completo
PRINT CONCAT(@PrimeiroNome, ' ', @Sobrenome)

FETCH NEXT FROM CursorUsuarios INTO @PrimeiroNome, @Sobrenome
END

CLOSE CursorUsuarios
DEALLOCATE CursorUsuarios




