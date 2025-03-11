create database AgroSense;

use AgroSense;

create table Usuario(
	idUsuario int primary key auto_increment,
    nome varchar(30),
    cnpj varchar(25),
    email varchar(45),
    senha varchar(30)
);
create table Solo(
idSolo int primary key auto_increment,
tipoSolo varchar(45),
umidade decimal(5,2),
textura varchar(30)

);

create table TipoFeijão(
idFeijão int primary key auto_increment,
nomeFeião varchar(25),
variedade varchar(25),
tempoPlantio int

);