create database AgroSense;
use AgroSense;

create table cliente(
	idCliente int primary key auto_increment,
    nome_social varchar(45) not null,
	nome_fantasia varchar(45),
    email varchar(45) not null,
    telefone int,
    cnpj varchar(15) unique not null,
    senha varchar(45) not null
);
create table sensor(
	idSensor int primary key auto_increment,
    tipo varchar(45),
    situacao tinyint not null
);
create table solo(
	idMuda int primary key auto_increment,
    umidade int not null
);
