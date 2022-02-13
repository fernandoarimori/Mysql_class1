/*
Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes  com a nota maior do que 7.
Faça um select que retorne o/as estudantes  com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database escola;
use escola;

create table escl(
id int(8) auto_increment,
    nome VARCHAR(255),
    email VARCHAR(30),
    orsex VARCHAR(10),
    nota int NULL,
    PRIMARY KEY (id)
);
    
INSERT INTO escl(nome, email, orsex, nota) values ("Q", "Q@mail.com","M", 10);
INSERT INTO escl(nome, email, orsex, nota) values ("W", "W@mail.com","F", 9);
INSERT INTO escl(nome, email, orsex, nota) values ("E", "E@mail.com","F", 8);
INSERT INTO escl(nome, email, orsex, nota) values ("R", "R@mail.com","M", 7);
INSERT INTO escl(nome, email, orsex, nota) values ("T", "T@mail.com","O", 6);
INSERT INTO escl(nome, email, orsex, nota) values ("Y", "R@mail.com","M", 7);
INSERT INTO escl(nome, email, orsex, nota) values ("U", "T@mail.com","O", 6);
    
    
select nome, nota from escl where nota>7;
select nome, nota from escl where nota<7;

update escl set nota=10 where id=5;

select nome, nota from escl where id=5;