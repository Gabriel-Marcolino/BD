create database PROJETOAPI;	
use PROJETOAPI;
create table pytohms (
	id int primary key auto_increment,
    user_desktop varchar(50),
    placa_mae varchar(50),
    cpu_count int,
    clock_1 varchar(10),
    clock_2 varchar(10),
    cpu_media_temperatura varchar(10),
    cpu_media_percent varchar(10), 
    cpu_media_clock varchar(10),
    memory_load varchar(10),
    memory_use varchar(10),
    memory_available varchar(10),
    video_card varchar(50)
);

select * from pytohms order by id desc;
select cpu_count from pytohms;
select * from pytohms;