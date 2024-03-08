create database inmuebles;
use inmuebles;
create table personas
(cod_persona varchar(10) primary key, dni_persona varchar(10) unique key, nombre varchar(50) not null, telefono int);
drop table cliente;
create table cliente(
cod_persona varchar(10),
primary key(cod_persona),
foreign key(cod_persona) references personas(cod_persona) on delete cascade on update cascade,
tipo_cliente enum('vip','normal','inmobiliaria'))
engine='InnoDB';
create table trabajadores(
cod_persona varchar(10),
primary key(cod_persona),
foreign key(cod_persona) references personas(cod_persona) on delete cascade on update cascade,
telefono_trabajo varchar(10))
engine='InnoDB';
create table inmueble(
id_inmueble int primary key,
telefono_trabajo varchar(50),
precio_actual double(12,2) default 0
) auto_increment=1000
engine='InnoDB';
create table pisos(
id_inmueble int primary key,
foreign key(id_inmueble) references inmueble(id_inmueble) on delete cascade on update cascade,
tipo enum('chalet','apartamento','duplex','casa de pueblo'),
jardin boolean not null default false)
engine='InnoDB';
create table locales(
id_inmueble int primary key,
foreign key(id_inmueble) references inmueble(id_inmueble) on delete cascade on update cascade,
bano boolean not null default false
) engine=InnoDB default charset=latin1;
create table garajes(
id_inmueble int primary key,
foreign key(id_inmueble) references inmueble(id_inmueble) on delete cascade on update cascade,
numero int default 0,
planta int default 0
) engine=InnoDB default charset=latin1;
create table alquiler(
id_inmueble int,
num_alquiler int,
primary key (id_inmueble, num_alquiler),
cod_cliente int,
cod_vendedor int,
foreign key (id_inmueble) references inmueble(id_inmueble) on delete cascade on update cascade,
foreign key (cod_cliente) references personas(cod_persona) on delete cascade on update cascade,
foreign key (cod_vendedor) references personas(cod_persona) on delete cascade on update cascade
) engine=InnoDB default charset=latin1;