-- Criação de uma tabela de exemplo
CREATE TABLE Funcionarios (
    ID INT,
    Nome VARCHAR(100),
    Sobrenome VARCHAR(100),
    Departamento VARCHAR(100)
);

-- Inserção de dados na tabela de exemplo
INSERT INTO Funcionarios (ID, Nome, Sobrenome, Departamento)
VALUES (1, 'João', 'Silva', 'Vendas'),
       (2, 'Maria', 'Santos', 'Contabilidade'),
       (3, 'Carlos', 'Ferreira', 'Vendas'),
       (4, 'Ana', 'Rodrigues', 'Recursos Humanos');



-- Utilização de CTE para consultar funcionários do departamento de Vendas
-- é praticamente uma tabela temporaria, só pode ser consultado em tempo de execução 
 with FuncionariosVendas as (
	select Nome, Sobrenome
	from Funcionarios 
	where Departamento = 'Vendas' 
	)

select * from FuncionariosVendas
