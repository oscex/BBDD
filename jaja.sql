USE universidad;

/*6.     Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).*/
select p.* from persona p join alumno_se_matricula_asignatura asma ON p.id = asma.id_alumno JOIN asignatura a ON asma.id_asignatura = a.id JOIN grado g  on a.id_grado = g.id where g.nombre = 'Grado en ingenieria informatica (Plan 2015)' and p.sexo = 'M' and p.tipo = 'alumno';

/*7.     Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).*/
select distinct a.nombre from asignatura a join grado g on a.id_grado = g.id;

/*8.     Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.*/
SELECT p.apellido1, p.apellido2, p.nombre, d.nombre AS departamento
FROM persona p
JOIN profesor pr ON p.id = pr.id_profesor
JOIN departamento d ON pr.id_departamento = d.id
ORDER BY p.apellido1, p.apellido2, p.nombre;

/*9.     Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.*/
SELECT a.nombre, ce.anyo_inicio, ce.anyo_fin
FROM asignatura a
JOIN alumno_se_matricula_asignatura asma ON a.id = asma.id_asignatura
JOIN curso_escolar ce ON asma.id_curso_escolar = ce.id
JOIN persona p ON asma.id_alumno = p.id
WHERE p.nif = '26902806M';

/*10.  Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).*/
SELECT DISTINCT d.nombre
FROM departamento d
JOIN profesor pr ON d.id = pr.id_departamento
JOIN persona p ON pr.id_profesor = p.id
JOIN asignatura a ON p.id = a.id_profesor
JOIN grado g ON a.id_grado = g.id
WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)';

/*11.  Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
select distinct*/
SELECT DISTINCT p.*
from persona p
join alumno_se_matricula_asignatura asma on p.id = asma.id_alumno
join curso_escolar ce on asma.id_curso_escolar = ce.id
WHERE CONCAT(ce.anyo_inicio, '/', ce.anyo_fin) = '2018/2019' and p.tipo = 'alumno';

-- 12.  Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
select d.nombre, p.apellido1, p.apellido2, p.nombre from persona p inner join profesor pr on p.id = pr.id_profesor left join departamento d on d.id = pr.id_departamento order by d.nombre, p.apellido1, p.apellido2, p.nombre;

-- 13.  Devuelve un listado con los profesores que no están asociados a un departamento.

-- 14.  Devuelve un listado con los departamentos que no tienen profesores asociados.

-- 15.  Devuelve un listado con los profesores que no imparten ninguna asignatura.

-- 16.  Devuelve un listado con las asignaturas que no tienen un profesor asignado.

-- 17.  Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.