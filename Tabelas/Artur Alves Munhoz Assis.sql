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


insert into cliente (nome_social, nome_fantasia, email, telefone, cnpj, senha) values
('AgroTech LTDA', 'AgroTech', 'contato@agrotech.com', 11987654321, '12345678000199', 'senha123'),
('Fazenda Verde', 'FazVerde', 'fazenda@verde.com', 11976543210, '98765432000188', 'segredo2024');

insert into sensor (tipo, situacao) values
('umidade', 1),
('temperatura', 1),
('pH', 0);

insert into solo (umidade) values
(45),
(60),
(30);

select * from cliente;

select * from cliente;
