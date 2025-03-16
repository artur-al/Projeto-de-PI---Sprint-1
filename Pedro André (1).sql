create database agrosense;
use agrosense;

create table usuario( 
idusario int primary key auto_increment,
nome varchar (30),
email varchar (40),
senha varchar (40),
logradouro varchar (40),
cnpj varchar (18)
);

insert into usuario (nome, email, senha, logradouro, cnpj) value
("joão", "joãoagro@gmail.com","feijãosafra123","rua farm","099999999999"),
("maria", "mariasafra@gmail.com","safra123","rua sense","089999999888"),
("pedro", "pedro123@gmail.com","fazenda987","rua casa alta","079999999777"),
("julia", "juliaarduino@gmail.com","sensor123","rua augusta","069999999666");

select * from usuario;

select * from usuario where nome like "%a%";

select * from usuario where nome like "%o";

create table solo(
idsolo int primary key auto_increment,
tipo varchar (30),
umidade float,
temperaturalocal float
);

insert into solo (tipo, umidade, temperaturalocal) value
("arenoso", "70", "18"),
("agiloso", "80", "25"),
("acuoso", "99", "19");

select * from solo;

select * from solo where tipo like "%o";


create table sensor(
idsensor int primary key auto_increment,
tipo varchar (40), 
situacao tinyint
);

insert into sensor (tipo, situacao) value
("sensor de umidade do solo", 1);

select * from sensor;

select * from sensor where tipo like "%o";
