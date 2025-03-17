CREATE DATABASE PI;
USE PI;

CREATE TABLE empresa(
idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
CNPJ VARCHAR (18),
estado VARCHAR(45),
telefone VARCHAR(11),
email VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE sensor(
idSensor  INT PRIMARY KEY AUTO_INCREMENT,
localInstalacao VARCHAR(45),
dataInstalacao DATE, 
situacao VARCHAR(45)
);

CREATE TABLE plantacao(
idPlantacao INT PRIMARY KEY AUTO_INCREMENT,
situacaoSolo VARCHAR (45),
temperatura DECIMAL(5,2), 
umidade DECIMAL(5,2),
area DECIMAL(10,2) 
);

INSERT INTO empresa(nome, CNPJ, estado,telefone, email, senha) VALUES
('AgroTech', '12.345.678/0001-01', 'SP', '11999999999' , 'agro_tech@gmail.com', 'Senha@123'),  
('Namorado Alimentos', '23.456.789/0001-02', 'MG', '31988888888', 'namorado_alimentos@gmail.com', 'Namorado@456'),  
('Camil', '34.567.890/0001-03', 'PB','83977777777', 'camil_safra@outlook.com', 'Camil@789'),  
('Feijão Ouro Verde', '45.678.901/0001-04', 'PR','42966666666', 'ouro_verde@gmail.com', 'OuroVerde@321'),  
('Safra Rica Feijões', '56.789.012/0001-05', 'GO','62955555555', 'safra_rica@gmail.com', 'SafraRica@654'),  
('Campos do Feijão', '67.890.123/0001-06', 'MT', '6594444444', 'camposdofeijao@gmail.com', 'Campos@987'),  
('Feijão Bela Terra', '78.901.234/0001-07', 'SP','11933333333', 'bela_terra@gmail.com', 'BelaTerra@741'),  
('Agrícola Bom Feijão', '89.012.345/0001-08', 'BA', '75922222222', 'bom_feijao@gmail.com', 'BomFeijao@852');  

SELECT * FROM empresa;

INSERT INTO sensor (localInstalacao, dataInstalacao, situacao) VALUES  
('Galpão Principal', '2024-03-10', 'Ativo'),  
('Área de Secagem', '2023-11-25', 'Inativo'),  
('Silo 1', '2024-01-15', 'Ativo'),  
('Silo 2', '2023-09-30', 'Ativo'),  
('Linha de Produção', '2024-02-20', 'Ativo'), 
('Silo 3', '2022-09-30', 'Ativo'),  
('Silo 4', '2024-01-07', 'Ativo'), 
('Silo 5', '2023-01-07', 'Inativo');

SELECT * FROM sensor;

INSERT INTO plantacao (situacaoSolo, temperatura, umidade, area) VALUES  
('Fértil', 28.5, 65, 10.5),  
('Seco', 32.0, 40, 8.2),  
('Úmido', 25.3, 80, 12.7),  
('Compactado', 30.1, 50, 9.8),  
('Arenoso', 27.6, 55, 11.3), 
('Úmido', 25.3, 80, 12.7),  
('Compactado', 30.0, 60, 9.8),  
('Úmido', 27.1, 55, 11.3); 

SELECT * FROM plantacao; 

 
