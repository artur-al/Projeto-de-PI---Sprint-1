CREATE DATABASE AgroSense;
USE AgroSense;

CREATE TABLE cliente (
  idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  email VARCHAR(45),
  telefone VARCHAR(15),
  cnpj VARCHAR(18) NOT NULL,
  senha VARCHAR(45) NOT NULL
);

CREATE TABLE sensor (
  idSensor INT PRIMARY KEY AUTO_INCREMENT,
  tipo VARCHAR(45),
  localInstalado VARCHAR(45),
  dataInstalacao DATE,
  situacao TINYINT NOT NULL
);

CREATE TABLE plantacao (
  idPlantacao INT PRIMARY KEY AUTO_INCREMENT,
  situacaoSolo VARCHAR(40),
  temperatura INT,
  umidade INT,
  area INT
);

INSERT INTO cliente (nome, email, telefone, cnpj, senha) 
VALUES
('Jailson Menezes', 'jailson09@gmail.com', '859234942', '47397122833', '129855'),
('João Amado', 'joaomad@gmail.com', '11982653467', '56293877644', 'joao123'),
('Rafael Silva', 'rafass18@gmail.com', '12987567543', '47325677899', 'rafaoobrabo11'),
('Ademir Sebastião', 'irmaossebas13@gmail.com', '13987654567', '13456788900', 'rosamaria1960'),
('Marcos Pereira', 'marcaoagro99@gmail.com', '14987654678', '29837133855', 'mm909011');

INSERT INTO sensor (tipo, localInstalado, dataInstalacao, situacao) 
VALUES
  ('Umidade', 'Menezes02', '2025-01-15', 1),
  ('Umidade', 'Amados09', '2025-02-01', 1),
  ('Umidade', 'RafaSilva22', '2025-03-01', 0),
  ('Umidade', 'IrmãosSebas11', '2025-03-10', 1),
  ('Umidade', 'AgroPereira18', '2025-03-12', 0);
  
  INSERT INTO plantacao (situacaoSolo, temperatura, umidade, area)
VALUES
  ('Úmido', 22, 75, 500),
  ('Úmido', 21, 65, 1000),
  ('Seco', 30, 55, 300),
  ('Úmido', 28, '75', 450),
  ('Encharcado', 24, 90, 600);
  
  SELECT * FROM cliente;
  SELECT * FROM sensor;
  SELECT situacao FROM sensor WHERE localInstalado = 'Menezes02';
  SELECT telefone, nome FROM cliente;
  SELECT umidade FROM plantacao WHERE situacaoSolo = 'Úmido';
  UPDATE sensor SET situacao = 1 WHERE idSensor = 3;
  UPDATE plantacao SET area = 700 WHERE idPlantacao = 4;
