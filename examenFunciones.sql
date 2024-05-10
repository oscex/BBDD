-- NOMBRE: 

# Examen sobre funciones SQL
use sakila;

-- FUNCIONES ARITMÉTICAS
/*
AVG() Calcula la media aritmética 
MAX() Devuelve el valor mayor 
MIN() Devuelve el valor menor 
SUM() Devuelve la suma
COUNT() Cuenta
*/

-- FUNCIONES DE CADENAS DE CARACTERES
/*
LOWER(c): Devuelve la cadena “c” con todas las letras convertidas a minúsculas.
UPPER(c): Devuelve la cadena “c” con todas las letras convertidas a mayúsculas.
LTRIM(c): Elimina los espacios por la izquierda de la cadena “c”.
RTRIM(c): Elimina los espacios por la derecha de la cadena “c”.
REPLACE(c, b, s): Sustituye en la cadena “c” el valor buscado “b” por el valor indicado en “s”.
REPLICATE(c, n): Devuelve el valor de la cadena “c” el número de veces “n” indicado.
CONCAT(str1,str2,...): Devuelve la cadena que resulta de concatenar los argumentos.
LEFT(c, n): Devuelve “n” caracteres por la izquierda de la cadena “c”.
RIGHT(c, n): Devuelve “n” caracteres por la derecha de la cadena “c”.
SUBSTRING(c, m, n): Devuelve una sub-cadena obtenida de la cadena “c”, a partir de la posición “m” y tomando “n” caracteres.
LENGTH(c): Tamaño de la cadena de caracteres.
*/

-- FUNCIONES DE FECHAS
/*
ADDDATE(date, INTERVAL expr unit), ADDDATE(expr,days), DATE_ADD(date, INTERVAL value unit): añade expr a una fecha   
CURRENT_DATE() / CURRENT_TIME () / CURTIME () /CURRENT_TIMESTAMP() / NOW(): Nos da la fecha / hora actual / fecha y hora actual 
DATE(fecha): Selecciona la fecha del parámetro (desechando la hora:minutos:segundos) 
DATEDIFF (fecha, fecha): Devuelve el número de días entre esas dos fechas. 
DATE_SUB (fecha, INTERVAL exprunit): Resta expr a una fecha
DAYNAME(fecha), DAYOFMONTH(fecha), DAYOFWEEK(fecha), DAYOFYEAR(fecha) 
SYSDATE(): La fecha y hora del sistema. 
TIMEDIFF('hh:mm:ss', 'hh:mm:ss'): Devuelve la diferencia entre dos horas 
DATEFORMAT (date, format): dar formato a una fecha.
*/

-- FUNCIONES DE CONVERSIÓN
/*
CONVERT(input_value, data_type):  convertir valores de un tipo de datos otro tipo de datos diferente
*/

-- 1- Saca el tiempo de duración media de todas las películas (length)
select avg(length) from film;

-- 2- Haz un listado de las veces que se repite el nombre (first name) de los actores en la tabla actor, junto con su longitud y ordénalo de manera ascendente 
select first_name, count(first_name) as numeroVeces, length(first_name) as longitud from actor group by first_name order by first_name asc;

-- 3- Sacar un listado con el nombre completo (first_name) y la antigüedad de cada cliente (create_date de customer). 
select first_name, datediff(sysdate(), create_date) as antigüedad from customer;

-- 4- En la tabla payment, se muestran los pagos realizados por cada cliente y qué empleado lo ha cobrado. 
-- Sacar un listado de lo que ha facturado cada empleado: mostrar el staff_id y el total facturado (amount).
select staff_id, count(amount) from payment group by staff_id;

-- 5- Sacar la misma información que antes pero añadiendo nombre y apellidos del empleado.
select staff.staff_id, staff.first_name, staff.last_name, count(payment.amount) from staff inner join payment on staff.staff_id = payment.staff_id group by staff.staff_id;


-- 6 - ¿Cuántos distritos hay? Se mostrará el distrito y la cuenta de ese distrito ordenado de más a menos distritos. 
-- Solo se mostrarán aquellos que tengan más de un distrito.  
     -- Un ejemplo de salida sería:
		-- Abu Dhabi 3 
        -- Aceh 2
select district, count(district) as numeroDistritos from address group by district having numeroDistritos > 1 order by numeroDistritos desc;


-- 7 - Sacar el número de clientes que tiene cada tienda de esta forma: store_id, número clientes
select store_id, count(customer_id) as numeroClientes from customer group by store_id;


-- 8 - Listar cada película y el número de actores que aparecen en cada película ordenados de más a menos. 
-- Debe aparecer el título en minúscula y el número de actores
select lower(film.title), count(film_actor.actor_id) as numeroActores from film inner join film_actor on film.film_id = film_actor.film_id group by film.title order by numeroActores desc;


-- 9 - Sacar una lista con la cantidad de películas que ha hecho cada actor(nombres y apellidos) y ordenar por el nombre y apellidos del actor.
select actor.first_name, actor.last_name, count(film_actor.film_id) as numeroPeliculas from actor inner join film_actor on actor.actor_id = film_actor.actor_id group by actor.first_name, actor.last_name order by actor.first_name, actor.last_name;



-- 10 - Usar JOIN para mostrar la cantidad recaudada (payment) de cada miembro de la empresa en agosto de 2005
-- Mostar: nombre, apellidos y la cantidad recaudada
select staff.first_name, staff.last_name, sum(payment.amount) as cantidadRecaudada from staff inner join payment on staff.staff_id = payment.staff_id where payment.payment_date between '2005-08-01' and '2005-08-31' group by staff.first_name, staff.last_name;
