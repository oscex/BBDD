use  ex2;

-- Mostrar, de todas las canciones, solo 10.
select * from canciones limit 10;

-- Álbumes que fueron lanzados en la década de los 80 y que empiezan por la letra M.
select * from albums where anolanzamiento >= 1980/01/01 and titulo like 'M%';

-- Listado de las canciones del disco ‘Appetite for Destruction’.
select canciones.titulo from canciones inner join albums on canciones.album = albums.id_album where albums.titulo like 'Appetite for Destruction';

-- Canciones que no están incluidas en ninguna lista de reproducción ordenadas por título de forma descendente.
select canciones.titulo from canciones inner join cancionesenlista on canciones.id_cancion = cancionesenlista.cancion order by titulo asc;
-- Artistas que actualmente no pertenecen a ningún grupo, ni han pertenecido a ningún grupo
select artistas.nombre from artistas left join artistas_grupo on artistas.id_artista = artistas_grupo.id_artista where artistas_grupo.id_artista is null;

-- Aristas que tenían menos de 15 años cuando se creó el grupo en el que tocan actualmente (el grupo en el que tocan actualmente se sabe porque la fecha fin de la tabla artistas_grupo está a null).
select * from artistas inner join artistas_grupo on artistas_grupo.id_artista = artistas.id_artista where artistas_grupo.fecha_fin is null;

-- Listado en el que se obtenga el nombre de usuario, el nombre de la lista de reproducción, nombre de la canción y nombre del álbum para el usuario con nombre Paco.
select cancionesenlista.nombreusuario, cancionesenlista.nombrelista, canciones.titulo from cancionesenlista inner join canciones on canciones.id_cancion = cancionesenlista.cancion where cancionesenlista.nombreusuario like '%Paco%';