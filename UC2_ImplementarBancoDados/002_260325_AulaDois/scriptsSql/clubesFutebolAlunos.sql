-- cria o banco de dados clubesfutebol
create database clubesfutebol;

-- utilizar o banco de dados clubesfutebol para inserir dados
use clubesfutebol;

-- criar a tabela clubes no banco de dados clubesfutebol
create table clubes (
	id int primary key,
	nomeclube varchar(50) not null,
	cidade varchar(100),
	uf varchar(2)	
);

-- inserir dados na tabela clubes do banco de dados clubesfutebol
insert into clubes
values (1, 'Internacional', 'Porto Alegre', 'RS');

insert into clubes
values (2, 'Juventude', 'Caxias do Sul', 'RS');

insert into clubes
values (3, 'Brasil', 'Pelotas', 'RS');

insert into clubes
values (4, 'Guarani', 'Venancio Aires', 'RS');

insert into clubes
values (5, 'Chapecoense', 'Chapeco', 'SC');

insert into clubes
values (6, 'Criciuma', 'Criciuma', 'SC');

insert into clubes
values (7, 'Figueirense', 'Florianópolis', 'SC');

insert into clubes
values (8, 'Operario', 'Ponta Grossa', 'PR');

insert into clubes
values (9, 'Coritiba', 'Curitiba', 'PR');

insert into clubes
values (10, 'Cascavel', 'Cascavel', 'PR');

insert into clubes
values (11, 'Botafogo', 'Ribeirao Preto', 'SP');

insert into clubes
values (12, 'Santos', 'Santos', 'SP');

insert into clubes
values (13, 'Ferroviaria', 'Araraquara', 'SP');

insert into clubes
values (14, 'Internacional', 'Limeira', 'SP');

insert into clubes
values (15, 'Guarani', 'Campinas', 'SP');

insert into clubes
values (16, 'Botafogo', 'Rio de Janeiro', 'RJ');

insert into clubes
values (17, 'Vasco da Gama', 'Rio de Janeiro', 'RJ');

insert into clubes
values (18, 'Volta Redonda', 'Volta Redonda', 'RJ');

insert into clubes
values (19, 'Cruzeiro', 'Belo Horizonte', 'MG');

insert into clubes
values (20, 'Atletico', 'Belo Horizonte', 'MG');

insert into clubes
values (21, 'America', 'Belo Horizonte', 'MG');

insert into clubes
values (22, 'Cuiaba', 'Cuiaba', 'MT');

insert into clubes
values (23, 'Goias', 'Goiania', 'GO');

insert into clubes
values (24, 'Atletico', 'Goiania', 'GO');

insert into clubes
values (25, 'Vila Nova', 'Goiania', 'GO');

insert into clubes
values (26, 'Brasiliense', 'Brasilia', 'DF');

insert into clubes
values (27, 'Manaus', 'Manaus', 'AM');

insert into clubes
values (28, 'Bahia', 'Salvador', 'BA');

insert into clubes
values (29, 'Sport', 'Recife', 'PE');

insert into clubes
values (30, 'ABC', 'Natal', 'RN');

insert into clubes
values (31, 'CSA', 'Maceio', 'AL');

insert into clubes
values (32, 'Campinense', 'Campina Grande', 'PB');

insert into clubes
values (33, 'Botafogo', 'Joao Pessoa', 'PB');

insert into clubes
values (34, 'Fortaleza', 'Fortaleza', 'CE');

insert into clubes
values (35, 'Ceara', 'Fortaleza', 'CE');

insert into clubes
values (36, 'Remo', 'Belem', 'PA');

insert into clubes
values (37, 'Sao Raimundo', 'Santarem', 'PA');

insert into clubes
values (38, 'Paysandu', 'Belem', 'PA');

insert into clubes
values (39, 'Internacional', 'Santa Maria', 'RS');

insert into clubes
values (40, 'Internacional', 'Lages', 'SC');