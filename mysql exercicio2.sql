/*
Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database loja;

use loja;

create table prod(
id int(8) auto_increment,
produto varchar(30),
mesValidade int,
valor float,
cor varchar(30),
modelo int,
primary key(id)
);

INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("Q", 4, 640, "azul", 3);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("W", 4, 300, "azul", 8);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("E", 4, 600, "azul", 6);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("R", 4, 300, "azul", 7);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("T", 4, 444, "azul", 5);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("Y", 4, 333, "azul", 1);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("U", 4, 503, "azul", 2);
INSERT INTO prod(produto, mesValidade, valor, cor, modelo) values ("I", 4, 9000, "azul", 3);


select id, produto, valor from prod where valor>500;
select id, produto, valor from prod where valor<500;

update prod set modelo="10" where id=3;

select id, produto, modelo from prod where id=3;