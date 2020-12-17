create database PraticaFuncionario;
use PraticaFuncionario;

create table setor(
	idsetor int primary key,
	nomeSetor varchar(45),
	numAndar int
  );
  
create table funcionario(
	idFuncionario int primary key,
	nomeFuncionario varchar(45),
	telefone char(9),
	salario decimal(8,2),
	fkSetor int,
	foreign key (fkSetor) references setor(idsetor)
);

create table acompanhante(
	idAcompanhante int,
	fkAcompanhante int,
	foreign key (fkAcompanhante) references funcionario(idFuncionario),
	primary key (idAcompanhante, fkAcompanhante),
	nomeAcompanhante varchar(45),
	relacao varchar(45),
	dataNasc date
);

insert into setor values
	(1, 'Administração', 3),
	(2, 'Manutenção', 2),
	(3, 'TI', 4);
  
insert into funcionario values
	(100, 'Gabriel', '978634889', '1300.00', 1),
	(101, 'Kalil', '912384765', '3000.00', 3),
	(102, 'Eric', '918725458', '2000.00', 2),
	(103, 'Fernanda', '934491972', '3200.00', 2),
	(104, 'Amanda', '948347161', '2000.00', 1),
	(105, 'Raissa', '922873645', '2500.00', 3);
  
insert into acompanhante values
	(1000, 100, 'Marina', 'Esposa', '1980-01-25'),
	(1000, 101, 'Carlos', 'Pai', '1970-04-25'),
	(1000, 102, 'Laura', 'Esposa', '1992-05-13'),
	(1001, 101, 'Gabriel', 'Filho', '1987-03-01'),
	(1000, 104, 'Carla', 'irmã', '1982-02-25');
    
    -- E
select * from setor;
select * from funcionario;
select * from acompanhante;

	-- G
select * from setor,funcionario where idSetor = fkSetor;

	-- H
select * from setor,funcionario where nomeSetor = 'TI' and idSetor = fkSetor;

	-- I
select * from funcionario,acompanhante where idFuncionario = fkAcompanhante;

	-- J
select * from funcionario,acompanhante where nomeFuncionario = 'Amanda' and idFuncionario = fkAcompanhante;

	-- K
select * from funcionario,setor,acompanhante where idSetor = fkSetor and idFuncionario = fkAcompanhante;

	-- L
select sum(salario) as total, avg(salario) as 'Média dos salários' from funcionario;

	-- M
select sum(salario) as total, avg(salario) as 'Média dos salários' from funcionario where salario > '2000';

	-- N
select max(salario) as 'Salário máximo', min(salario) as 'Salário mínimo' from funcionario;

	-- O
select count(salario) as 'Quantidade de salários' from funcionario;

	-- P
select count(salario) as 'Quantidade de salários' from funcionario where salario < '3000';