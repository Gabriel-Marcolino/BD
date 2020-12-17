create database PraticaJogador;
use PraticaJogador;

create table TimeF (
	idTime int primary key,
	nomeT varchar (30),
	nomeTec varchar (30),
	dataForma date
);

create table Jogador (
	idJogador int primary key,
	nomeJ varchar (30),
	posicao varchar (15),
	salario decimal (7,2),
	fkExperiente int,
	foreign key (fkExperiente) references Jogador(idJogador),
	fkTime int,
	foreign key (fkTime) references TimeF(idTime)
);

create table Seguidor (
	fkJogador int,
	foreign key (fkJogador) references Jogador(idJogador),
	idSeguidor int,
	primary key (fkJogador, idSeguidor),
	nome varchar(40),
    nickname varchar(40),
	sexo enum ('m','f','n')
);

insert into TimeF values
	(1000, 'INFO FC', 'Mateus', '2015-05-18'),
	(1001, 'BETA FC', 'Diguinho', '2017-08-12');

insert into Jogador values
	(1, 'William Leal', 'Atacante', '15000', null, 1000),
	(2, 'Igor Machado', 'Zagueiro', '12000', 1, 1000),
	(3, 'Gabriel', 'Meio', '17000', null, 1001),
	(4, 'Medero', 'Meia Atacante', '15000', 3, 1001),
	(5, 'Boldrin', 'Volante', '13000', 1, 1000);

insert into Seguidor values
	(1, 100, 'Gabriel', 'kiko', 'm'),
	(3, 101, 'Rafael', 'rafaa', 'n'),
	(4, 102, 'Amanda Pereira', 'amandann', 'f'),
	(5, 103, 'Karla ', 'sorriso', 'f'),
	(2, 104, 'guilherme', 'guigui', 'n');

select * from TimeF;
select * from Jogador;
select * from Seguidor;
select nomeT,nomeTec from TimeF where nomeT like 'I%';
select * from Jogador order by posicao desc;
select * from Jogador where posicao = 'Zagueiro';
select * from TimeF where nomeTec like '%D_';
select * from TimeF order by nomeTec asc;
select * from TimeF order by dataForma desc;
update Jogador set posicao = 'Atacante' where idJogador = 5;
select * from TimeF,Jogador where idTime = fkTime;
select * from TimeF,Jogador where idTime = fkTime and nomeT = 'INFO FC';
select * from Jogador as e, Jogador as n where e.fkExperiente = n.idJogador;
select * from Jogador as e, Jogador as n,TimeF where e.fkExperiente = n.idJogador and e.fkTime = idTime;
select * from Jogador as e, Jogador as n,TimeF where e.fkExperiente = n.idJogador and e.nomeJ = 'Boldrin' and e.fkTime = idTime;
select * from Jogador,Seguidor where fkJogador = idJogador;
select * from Jogador,Seguidor where nomeJ = 'Rafael' and fkJogador = idJogador;
delete from Seguidor where fkJogador = 2;
delete from Jogador where idJogador = 2;
drop table Seguidor;
drop table Jogador;
drop table Timef;