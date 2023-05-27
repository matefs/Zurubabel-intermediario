
CREATE TABLE usuarios (
  id_usuario INT NOT NULL IDENTITY(1,1),
  primeiro_nome VARCHAR(50) NOT NULL,
  nome_do_meio VARCHAR(50),
  sobrenome VARCHAR(50) NOT NULL,
  data_de_nascimento DATE NOT NULL,
  genero VARCHAR(10) NOT NULL,
  data_de_admissao DATE NOT NULL,

  PRIMARY KEY (id_usuario)
);

CREATE TABLE posicoes (
  id_posicao INT NOT NULL IDENTITY(1,1),
  id_usuario INT NOT NULL,
  nome_da_posicao VARCHAR(50) NOT NULL,

  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),

  PRIMARY KEY (id_posicao)
);
 

 INSERT INTO usuarios (primeiro_nome, nome_do_meio, sobrenome, data_de_nascimento, genero, data_de_admissao)
VALUES ('João', 'Silva', 'Pereira', '1990-05-10', 'Masculino', '2020-01-01');

INSERT INTO usuarios (primeiro_nome, nome_do_meio, sobrenome, data_de_nascimento, genero, data_de_admissao)
VALUES ('Maria', 'Fernanda', 'Santos', '1985-09-15', 'Feminino', '2018-03-15');

INSERT INTO usuarios (primeiro_nome, nome_do_meio, sobrenome, data_de_nascimento, genero, data_de_admissao)
VALUES ('Pedro', NULL, 'Almeida', '1992-12-20', 'Masculino', '2022-07-10');

INSERT INTO posicoes (id_usuario, nome_da_posicao)
VALUES (1, 'Gerente');

INSERT INTO posicoes (id_usuario, nome_da_posicao)
VALUES (2, 'Analista');

INSERT INTO posicoes (id_usuario, nome_da_posicao)
VALUES (3, 'Desenvolvedor');

INSERT INTO usuarios (primeiro_nome, nome_do_meio, sobrenome, data_de_nascimento, genero, data_de_admissao)
VALUES ('Ana', 'Carolina', 'Rodrigues', '1994-07-03', 'Feminino', '2021-02-28');

INSERT INTO usuarios (primeiro_nome, nome_do_meio, sobrenome, data_de_nascimento, genero, data_de_admissao)
VALUES ('Fernando', 'Henrique', 'Oliveira', '1988-11-25', 'Masculino', '2019-06-10');

INSERT INTO usuarios (primeiro_nome, nome_do_meio, sobrenome, data_de_nascimento, genero, data_de_admissao)
VALUES ('Juliana', 'Silveira', 'Costa', '1996-03-18', 'Feminino', '2022-09-20');

INSERT INTO posicoes (id_usuario, nome_da_posicao)
VALUES (4, 'Analista');

INSERT INTO posicoes (id_usuario, nome_da_posicao)
VALUES (5, 'Gerente');

INSERT INTO posicoes (id_usuario, nome_da_posicao)
VALUES (6, 'Desenvolvedor');

 
 

update usuarios set genero = 'M' where genero = 'Masculino'
update usuarios set genero = 'F' where genero = 'Feminino'
