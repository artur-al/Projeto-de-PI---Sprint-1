create database AgroSense;
use AgroSense;

create table cliente (
idEmpresa int primary key auto_increment,
nome varchar(40) not null,
email varchar(45),
telefone int,
cnpj varchar(18) not null,
senha varchar(45) not null
);

create table sensor (
idSensor int primary key auto_increment,
tipo varchar(45),
localInstalado varchar(45),
dataInstalacao date, 
situacao tinyint not null
);

create table plantacao (
idPlantacao int primary key auto_increment,
situacaoSolo varchar(40),
temperatura int, 
umidade int,
area int
);
