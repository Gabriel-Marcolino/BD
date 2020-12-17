create database facul;
use facul;

create table área(
idArea int primary key auto_increment,
nomeArea varchar(45)
)auto_increment=1000;
select * from área;

create table candidato(
idCanditato int primary key auto_increment,
fkArea int,
foreign key(fkArea) references área(idArea),
nomeCand varchar(45),
dataNasc date
)auto_increment=1;

create table faculdade(
idFacul int primary key auto_increment,
nomeFacul varchar(45),
siteFacul varchar(45)
)auto_increment=100;

create table vestibular(
fkCandidato int,
foreign key(fkCandidato) references candidato(idCanditato),
fkFaculdade int,
foreign key(fkFaculdade) references faculdade(idFacul),
primary key(fkCandidato, fkFaculdade),
pontuação decimal
);

insert into área values
(null, 'Biologia'),
(null,'Engenharia da Computação'),
(null,'Direito');

insert into candidato values
(null,1000,'Alexandre Silva','2002-01-02'),
(null,1000,'Gabriel Gomes','2001-05-10'),
(null,1001,'Laura Torres','1999-02-25'),
(null,1001,'Gabriel Gomes','2000-10-02'),
(null,1002,'Amanda Pereira','2002-12-26'),
(null,1002,'Vitória Coelho','2001-04-05');

insert into faculdade values
(null,'UNICAMP','www.unicapm.com'),
(null,'Bandtec','www.bandtec.com'),
(null,'USP','www.USP.com'),
(null,'UNIP','www.unip.com');


insert into vestibular values
(7,100,89),
(7,101,54),
(8,101,78),
(9,100,95),
(9,103,87),
(11,100,54);

-- selects

select*from faculdade;
select*from candidato;
select*from área;
select*from vestibular;

select*from área,candidato where fkArea = idArea;

select*from área,candidato where nomeArea ='Direito' and fkArea=idArea;

select avg(pontuação) as 'Media das pontuações', sum(pontuação) as 'Soma das pontuaçoes' from vestibular;

select min(pontuação) as 'Menor pontuação', max(pontuação) as 'Maior pontuação' from vestibular;

select*from candidato,faculdade,vestibular where fkCandidato = idCanditato and fkFaculdade=idFacul;

select*from candidato,faculdade,vestibular where nomeCand='Laura Torres' and fkCandidato = idCanditato and fkFaculdade=idFacul;

select*from candidato,área,faculdade,vestibular where fkCandidato = idCanditato and fkFaculdade=idFacul and fkArea=idArea;

select fkCandidato, avg(pontuação) as 'Média', sum(pontuação) as 'Soma' from vestibular,candidato where fkCandidato = idCanditato group by fkCandidato;

select fkFaculdade, avg(pontuação) as 'Média', sum(pontuação) as 'Soma' from vestibular,faculdade where fkFaculdade = idFacul group by fkFaculdade;

select fkCandidato, max(pontuação) as 'Maior pontuação', min(pontuação) as 'Menor pontuação' from vestibular,candidato where fkCandidato = idCanditato group by fkCandidato;

select fkFaculdade, max(pontuação) as 'Maior pontuação', min(pontuação) as 'menor pontuação' from vestibular,faculdade where fkFaculdade = idFacul group by fkFaculdade;




