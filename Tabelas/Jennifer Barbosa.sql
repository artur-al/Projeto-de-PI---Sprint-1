CREATE DATABASE PI;
USE PI;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
CNPJ VARCHAR (18),
estado VARCHAR(45),
telefone INT,
email VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE sensor(
idSensor  INT PRIMARY KEY AUTO_INCREMENT,
localInstalacao VARCHAR(45),
dataInstalacao DATE, 
situacao TINYINT
);

CREATE TABLE plantacao(
idPlantacao INT PRIMARY KEY AUTO_INCREMENT,
situacaoSolo VARCHAR (45),
temperatura DECIMAL(5,2), 
umidade DECIMAL(5,2),
area DECIMAL(10,2) 
);
