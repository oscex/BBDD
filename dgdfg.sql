drop database if exists ex2;
CREATE database ex2;
use  ex2;

CREATE TABLE artistas (
  id_artista  INT auto_increment  PRIMARY KEY ,
  nombre varchar(50),
  fecha_nac date
);

INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (1, 'James Hetfield','1963/08/03');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (2, 'Lars Ulrich','1963/12/26');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (3, 'Dave Mustaine','1961/09/13');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (4, 'Cliff Burton','1968/09/27');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (5, 'Jason Newsted','1963/03/04');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (6, 'Robert Trujillo','1964/10/23');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (8, 'David Ellefson','1964/11/12');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (9, 'Nick Menza','1964/06/21');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (10, 'Jeff Young','1962/03/31');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (11, 'Bon Scott','1946/07/09');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (12, 'Angus Young','1955/03/31');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (13, 'Malcolm Young','1953/01/06');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (14, 'Brian Johnson','1948/10/05');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (15, 'Cliff Williams','1949/12/15');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (16, 'Axl Rose','1962/02/06');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (17, 'Frank Ferrer','1966/03/25');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (18, 'Paulo Jr','1969/04/30');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (19, 'Max Cavalera','1969/08/04');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (20, 'Igor Cavalera','1970/09/04');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (21, 'Jon Bon Jovi','1962/03/02');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (22, 'Richie Sambora','1959/07/11');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (23, 'David Bryan','1962/03/02');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (24, 'Melissa Reese','1985/03/01');
INSERT INTO artistas(id_artista, nombre,fecha_nac) VALUES (25, 'Bruce Dickinson','1958/08/07');


create table grupo (
id_grupo int primary key auto_increment,
nombre varchar(50),
fecha_inicio date,
fecha_fin date
);
insert into grupo values(1,'Metallica','1983/02/01',null);
insert into grupo values(2,'AC/DC','1973/01/01',null);
insert into grupo values(3,'Megadeth','1983/01/01',null);
insert into grupo values(4,'Sepultura','1984/01/01',null);
insert into grupo values(5,"Guns N' Roses",'1985/01/01',null);
insert into grupo values(6,'Bon Jovi','1983/01/01',null);
insert into grupo values(7,'led zeppelin ','1968/01/01','1980/01/01');

CREATE TABLE usuarios (
  email varchar(50),
  nombreusuario varchar(50) PRIMARY KEY,
  nombre varchar(50),
  UNIQUE (email)
);

INSERT INTO usuarios(nombreusuario, email, nombre) VALUES ('Maria80', 'email1', 'Maria');
INSERT INTO usuarios(nombreusuario, email, nombre) VALUES ('Paco92', 'email2', 'Paco');
INSERT INTO usuarios(nombreusuario, email, nombre) VALUES ('Juancar', 'email3', 'Juan');
INSERT INTO usuarios(nombreusuario, email, nombre) VALUES ('Sarita', 'email4', 'Sara');

CREATE TABLE albums (
  id_album INT PRIMARY KEY,
  titulo varchar(50),
  anolanzamiento date,
  id_grupo int,
  foreign key (id_grupo) references grupo(id_grupo)
);

INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (1, 'Ride the Lightning','1984/1/1',1);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (2, 'Load','1996/1/1',1);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (3, 'Master of Puppets', '1986/1/1',1);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (4, 'St. Anger', '2003/1/1',1);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (5, 'High Voltage', '1976/05/14',2);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (6, 'Let There Be Rock', '1977/06/23',2);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (7, 'Highway to Hell', '1979/07/27',2);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (8, 'Stiff Upper Lip', '2000/02/25',2);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (9, 'Ballbreaker', '1995/09/22',2);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (10, 'Rust in Peace', '1990/09/24',3);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (11, 'Countdown to Extinction','1992/07/14',3);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (12, 'Risk', '1999/08/31',3);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (13, 'Schizophrenia', '1987/01/01',4);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (14, 'Roots', '1996/12/01',4);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (15, 'Appetite for Destruction', '1987/07/21',5);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (16, 'Use Your Illusion I', '1991/09/17',5);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (17, '7800° Fahrenheit', '1985/04/12',6);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (18, 'These Days', '1995/06/27',6);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (19, 'Led Zeppelin II', '1969/10/22',7);
INSERT INTO albums(id_album, titulo, anolanzamiento,id_grupo) VALUES (20, 'Houses of the Holy', '1973/03/28',7);


CREATE TABLE canciones (
  id_cancion INT PRIMARY KEY,
  titulo varchar(50),
  duracion varchar(20),
  album INT,
  cancionNr INT,
  /* FOREIGN KEY(cancion) REFERENCES canciones(id_cancion),*/
  FOREIGN KEY(album) REFERENCES albums(id_album)
);

