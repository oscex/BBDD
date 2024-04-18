-- Ejercicio bancos.
USE bancos;

-- cuantos clientes tiene cada banco, mostrando el nombre del banco.
select bank.bank_name, count(accounts.user_id) from accounts inner join bank on accounts.bank_ID  = bank.bank_ID group by bank.bank_name;

-- seleccionas los dos primeros clientes y las cuentas que tienen un saldo inferior a 150000 ordenado de manera descendente.
select users.first_name, accounts.balance from accounts inner join users on accounts.user_id = users.user_id where accounts.balance < 150000.00 order by accounts.balance desc limit 2;

-- selecciona la suma de dinero realizada en todas las transacciones realizadas por cada cuenta
select accounts.account_num, sum(deposit.trans_amount) from deposit inner join accounts on deposit.account_num = accounts.account_num group by accounts.account_num;

-- el numero de transacciones que hubo en el año 2010
select trans_date, count(trans_id) from deposit where trans_date between '2010-01-01' and '2010-12-31' group by trans_date;

-- muestra los clientes que su nombre empiece por a y muestralos en mayusculas
select upper(first_name) from users where first_name like 'a%';


-- Ejercicio clasicsModels.
use ClassicModels;

-- lista los clientes que su nombre empieza por A y muestro solo los tres primeros caracteres de su nombre
select substring(customerName,1, 3) from customers where customerName like 'A%';

-- Calcular el precio promedio de compra por línea de producto:
SELECT productLine, AVG(buyPrice) AS precioPromedioCompra FROM Products GROUP BY productLine;

-- muestra el total de dinero recaudado con cada producto
SELECT productName, SUM(quantityOrdered * priceEach) AS totalVentas FROM OrderDetails JOIN Products ON OrderDetails.productCode = Products.productCode GROUP BY productName;

-- muestrame el producto mas caro
SELECT productLine, productName, MAX(buyPrice) AS precioMaximo FROM Products GROUP BY productLine;

-- lista la cantidad de dinero recibido por cada pais
SELECT customers.country, SUM(payments.amount) AS totalPagos FROM Customers JOIN Payments ON Customers.customerNumber = Payments.customerNumber GROUP BY Customers.country;


-- Ejercicio libreria
use libreria;

-- muestra las ventas mensuales de el año actual 
SELECT MONTH(fecha) AS mes, SUM(total) AS ventas_totales FROM venta WHERE YEAR(fecha) = YEAR(CURDATE()) GROUP BY MONTH(fecha);

-- muestra las ventas totales de cada dia de la semana
SELECT DAYNAME(fecha) AS dia_semana, SUM(total) AS ventas_totales FROM venta GROUP BY DAYNAME(fecha);

-- muestra las ventas totales de cada año
SELECT YEAR(fecha) AS año, COUNT(*) AS total_ventas FROM venta GROUP BY YEAR(fecha);

-- muestra el producto con mas publicaciones
SELECT tipo.idtipo, tipo.descripcion, COUNT(*) AS total_publicaciones FROM tipo JOIN publicacion ON tipo.idtipo = publicacion.idtipo GROUP BY tipo.idtipo, tipo.descripcion ORDER BY total_publicaciones DESC LIMIT 1;

-- muestra el precio maximo y el minimo de las publicaciones para cada tipo de producto
SELECT idtipo, MIN(precio) AS precio_minimo, MAX(precio) AS precio_maximo FROM publicacion GROUP BY idtipo;


-- Ejercicio sakila

use sakila;

-- muestrame la ultima actualizacion de la lista de direccion.
SELECT MAX(last_update) AS ultimaActualizacion FROM address;

-- muestrame la cantidad de peliculas por cada categoria.
SELECT category.name AS categoria, COUNT(film_category.film_id) AS cantidad_peliculas FROM category LEFT JOIN film_category ON category.category_id = film_category.category_id GROUP BY category.name;

-- lista la cantida de clientes por cada tienda
SELECT store_id, COUNT(customer_id) AS totalClientes FROM customer GROUP BY store_id;

-- muestra la pelicula mas antigua
SELECT MIN(release_year) AS lanzamientoMasAntiguo FROM film;

-- muestra la cantidad de actores por cada pelicula
SELECT film_id, COUNT(actor_id) AS cantidad_actores FROM film_actor GROUP BY film_id;