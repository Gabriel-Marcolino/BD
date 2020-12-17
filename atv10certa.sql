create database PI;
use PI;

create table grupo(
idGrupo int primary key auto_increment,
nomeGrupo varchar (45),
descricaoProjeto varchar (45)
 );
 
 create table aluno(
fkGrupo int,
foreign key (fkGrupo) references grupo (idGrupo),
ra int,
primary key (fkGrupo, ra),
nomeAluno varchar (45),
emailAluno varchar (45)
 );
 
create table professor(
idProfessor int primary key auto_increment,
nomeProfessor varchar (45),
disciplina varchar (45)
 )auto_increment = 10000;
 
create table professorGrupo(
fkProfessor int,
foreign key (fkProfessor) references professor (idProfessor),
fkGrupo int,
primary key(fkProfessor,fkGrupo),
foreign key (fkGrupo) references grupo (idGrupo),
horaAvaliacao datetime,
nota int
);

insert into grupo values
(null,'sensorTemp','Sensor de temperatura'),
(null,'sensorLumi','sensor de luminosidade'),
(null,'sensorProx','Sensor de proximidade'),
(null,'sensorTemUmi','Sensor de Temp e umidade');

select *from grupo;

insert into professor values
(null,'Yoshi','Algoritimo'),
(null,'Célia','BD'),
(null,'Brandão','PI'),
(null,'Marise','Arq.Comp');

select *from professor;

insert into Aluno values
(1,02201017,'Gabriel','gabriel@gmail.com'),
(1,02201018,'Eric','eric@gmail.com'),
(1,02201019,'Victor','victor@gmail.com'),
(2,02201020,'Kaio','kaio@gmail.com'),
(2,02201021,'Murilo','Murilo@gmail.com'),
(2,02201022,'Luiza','Luiza@gmail.com'),
(3,02201023,'Kalil','Kalil@gmail.com'),
(3,02201024,'Anna','Anna@gmail.com'),
(3,02201025,'Catarina','Catarina@gmail.com'),
(4,02201026,'William','william@gmail.com'),
(4,02201027,'Isabella','isabella@gmail.com'),
(4,02201028,'Josué','josue@gmail.com');

select *from Aluno;

insert into professorGrupo values
(10000,1,'2020-10-12 12:00:00',10),
(10001,1,'2020-10-12 10:30:00',8),
(10002,2,'2020-10-13 12:00:00',9),
(10003,2,'2020-10-13 11:00:00',7),
(10000,3,'2020-10-14 09:00:00',10),
(10001,3,'2020-10-14 15:00:00',9),
(10002,4,'2020-10-14 08:00:00',6),
(10003,4,'2020-10-15 16:00:00',7);

select * from professorGrupo;

select * from aluno,grupo where fkGrupo = idGrupo;

select * from aluno,grupo where nomeGrupo='sensorTemp' and fkGrupo = idGrupo;

select round(avg(nota),2) as 'Media das notas' from professorGrupo;

select max(nota) as 'Maior nota', min(nota) as 'menor nota' from professorGrupo;

select sum(nota) as 'Soma das notas' from professorGrupo;

select * from professor,grupo,professorGrupo where fkGrupo = idGrupo;

select * from professor,grupo,professorGrupo where nomeGrupo='sensorLumi'and fkGrupo = idGrupo;

select * from professor, grupo, professorGrupo where fkGrupo = idGrupo and fkProfessor = idProfessor and idGrupo = 1;

select nomeGrupo from grupo, professor, professorGrupo where fkGrupo = idGrupo and fkProfessor = idProfessor and idProfessor = 10000;

select * from grupo, professor, professorGrupo where fkGrupo = idGrupo and fkProfessor = idProfessor and idGrupo = 1;

select count(distinct nota) from professorGrupo ;

select fkGrupo, avg(nota) as 'Média das nota', sum(nota) as 'Soma das notas' from professorGrupo, professor where fkProfessor = idProfessor group by fkProfessor;

select fkGrupo, avg(nota) as 'Média das nota', sum(nota) as 'Soma das notas' from professorGrupo, grupo where fkGrupo = idGrupo group by fkGrupo;

select fkProfessor, min(nota) as 'Nota Minima', max(nota) as 'Nota Maxima' from professorGrupo, professor where fkProfessor = idProfessor group by fkProfessor;

select fkGrupo, min(nota) as 'Nota Minima', max(nota) as 'Nota Maxima' from professorGrupo, grupo where fkGrupo = idGrupo group by fkGrupo;





