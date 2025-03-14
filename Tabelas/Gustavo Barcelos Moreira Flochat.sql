create database Agrosense;
use Agrosense;

create table empresa(
 idEmpresa int primary key auto_increment,
 usuario varchar(40),
 email varchar(30) not null,
 telefone int,
 cnpj char(14),
 senha varchar(30) not null
);
insert into empresa (usuario, email, telefone, cnpj, senha) value
("ademir", "ademirsensi@gmail.com", "1112345678", "111111111111", "senha123"),
("cleiton", "cleitonsensi@gmail.com", "1198765432", "222222222222", "senha321"),
("adaiton", "adailtonsensi@gmail.com", "1112398745", "333333333333", "senha231"),
("flor", "florsensi@gmail.com", "1198712365", "444444444444", "senha132");

select * from empresa;

select * from empresa where usuario like "%n";

drop table empresa;

create table solo (
IdSolo int primary key auto_increment,
tipo varchar (30),
umidade float,
TemperaturaLocal float
);

insert into solo (tipo, umidade, TemperaturaLocal)value
("arenoso", "70", "35"),
("argiloso", "60", "30"),
("calcario", "20", "40");

select * from solo;

select * from solo where tipo like "a%";

drop table solo;


create table sensor (
IdSensor int primary key auto_increment,
tipo varchar (45),
situacao tinyint
);

insert into sensor (tipo, situacao)value
("umidade de solo", "1");

select * from sensor;

drop table sensor;


