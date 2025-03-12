Create database Agrosense;

use Agrosense;

create table cadastro (
Idempresa int primary key auto_increment,
Nomeimpresa varchar(20) not null,
email varchar(30) not null,
cnpj varchar(20) not null,
senha varchar(30)not null
);


create table Solo (
id int primary key auto_increment,
tipoSolo varchar(20),
umidadesolo int not null);

create table stssensor (
id int primary key auto_increment,
sensor varchar(20),
status tinyint not null);
