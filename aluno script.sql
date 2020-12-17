create database atvbd;
use atvbd;
create table aluno (
          ra int primary key,
          nome varchar(50),
          telefone varchar(13),
          email varchar(50),
          inst_origem int,
          Emp_interesse int,
          hobby varchar(40)
);
create table Empresa (
           id_empresa int primary key,
           nome_empresa varchar(20),
           representante varchar(20)

);

create table instituicao (
           id_inst int primary key,
           nome_inst varchar(50),
           bairro varchar(50)
); 

insert into aluno values(2201015,'Bruno',11942235548,'bruno@gmail.com',1,1, 'Jogar futebol'),
                         (2201017,'Maria',11942235541,'maria@gmail.com',1,4, 'ler livros'),
                         (2201019,'Gabriel',11942235549,'gabriel@gmail.com',2,2, 'video game'),
                         (2201011,'Amanda',11942235547,'amanda@gmail.com',2,5, 'caminhada'),
                         (2201013,'Joao',11942235545,'joão@gmail.com',3,3, 'ouvir musica');

insert into Empresa values (1, 'stefanini','anderson'),
(2,'PayGo','julia'),
(3,'TIVIT','Paula'),
(4,'accenture','carlos'),
(5,'outsystem','fernando');

insert into instituicao values(1,'ETEC heliopolis','SJC'),
(2,'ETEC jorge street','SCS'),
(3,'GV','Ipiranga');







