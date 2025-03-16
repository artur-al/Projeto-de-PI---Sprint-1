-- Rafael Fratini Dal Corso

Create database Agrosense;
-- criar banco de dados
use Agrosense;
-- usar banco de dados
create table cadastro (
Idempresa int primary key auto_increment,
Nomeimpresa varchar(50) not null,
email varchar(50) not null,
cnpj varchar(20) not null,
senha varchar(30)not null
);

insert into cadastro(Nomeimpresa, email, cnpj, senha) values 
('Agro diaria inc', 'agrodia@outlook.com.br', '30.323.241/0001-32', 'agrodia123'),
('feijão de vó', 'feijaodevo@hotmail.com', '43.721.786/0001-49', 'vómaria2000'),
('frutas e sementes agricolas', 'agricsementes.frutas@gmail.com','60.018.027/0001-33', '24245634'),
('derivados do feijão sp', 'feijaosp.deriv@outlook.com','95.635.296/0001-23', 'vaidarcerto'),
('feijoaria pinheiros', 'feijoariapinheirosofc@gmail.com', '71.823.922/0001-47', '#senha123');
-- mostrar os dados do cadastro que tem email do outlook
select * from cadastro where email like '%@outlook.com%';
-- mostrar os dados do cadastro que tem o cnpj a baixo
select * from cadastro where cnpj =  '43.721.786/0001-49';

update cadastro set senha = 'senhanova' where Idempresa = 3;

select * from cadastro;

create table Solo (
id int primary key auto_increment,
tipoSolo varchar(20),
umidadesolo int not null);

INSERT INTO Solo (tipoSolo, umidadesolo) values
('Arenoso', 65),
('Argiloso', 75),
('Silte', 70),
('Franco-arenoso', 70),
('Franco-argiloso', 75),
('Orgânico', 80);
-- mostrar os dados detodos solos que o tipo do solo é Organico
select * from Solo where tipoSolo = 'Orgânico';
-- mudar a coluna umidade solo de int para float
alter table Solo modify column umidadesolo Float;
-- descrever tabela
desc Solo;
-- atualizar a umidade do solo de 65 para 65.7 no solo que o id é 1
update Solo set umidadesolo = 65.70 where id = 1;
-- Mostrar todos dados da tabela
select * from Solo;
-- criar tabela
create table stssensor (
id int primary key auto_increment,
sensor varchar(20),
status tinyint not null);
-- inserir dados
INSERT INTO stssensor (sensor, status) VALUES
('Sensor 1', 1),
('Sensor 2', 0),
('Sensor 3', 1),
('Sensor 4', 1),
('Sensor 5', 0);
-- para ver todos os dados da tabela
select * from stssensor;
-- Para ver os sensores que estão ligados
select sensor  from stssensor where status = 1;


