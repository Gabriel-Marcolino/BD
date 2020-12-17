create database Biblioteca;
use Biblioteca;
create table Autor(
idAutor int primary key auto_increment,
nome varchar(45),
telefone char(8)
); 

create table Livro(
idLivro int primary key auto_increment,
fkAutor int,
foreign key(fkAutor) references Autor(idAutor),
titulo varchar(45),
genero varchar(45),
preco decimal(9,2)
)auto_increment=100;

create table Exemplar(
idExemplar int,
fkLivro int,
primary key(idExemplar, fkLivro),
foreign key(fkLivro) references Livro(idLivro),
dt_aquisicao date
);

-- INSERTS
insert into Autor values
(null,'Machado de Assis', '45556666'),
(null,'JK Rowling', '45555555'),
(null,'Rick Riordan', '12222222');

select * from Autor;

insert into Livro values
(null,1,'Dom casmurro', 'Romance', 20.00),
(null,1,'Memorias postumas de brás Cubas', 'Romance', 30.00),
(null,2,'Harry Potter e a pedra filosofal', 'Ficcao', 28.00),
(null,2,'Harry Potter e a camara secreta', 'Ficcao', 28.00),
(null,3,'Percy Jackson e o Mar de Monstros', 'Ficcao', 21.00),
(null,3,'Percy Jackson e a Batalha no labirinto', 'Ficcao', 21.00);

select * from Livro;

insert into Exemplar values
(1,100,'2020-04-11'),
(2,100,'2020-02-17'),
(1,101,'2020-01-13'),
(2,101,'2020-09-08'),
(1,102,'2020-04-05'),
(2,102,'2020-02-02'),
(1,103,'2020-03-30'),
(2,103,'2020-08-28'),
(1,104,'2020-01-12'),
(2,104,'2020-01-01'),
(1,105,'2020-06-16'),
(2,105,'2020-07-14');

select * from Exemplar;
-- SELECTS

select * from Autor, Livro where fkAutor=idAutor;

select * from Autor, Livro where nome = 'Rick Riordan' and fkAutor=idAutor;

select * from Livro, Exemplar where fkLivro = idLivro; 

select * from Livro, Exemplar where titulo = 'Dom casmurro' and fkLivro = idLivro; 

select * from Autor,Livro,Exemplar where fkAutor=idAutor and idLivro=fkLivro;

select sum(preco) as soma, avg(preco) as media from Livro;

select max(preco) as maior_preco, min(preco) as menor_preco from Livro;

select count(preco) as quantidade_preco from Livro;

select count(preco) as quantidade_preco_maior from Livro where preco> '21.00';




