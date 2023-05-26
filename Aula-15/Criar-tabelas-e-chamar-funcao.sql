
-- antes de criar as funções é necessário criar as tabelas 

CREATE TABLE Usuarios (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL, 
	data_aniversario date NOT NULL,
	UNIQUE(id)
);


INSERT INTO Usuarios (nome, email, data_aniversario)
VALUES
    ('João Silva', 'joao.silva@example.com', '1990-05-12'),
    ('Maria Santos', 'maria.santos@example.com', '1985-09-20'),
    ('Pedro Oliveira', 'pedro.oliveira@example.com', '1992-11-30'),
    ('Ana Souza', 'ana.souza@example.com', '1988-07-15'),
    ('Lucas Pereira', 'lucas.pereira@example.com', '1995-04-02'),
    ('Carla Costa', 'carla.costa@example.com', '1991-10-08'),
    ('Fernando Rodrigues', 'fernando.rodrigues@example.com', '1987-03-25'),
    ('Mariana Almeida', 'mariana.almeida@example.com', '1993-06-18'),
    ('Rafael Lima', 'rafael.lima@example.com', '1989-12-07'),
    ('Camila Santos', 'camila.santos@example.com', '1997-08-22'),
    ('Gustavo Pereira', 'gustavo.pereira@example.com', '1994-01-14'),
    ('Larissa Oliveira', 'larissa.oliveira@example.com', '1998-09-01'),
    ('Bruno Sousa', 'bruno.sousa@example.com', '1996-02-28'),
    ('Vanessa Fernandes', 'vanessa.fernandes@example.com', '1990-07-09'),
    ('Marcelo Costa', 'marcelo.costa@example.com', '1986-11-17'),
    ('Amanda Silva', 'amanda.silva@example.com', '1992-04-22'),
    ('Ricardo Santos', 'ricardo.santos@example.com', '1988-08-12'),
    ('Juliana Pereira', 'juliana.pereira@example.com', '1995-03-07'),
    ('Alexandre Rodrigues', 'alexandre.rodrigues@example.com', '1991-09-16'),
    ('Patrícia Oliveira', 'patricia.oliveira@example.com', '1987-12-28');
	

-- para chamar a função precisamos atribuir um as 
SELECT dbo.ObterNomeUsuarioPorID(10) AS NomeUsuario; 
SELECT dbo.ObterNomeUsuarioPorID(1) AS NomeUsuario2;



-- como exibir as informações na mesma celula  
select 
nome + ' ' + 
cast(datediff(year,data_aniversario,getdate())  as varchar(50)) + ' anos',
'Data de nascimento: ' + cast(data_aniversario as varchar(10))
from usuarios 
