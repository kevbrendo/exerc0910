create database db_0910;

use db_0910;

create table Cidades (
    id int primary key,
    nome varchar(60) not null,
    populacao int
);

create table Alunos (
    id int,
    nome varchar(60),
    data_nasc date,
    cidade_id int,

    foreign key (cidade_id) references Cidades(id)
);

-- Inserir dados na tabela Cidades
INSERT INTO Cidades (id, nome, populacao) VALUES
(1, 'São Paulo', 12000000),
(2, 'Rio de Janeiro', 6500000),
(3, 'Belo Horizonte', 2500000),
(4, 'Porto Alegre', 1500000),
(5, 'Brasília', 3000000);

-- Inserir dados na tabela Alunos
INSERT INTO Alunos (id, nome, data_nasc, cidade_id) VALUES
(1, 'João Silva', '2000-03-15', 1),
(2, 'Maria Santos', '2001-07-22', 2),
(3, 'Pedro Oliveira', '1999-12-10', 1),
(4, 'Ana Souza', '2002-05-03', 3),
(5, 'Luiz Pereira', '2000-09-28', 4);

SELECT * FROM Alunos inner JOIN Cidades ON Cidades.id = Alunos.cidade_id;
