/*
Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database RH;

use RH;

CREATE TABLE funcionarios (
	id_fun INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(30),
    orsex VARCHAR(10),
    salario FLOAT NULL,
    PRIMARY KEY (id_fun)
);

INSERT INTO funcionarios(nome, email, orsex, salario) values ("Q", "Q@mail.com","M", 3000);
INSERT INTO funcionarios(nome, email, orsex, salario) values ("W", "W@mail.com","F", 1000);
INSERT INTO funcionarios(nome, email, orsex, salario) values ("E", "E@mail.com","F", 5000);
INSERT INTO funcionarios(nome, email, orsex, salario) values ("R", "R@mail.com","M", 1000);
INSERT INTO funcionarios(nome, email, orsex, salario) values ("T", "T@mail.com","O", 2000);

select nome, salario from funcionarios where salario between 0 and 1999;
select nome, salario from funcionarios where salario > 2000;

update funcionarios set salario = 4999 where id_fun=3;

select nome, salario from funcionarios;
