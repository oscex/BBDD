create database hotel;

use hotel;

create table hoteles(
nombre varchar(50) not null,
primary key (nombre),
ubicaion varchar(150),
numero_habitaciones int);

create table habitaciones(
id_habitacion int not null primary key auto_increment,
numero int,
planta int,
metros_cuadrados int,
nombre_hotel varchar(50),
foreign key (nombre_hotel) references hoteles(nombre));

create table clientes(
dni_cli varchar(10) not null,
primary key (dni_cli),
nombre varchar(50),
edad int);

create table reservas(
id_reserva int not null auto_increment,
primary key (id_reserva),
id_habitacion int,
foreign key (id_habitacion) references habitaciones(id_habitacion),
fecha date);

create table reserva_cliente(
id_reserva int not null,
dni_cliente varchar(10) not null,
primary key (id_reserva, dni_cliente),
foreign key (id_reserva) references reservas(id_reserva),
foreign key (dni_cliente) references clientes(dni_cli));
/* Borra la clave foránea del campo nombre_hotel de la tabla habitaciones. Te tendrás
que valer del comando show create table nombre_tabla para saber cuál es el nombre
del índice.*/

show create table habitaciones;
 
/* Borrar el campo nombre de hotel de la tabla habitaciones.*/

ALTER TABLE habitaciones DROP foreign key habitaciones_ibfk_1;
ALTER TABLE habitaciones DROP COLUMN nombre_hotel;
/* Elimina el campo nombre de hotel.+*/
ALTER TABLE hoteles DROP COLUMN nombre;
/* Añadir un campo entero en la tabla hoteles que se llame id_hotel que vaya en primer
lugar y que sea clave primaria y que sea autoincrement.*/

alter table hoteles add column id_hotel int primary key; 
/* Crear un campo id_hotel entero en la tabla habitaciones.*/
alter table habitaciones add column id_hotel int;

/* Borrar el campo id_habitacion en la tabla habitaciones. para ello habrá que borrar
previamente el campo id_habitacion en la tabla reservas. Antes habrá que borrar la FK*/
ALTER TABLE habitaciones DROP foreign key id_habitacion_ibfk_1;

/* Añadir una nueva foreign key id_hotel en la tabla habitaciones que haga referencia a la
clave primaria de la tabla hoteles.*/

alter table habitaciones add foreign key (id_hotel) references hoteles(id_hotel);
/* Renombrar la tabla reserva_cliente por reservas_habitaciones_cliente.*/
RENAME TABLE
    reserva_cliente TO reservas_habitaciones_cliente;

/* Crear tres nuevas columnas planta, numero e id_hotel enteros en la tabla reservas.*/
alter table reservas
add column planta int,
add column numero int,
add column id_hotel int;

/* Eliminar la columna id_reservas de la tabla reservas para esto habrá que eliminar las
claves foráneas de la tabla reservas_habitaciones_cliente*/
alter table reservas_habitaciones_cliente
drop foreign key reservas_habitaciones_cliente_ibfk_1;
alter table reservas
drop column id_reserva;
/* Establecer como nueva clave primaria de la tabla reserva (numero, planta, id_hotel,
fecha).*/
alter table reservas
add primary key (numero, planta, id_hotel);
/*Establecer como nueva clave foránea de la tabla reserva (numero, planta, id_hotel)
que hacen referencia a la tabla habitaciones.*/
alter table reservas 
add foreign key (numero) references habitaciones(id_hotel),
add foreign key (planta) references habitaciones(id_hotel),
add foreign key (id_hotel) references habitaciones(id_hotel);

/* Borrar la clave primaria de la tabla reservas_habitaciones_cliente tendrás que borrar la
clave foránea de la tabla reservas_habitaciones_cliente ;*/

alter table reservas_habitaciones_cliente
drop primary key;

/* Crear cuatro nuevos campos en la tabla reservas_habitaciones_cliente serán enteros y
son numero, planta, id_hotel, fecha (tipo fecha);*/
alter table reservas_habitaciones_cliente
add column planta int,
add column numero int,
add column id_hotel int,
add column fehca date;

/* Establecer como clave primaria de la tabla reservas_habitaciones_cliente los campos
número, planta, id_hotel, fecha, dni_cliente.*/
alter table reservas_habitaciones_cliente 
add primary key (planta, numero, id_hotel, fehca);

/* Establecer en reservas_habitaciones_cliente como claves foráneas:
o dni_cliente, que hace referencia a la tabla clientes
o número, planta, id_hotel, fecha_reserva que hacen referencia a la tabla
reservas;*/
alter table reservas_habitaciones_cliente 
add foreign key (dni_cliente) references clientes(dni_cli),
add foreign key (numero, planta, id_hotel, fehca) references reservas(numero, planta, id_hotel, fecha);

show create table habitaciones;
/* Añadir un comentario a todas las tablas acerca de la información que guardan.*/
ALTER TABLE reservas DROP foreign key reservas_ibfk_1;
