CREATE DATABASE AgroSenseProject;
USE AgroSenseProject;

CREATE TABLE empresa (
id INT PRIMARY KEY auto_increment, 
nomeSocial VARCHAR (80), 
nomeFantasia VARCHAR (80), 
dtFundacao DATE, 
logradouro VARCHAR (100),
numero varchar (6),
cep varchar (9), 
qtdHectares FLOAT, 
email VARCHAR (100), 
cnpj CHAR (18), 
telefone CHAR (13), 
senha VARCHAR (30),
estado CHAR(2)
);  

CREATE TABLE InfosTerreno (
idInfosTerreno INT PRIMARY KEY auto_increment, 
tipoSolo CHAR (40), 
areaDoTerreno FLOAT, 
safrasAno CHAR (1),
temperaturaMédiaLocal CHAR (2),
umidadeMédiaLocal CHAR (3)
);

CREATE TABLE sensor (
idSensor INT PRIMARY KEY auto_increment,
tipoSensor VARCHAR (45), 
dtCadastro DATE, 
statusSensor VARCHAR (20) 
	CONSTRAINT chk_status 
    check (statusSensor in ('ativo', 'inativo', 'em manutenção'))
);

CREATE TABLE infosSensor (
idInfoSensor INT PRIMARY KEY auto_increment, 
umidadeDoSolo CHAR (3), 
dtInfo DATETIME 
);

 INSERT INTO empresa (nomeSocial, nomeFantasia, dtFundacao, logradouro, numero, cep, qtdHectares, email, cnpj, telefone, senha, estado) VALUES
('Grãos e Qualidade Inc', 'Grãos e Qualidade', '1997-08-01', 'Fazenda dos Anjos', 3100, '08032-220', 5,
 'graosequalidade@gmail.com', '00.623.904/0001-73', '4002-8922', '12345678Gq', 'MG'),
('AgroTech Solutions', 'AgroTech', '2010-05-15', 'Rua das Palmas', 220, '38400-200', 15, 
'contato@agrotech.com.br', '12.345.678/0001-89', '3210-1234', 'aGrotech2020!', 'SP'),
('Fazenda Verde Ltda', 'Fazenda Verde', '2005-09-10', 'Estrada da Mata', 150, '32310-500', 25,
 'fazendaverde@outlook.com', '56.987.654/0001-55', '3390-7896', 'S3nh@Verde!#', 'RS'),
('Agropecuária Silva', 'Silva Agro', '2000-03-22', 'Rodovia 124', 425, '39800-000', 30, 
'agropecuariasilva@gmail.com', '98.123.456/0001-22', '3301-5678', 'p@ssw0rdSilva', 'BA'),
('TechFarm Innovators', 'TechFarm', '2018-11-05', 'Avenida do Agricultor', 305, '36010-000', 10, 
'techfarm@farmemail.com', '78.654.321/0001-66', '4000-9988', 'T3chF@rm2020!', 'MG');

 SELECT * FROM empresa; 
 
  SELECT nomeSocial, qtdHectares, cnpj FROM empresa; 