insert into canciones values(1,'Ride the Lightning','6:36',1,2);
insert into canciones values(2,'Fight Fire with Fire','4:44',1,1);
insert into canciones values(3,'Hero of the Day','4:22',2,6);
insert into canciones values(4,'Bleeding Me','8:18',2,7);
insert into canciones values(5,'Until It Sleeps','4:30',2,4);

insert into canciones values(6,'Master of Puppets','8:38',3,2);
insert into canciones values(7,'Disposable Heroes','8:14',3,5);

insert into canciones values(8,'Frantic','5:50',4,1);
insert into canciones values(9,'My world','5:45',4,6);


insert into canciones values(10,'The Jack','5:53',5,3);
insert into canciones values(11,'T.N.T','3:35',5,5);
insert into canciones values(12,'High Voltage','4:14',5,9);

insert into canciones values(13,"Hell Ain't a Bad Place to Be",'4:15',6,7);
insert into canciones values(14,'Let There Be Rock','6:07',6,3);

insert into canciones values(15,'Highway to Hell','3:30',7,1);
insert into canciones values(16,'Girls Got Rhythm','3:26',7,2);
insert into canciones values(17,'Shot Down in Flames','3:25',7,6);

insert into canciones values(18,'Stiff Upper Lip','3:34',8,1);
insert into canciones values(19,'Meltdown','3:44',8,2);
insert into canciones values(20,"Can't Stop Rock 'N' Roll",'4:03',8,7);

insert into canciones values(21,'"Hard As A Rock','4:32',9,1);
insert into canciones values(22,'Ballbreaker','4:33',9,11);

insert into canciones values(23,'Take No Prisoners','3:28',10,5);
insert into canciones values(24,'Tornado of Souls','5:22',10,7);

insert into canciones values(25,"Countdown to Extinction",'4:16',11,7);
insert into canciones values(26,'Symphony of Destruction','4:02',11,2);
insert into canciones values(27,'Foreclosure of a Dream','4:17',11,4);


insert into canciones values(28,"Insomnia",'4:16',12,1);
insert into canciones values(29,'Time: The Beginning','3:10',12,11);
insert into canciones values(30,"Crush 'Em",'4:54',12,4);

insert into canciones values(31,"To the Wall (Rough Mix)",'5:31',13,13);
insert into canciones values(32,'Septic Schizo','4:31',13,7);
insert into canciones values(33,'To the Wall','5:36',13,3);

insert into canciones values(34,"Roots Bloody Roots",'3:32',14,1);
insert into canciones values(35,'Ratamahatta','4:30',14,4);
insert into canciones values(36,'Itsári','4:48',14,12);

insert into canciones values(37,"Welcome to the Jungle",'4:31',15,1);
insert into canciones values(38,'Think About You','3:50',15,8);
insert into canciones values(39,'Anything Goes','3:25',15,11);

insert into canciones values(40,"Don't Cry",'4:45',16,4);
insert into canciones values(41,'Bad Apples','4:27',16,14);
insert into canciones values(42,'November Rain','8:56',16,10);

insert into canciones values(54,'Paradise City',null,15,6);

insert into canciones values(43,"In and Out of Love",'4:25',17,1);
insert into canciones values(44,'Tokyo Road','5:40',17,6);
insert into canciones values(45,'Always Run to You','5:00',17,8);

insert into canciones values(46,"These Days",'6:26',18,4);
insert into canciones values(47,'Something for the Pain','4:46',18,2);
insert into canciones values(48,'Hearts Breaking Even','5:05',18,9);

insert into canciones values(49,"The Lemon Song",'6:20',19,3);
insert into canciones values(50,'Ramble On','4:34',19,7);

insert into canciones values(51,"The Rain Song",'7:40',20,2);
insert into canciones values(52,'Dancing Days','3:43',20,5);
insert into canciones values(53,'No Quarter','7:04',20,7);


create table artistas_grupo
(
id_grupo int,
id_artista int,
fecha_inicio date not null,
fecha_fin date,
instrumento ENUM('G','D','B','S','O','T'),
primary key(id_grupo,id_artista,fecha_inicio),
foreign key (id_grupo) references grupo(id_grupo),
foreign key (id_artista) references artistas(id_artista)
);

