USE opera;

-- Seleccionar los autores que nacieron entre 1800 y 1850: fácil
select * from autor where fecha_nacimiento between 1800 and 1850;
  
-- Mostrar todas las obras que no han sido representadas y que estén escritas en alemán idioma=’A’. Fácil
select * from opera where lugar_estreno is null and idioma = 'A';

-- Todas las obras ordenadas según tu propio criterio. Fácil
select * from opera order by nombre;

-- Autores que no tienen ninguna obra almacenada en la base de datos.  Medio
select * from autor inner join opera
on autor.idautor = opera.autor_idautor
where opera.fecha_estreno is null;

-- Selecciona los autores que vivieron menos de 50 años. Media
-- Utiliza YEAR(columna_fecha) para obtener solo el año de una fecha
-- Edad que tenía el autor Giacomo Puccini cuando se estrenaron sus obras. Muy difícil.

-- Mostrar nombre autor, nombre de obra, y edad del autor cuando se estrenó la obra.
-- El campo edad debe estar renombrado. Utiliza YEAR(columna_fecha) para obtener solo el año de una fecha

-- Autores que murieron en el mismo lugar en el que nacieron. Fácil
select * from autor
where lugar_nacimiento like lugar_defuncion;

-- Autores cuyo nombre empieza por g y acaba por i. Fácil
select * from autor where nombre like 'g%i';
-- Listar todos los nombres las óperas, junto con su fecha de estreno y el idioma, pero habrá que mostrar lo siguiente. Difícil
-- En el caso de que el idioma sea:
-- F-->Francés
-- I-->Italiano
-- A-->Alemán 
-- Habrá que renombrar el último campo como idioma.

-- Todas óperas que se estrenaron antes de 7 de julio de 1850. Fácil
select * from opera where YEAR(fecha_estreno) <1870-7-7;
-- Todas las obras que se han representado en el teatro 1 durante la temporada 2015/2016. Muy difícil
select * from opera;

-- Mostrar el siguiente formato: nombre teatro, temporada, nombre de la obra que se representó.
-- Anotación: ten en cuenta que las tablas temporada y temporada_representa_opera están relacionadas por una doble FK-PF
-- Todos los autores que murieron en distinto país del país donde nacieron. Difícil
select * from autor
where lugar_nacimiento not like lugar_defuncion;

-- Todas las obras que hayan sido escritas por un italiano. Con el siguiente formato. Tendrán que ir ordenado por nombre de autor en orden descendente y nombre de la obra en orden ascendente. Difícil
-- País autor           Nombre autor                   Nombre obra

-- Autores con todas las obras que han representado. En caso de que no tengan ninguna obra que se haya representado se mostraran los valores respectivos a las fechas de representación a vacío (null). Difícil
select * from opera, autor
where opera.autor_idautor = autor.idautor;
-- Solo habrá que seleccionar los siguientes datos: nombre autor, nombre opera, fecha de representación
-- Mostrar todas las obras con los datos de sus respectivos autores y el país donde se estrenaron ordenados por el nombre de la ópera descendentemente. Solo queremos que muestre dos registros a partir del registro 5.  Medio

-- Los datos a mostrar serán : nombre autor, nombre ópera, país de estreno