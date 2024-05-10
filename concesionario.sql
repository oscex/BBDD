create database concesionario;

use concesionario;

create table coches(
matricula varchar(11) not null primary key,
marca varchar(50) default 'Seat',
modelo varchar(100) default null);

insert into coches(matricula, marca, modelo) values
("9485397", "mercedes", "clase A");

insert into coches(matricula, marca, modelo) values
("1231231", "Lamborghini", "Aventadorr Sto");

insert into coches(matricula, marca, modelo) values
("23423423", "Bmw", "Serie 5");

insert into coches(matricula, marca, modelo) values
("213123", "Ford", "Focus Rs"),
("234234", "Proche", "911 gt3 rs");

insert into coches(matricula) values
("231264"),
("2349876");

insert into coches(matricula, marca, modelo) values
("213123", "Ford", "Focus Rs"),
("234234", "Proche", "911 gt3 rs");

insert into coches(matricula, modelo) values
("989780", "Impereza");

insert into coches(matricula, marca) values
("98999", "Toyota");

insert into coches(matricula, modelo) values
("984949", "Cupra"),
("735484", "Leon");

create table coches_copia like coches;

insert into coches_copia
select * from coches order by matricula limit 5;

create table copias_coche_auto as select * from coches where marca like "Ford";
3