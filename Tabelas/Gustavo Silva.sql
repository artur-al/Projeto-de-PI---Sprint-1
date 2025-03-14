create database AgroSense;

use AgroSense;

create table Usuario(
	idUsuario int primary key auto_increment,
    nome varchar(30),
    cnpj varchar(25),
    email varchar(45),
    senha varchar(30)
);

insert into Usuario (nome, cnpj, email, senha) value
("Pedro Souza", "99999999-99", "pedro@gmail.com", "12345"),
("Lucas Mendes", "888888888-88", "lucas@gmail.com", "56789"),
("Ana Paula", "777777777-77", "ana@gmail.com", "90123");

select * from Usuario;

select * from Usuario where nome like "%P%";

select * from Usuario where senha like "%1%";

alter table Usuario add telefone varchar(25);

create table Solo(
idSolo int primary key auto_increment,
tipoSolo varchar(45),
umidade decimal(5,2),
textura varchar(30)

);

insert into Solo (tipoSolo, umidade, textura) value
("Argiloso", "35.60", "Fina"),
("Arenoso", "12.20", "Grossa");

select * from Solo;

select * from Solo where tipoSolo like "A%";

alter table Solo modify tipoSolo varchar(30);


create table Sensor(
idSensor int primary key auto_increment,
tipoSensor varchar(45)
);

insert into Sensor (tipoSensor) value
("Sensor de controle de umidade");

select * from Sensor;

select * from Sensor where tipoSensor like "%S%";

alter table Sensor add column valorSensor decimal (3.2);




