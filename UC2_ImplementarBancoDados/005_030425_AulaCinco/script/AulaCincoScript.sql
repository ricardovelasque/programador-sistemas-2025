-- Aula Cinco - Dia 3 de abril de 2025

-- Instrução SQL para criar o banco de dados empresa
create database empresa;

-- Instrução SQL para utilizar o banco de dados empresa
use empresa;

-- Instrução SQL para excluir as tabelas existentes no Banco de Dados empresa 
drop table funcionario;
drop table clientes;

-- Instrução SQL para criar a tabela Departamento no Banco de Dados empresa - Slide 9.

create table departamento
(
	codigo int primary key,
    nome varchar(50) not null
);

-- Instrução SQL para criar a tabela Funcionario no Banco de Dados empresa - Slide 10.
create table funcionario
(
	codigo int primary key,
    nome varchar(100) not null,
    id_codigodepartamento int not null,
    foreign key (id_codigodepartamento) references departamento(codigo)    
);

-- Instrução SQL para inserir os dados na tabela Departamento - Slide 11
insert into departamento
values (1, 'Recursos Humanos'),
       (2, 'Financeiro'),
       (3, 'Almoxarifado'),
       (4, 'Montagem de motores');

-- Instrução SQL para inserir os dados na tabela Funcionario - Slide 12
insert into funcionario
values (1001, 'Ana Lucia', 2),
       (1002, 'Breno Caldas', 3),
       (1003, 'Laercio Dias', 1),
       (1004, 'Carlos Ruiz', 4),
       (1005, 'Jeferson Deoclecio', 2),
       (1006, 'Guilherme Braz', 1),
       (1007, 'Fernanda Micaela', 4),
       (1008, 'Fabiane Mendes', 4),
       (1009, 'Leticia Alves', 3),
       (1010, 'Graziele Lima', 2),
       (1011, 'Carla Maria Fagundes', 2),
       (1012, 'Janaina Pires', 3),
       (1013, 'Leonardo Berto', 1);

-- Instrução SQL para retornar todos os dados da tabela Funcionario - Slide 14

select * from funcionario;

-- Instrução SQL para retornar valores distintos no conjunto de resultados - Slide 15

select distinct id_codigodepartamento
from funcionario;

-- Instrução SQL para usar o database db_biblioteca
use db_biblioteca;

-- Instrução SQL para retornar o nome dos livros publicados antes de 15 de outubro de 1950 - Slide 17
select nome_livro
from tbl_livro
where data_pub < '1950-10-15';

-- Instrução SQL para retornar todos os registros da tabela livro em que o código do autor é 5 e os livros
-- publicados depois de 1 de janeiro de 1950 - Slide 18
select * 
from tbl_livro
where id_autor = 5
and data_pub > '1950-01-01';


-- Instrução SQL para retornar todos os registros da tabela livro em que o código do autor é 1 ou os livros
-- publicados antes de 1 de janeiro de 1950 - Slide 19.
select * 
from tbl_livro
where id_autor = 1
or data_pub < '1950-01-01';

-- Instrução SQL para retornar o código do livro e o nome do livro na tabela livro onde a data de
-- publicação está entre 1 de janeiro de 1920 e 1 de janeiro de 1930 - Slide 20.
select id_livro, nome_livro
from tbl_livro
where data_pub
between '1920-01-01'
and '1930-01-01';

-- Instrução SQL para selecionar o nome dos livros contidos na tabela livro, cujo código da editora é
-- 2, 3 ou 4 - Slide 21.
select nome_livro
from tbl_livro
where id_editora in (2, 3, 4);

-- Instrução SQL para selecionar o nome dos livros que estão contidos na tabela livro, mas que não
-- estão inseridos na campo cujo código da editora é 1 ou 5 - Slide 22.
select nome_livro
from tbl_livro
where id_editora not in (1, 5);

-- Instrução SQL para selecionar o nome do livro e sua data de publicação, cujo título do livro
-- inicia com a letra D - Slide 23.
SELECT nome_livro, data_pub
FROM tbl_livro
WHERE nome_livro LIKE 'd%';

-- Instrução SQL para selecionar o nome do livro e sua data de publicação, cujo título do livro
-- termina com a letra A - Slide 24.
SELECT nome_livro, data_pub
FROM tbl_livro
WHERE nome_livro LIKE '%a';

-- Instrução SQL para selecionar o nome e sobrenome do autor presentes na tabela tbl_autor
-- ordenados pelo nome do autor - Slide 25.
SELECT nome_autor, sobrenome_autor
FROM tbl_autor
ORDER BY nome_autor;

-- Instrução SQL para utilizar o banco de dados empresa
use empresa;

-- Instrução SQL para selecionar o código e o nome do funcionário e também o departamento
-- onde trabalha. Aqui faremos a junçaõ de duas tabelas - Slide 27.
SELECT funcionario.codigo, funcionario.nome, departamento.nome
FROM funcionario
INNER JOIN departamento
ON funcionario.id_codigodepartamento=departamento.codigo;


