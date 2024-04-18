use northwind;
-- Sacar un listado en el que se vea el número de lineas que consta cada pedido
select orderId, count(productID) as numeroLineas from orderdetails group by orderID;
-- Sacar un listado con los pedidos que tengan más de 4 elementos.
select orderId, count(productID) as numeroLineas from orderdetails group by orderID having count(productID) > 4;
-- Sacar un listado con el número de pedidos por cliente con más de 10 pedidos
select customerID, count(orderId) as numeroPedidos from orders group by customerID having count(orderid) > 10;
-- Ordenar el anterior listado de forma descendente
select customerID, count(orderId) as numeroPedidos from orders group by customerID having count(orderid) > 10 order by numeroPedidos desc;
-- Sacar un listado de todos los nombres de los proveedores en mayúsculas
select upper(companyname) from suppliers;
-- Obtener el mismo listado en mínúsculas
select lower(companyname) from suppliers;
-- Obtener el Apellido de los empleados y una columna con el número de caracteres de dicho empleados
select lastname, length(lastname) as numroCaracteres from employees;
-- Obtener un listado de los nombres de todos productos junto a una columna que muestre los primeros 3 caracteres de dicho nombre
select ProductName, substring(productname, 1, 3) as productos from products;
-- Sacar un listado las fechas de pedidos y junto a ella una columna que se le haya añadido 10 días a esta fecha 
select orderdate, date_add(orderdate, interval 10 day) as diezDiasMas from orders;
-- En NorthWind están muy preocupados por el retraso que están sufriendo los pedidos, por tanto el CEO quiere saber el tiempo que toma cada pedido y qué empleado lo ha atendido
select employees.FirstName, datediff(orders.shippeddate, orders.orderdate) from orders inner join employees on orders.EmployeeID = employees.employeeID;
-- Sacar un listado de los pedidos junto con el día de la semana que se hicieron (nota si queremos que la BBDD nos de los resultados de estas funciones en español: SET lc_time_names = 'es_MX';) (ver https://dev.mysql.com/doc/refman/8.0/en/locale-support.html)
select orderID, dayname(orderdate) from orders;
-- Obtener un listado de las cantidades pedidas por mes (agruparlas por mes y año)
select monthname(orderdate) as mes, count(orderID) as numeroDePedidos from orders group by mes;
-- Mostrar las órdenes de compra entre las fechas 01/01/1997 al 15/07/1997 
select orderId from orders where orderDate between '01/01/1997' and '15/07/1997';
select * from orders;
-- Mostrar las órdenes de compra hechas en el año 1997, que pertenecen a los empleados con códigos 1 ,3 ,4 ,8

-- El CEO quiere hacer un estudio de cómo influyen las edades de los empleados con sus ventas. Nos pide sacar un listado con los siguientes datos nombreEmpleado, edad, ventas