insert into artistas_grupo values (1,1,'1981/02/01',null,'S');
insert into artistas_grupo values (1,2,'1981/02/01',null,'D');
insert into artistas_grupo values (1,3,'1981/02/01','1983/12/31','G');
insert into artistas_grupo values (3,3,'1984/01/01',null,'G');
insert into artistas_grupo values (1,4,'1983/02/01','1986/01/01','B');
insert into artistas_grupo values (1,5,'1986/01/02','2001/01/01','B');
insert into artistas_grupo values (1,6,'2001/01/02',null,'B');
insert into artistas_grupo values (3,8,'1984/01/01','2002/01/01','B');
insert into artistas_grupo values (3,8,'2010/01/01',null,'B');
insert into artistas_grupo values (3,9,'1989/01/01','2004/01/01','D');
insert into artistas_grupo values (3,9,'2004/01/01','2004/01/02','D');
insert into artistas_grupo values (3,10,'1987/01/01','1989/01/01','G');
insert into artistas_grupo values (2,11,'1974/01/01','1980/01/01','S');
insert into artistas_grupo values (2,12,'1973/01/01',null,'G');
insert into artistas_grupo values (2,13,'1973/01/01','2014/01/01','G');
insert into artistas_grupo values (2,14,'1980/01/01','2016/01/02','S');
insert into artistas_grupo values (2,14,'2018/01/01',null,'S');
insert into artistas_grupo values (2,15,'1977/01/02','2016/01/01','B');
insert into artistas_grupo values (2,16,'2016/01/01','2017/01/02','S');
insert into artistas_grupo values (5,16,'1985/01/01',null,'S');
insert into artistas_grupo values (5,17,'2006/01/02','2018/01/01','D');
insert into artistas_grupo values (4,18,'1984/01/01',null,'B');
insert into artistas_grupo values (4,19,'1984/01/01','1996/01/01','G');
insert into artistas_grupo values (4,20,'1984/01/01','2006/01/01','D');
insert into artistas_grupo values (6,21,'1983/01/01',null,'S');
insert into artistas_grupo values (6,22,'1983/01/01','2013/01/01','G');
insert into artistas_grupo values (6,23,'1983/01/01',null,'T');
insert into artistas_grupo values (5,24,'2016/01/01',null,'T');

CREATE TABLE listasreproduccion (
  nombreusuario varchar(50),
  nombrelista varchar(50),
  PRIMARY KEY (nombreusuario, nombrelista),
  foreign key (nombreusuario) references usuarios(nombreusuario)
);


INSERT INTO listasreproduccion(nombreusuario, nombrelista) VALUES ('Maria80', 'Clasicosrock');
INSERT INTO listasreproduccion(nombreusuario, nombrelista) VALUES ('Maria80', 'rock1');
INSERT INTO listasreproduccion(nombreusuario, nombrelista) VALUES ('Maria80', 'Maria80rock');
INSERT INTO listasreproduccion(nombreusuario, nombrelista) VALUES ('Paco92', 'Paco92Metallica');
INSERT INTO listasreproduccion(nombreusuario, nombrelista) VALUES ('Paco92', 'GarM');
INSERT INTO listasreproduccion(nombreusuario, nombrelista) VALUES ('Juancar', 'Varios');


CREATE TABLE cancionesenlista (
  nombreusuario varchar(50),
  nombrelista varchar(50),
  cancion INT,
  numero INT,
  FOREIGN KEY(cancion) REFERENCES canciones(id_cancion),
  FOREIGN KEY(nombreusuario,nombrelista) REFERENCES listasreproduccion(nombreusuario, nombrelista),
  PRIMARY KEY (nombreusuario, nombrelista, cancion)
);

INSERT INTO cancionesenlista VALUES ('Maria80', 'Clasicosrock', 15, 1);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Clasicosrock', 4, 2);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Clasicosrock', 23, 3);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Clasicosrock', 12, 4);
INSERT INTO cancionesenlista VALUES ('Maria80', 'rock1', 1, 1);
INSERT INTO cancionesenlista VALUES ('Maria80', 'rock1', 5, 2);
INSERT INTO cancionesenlista VALUES ('Maria80', 'rock1', 50, 3);
INSERT INTO cancionesenlista VALUES ('Maria80', 'rock1', 52, 4);
INSERT INTO cancionesenlista VALUES ('Maria80', 'rock1', 40, 5);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Maria80rock', 7, 1);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Maria80rock', 10, 2);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Maria80rock', 21, 3);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Maria80rock', 30, 4);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Maria80rock', 25, 5);
INSERT INTO cancionesenlista VALUES ('Maria80', 'Maria80rock', 37, 6);

INSERT INTO cancionesenlista VALUES ('Paco92', 'Paco92Metallica', 1, 1);
INSERT INTO cancionesenlista VALUES ('Paco92', 'Paco92Metallica', 3, 2);
INSERT INTO cancionesenlista VALUES ('Paco92', 'Paco92Metallica', 4, 3);
INSERT INTO cancionesenlista VALUES ('Paco92', 'Paco92Metallica', 6, 4);
INSERT INTO cancionesenlista VALUES ('Paco92', 'Paco92Metallica', 9, 5);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 2, 1);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 4, 3);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 6, 4);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 8, 5);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 9, 9);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 38, 10);
INSERT INTO cancionesenlista VALUES ('Paco92', 'GarM', 41, 11);
