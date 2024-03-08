drop database if exists elecciones_municipales;
create database elecciones_municipales character set latin1;
use elecciones_municipales;
create table partidos_politicos
(siglas char (4) primary key,
id_partido int unique,
nombre varchar(30),
direccion varchar(30),
Localidad varchar(30),
Fecha_alta date);

create table politicos (
dni varchar(10) primary key,
partido char(4),
primer_apellido varchar (25),
segundo_apellido varchar (25),
Edad int,
foreign key (partido) references partidos_politicos(siglas));

create table municipio (
cod_municipio int auto_increment auto_increment primary key,
nombre varchar(25) not null,
provincia varchar(25) not null,
num_censados int not null,
tipo enum ('ciudad pueblo'));

create table colegios_electorales (
cod_municipio int,
foreign key (cod_municipio) references municipio(cod_municipio) on delete no action on update cascade,
cod_colegio int,
primary key(cod_municipio, cod_colegio),
direcion varchar(50),
nombre varchar(50) not null);

create table mesa_electoral(
distrito int,
seccion int,
letra char(1),
primary key(distrito, seccion, letra),
cod_municipio int,
cod_colegio int,
foreign key(cod_municipio, cod_colegio) references colegios_electorales(cod_municipio, cod_colegio) On delete set null on update cascade);

create table candidato(
dni varchar(10) primary key,
foreign key (dni) references politicos(dni) on delete no action on update cascade,
cargo varchar(50) not null,
municipio int,
foreign key (municipio) references municipio(cod_municipio) on delete set null on update cascade);

create table elegido(
dni varchar(10) primary key,
foreign key (dni) references politicos(dni) on delete no action on update cascade,
cargo varchar(50) not null,
municipio int,
foreign key (municipio) references municipio(cod_municipio) on delete set null on update cascade);

create table obtiene_votos(
distrito int,
seccion int,
letra char(1),
siglas char(4),
primary key (distrito, seccion, letra, siglas),
foreign key (siglas) references partidos_politicos(siglas) on delete cascade on update cascade,
num_votos int not null);

create table resultados_municipio(
cod_municipio int,
siglas char(4),
por_votos decimal (5,2) not null,
num_concejales int default 0,
num_votos int,
primary key (cod_municipio, siglas),
foreign key (cod_municipio) references municipio(cod_municipio) on delete cascade on update cascade,
foreign key (siglas) references partidos_politicos(siglas) on delete cascade on update cascade);