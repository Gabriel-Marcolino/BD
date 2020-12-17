create database ninth_group;
use ninth_group;


create table tipoRemedio(
    id_tipo int auto_increment primary key,
    nome_tipo varchar(50),
    temperatura_min decimal(10,2),
    temperatura_max decimal(10,2),
    umidade_min decimal(10,2),
    umidade_max decimal(10,2)
);
    
create table estoque(
    id_estoque int auto_increment primary key,
    cnpj varchar(20),
    nome_estoque varchar(30)
);
create table sensor(
    id_sensor int auto_increment primary key,
    nome_sensor varchar(15),
    fk_estoque int,
    foreign key (fk_estoque) references estoque(id_estoque)
);
    
create table remedio(
    id_remedio int auto_increment primary key,
    nome_remedio varchar(50),
    dec_remedio varchar(80),
    fk_tipo int,
    foreign key(fk_tipo) references tipoRemedio(id_tipo),
    fk_estoque int,
    foreign key(fk_estoque) references estoque(id_estoque)
);
create table dados_sensor(
    id_dados int auto_increment primary key,
    temperatura decimal(10,2),
    umidade decimal(10,2),
    data_hora datetime,
    fk_sensor int,
    foreign key (fk_sensor) references sensor(id_sensor)
);
create table usuarios(
   id_usuario int auto_increment primary key, 
   nome varchar(100),
   login varchar(50),
   senha varchar(50), 
   email varchar (50),
   fk_estoque int,
   foreign key (fk_estoque) references estoque(id_estoque)
);

