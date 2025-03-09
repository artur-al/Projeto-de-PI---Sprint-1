create database pi;
use pi;

create table cliente(
	idCliente int primary key auto_increment,
    nome varchar(45),
    email varchar(45),
    telefone int,
    cpf varchar(15),
    senha varchar(45)
);
create table sensor(
	idSensor int primary key auto_increment,
    tipo varchar(45),
    situacao tinyint
);
create table solo(
	idMuda int primary key auto_increment,
    umidade int
);