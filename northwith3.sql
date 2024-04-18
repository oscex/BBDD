use northwind;
-- Sacar un listado de los proveedores y el número de productos que nos suministra cada uno
select SupplierID, count(productId) as numeroProductos from Products group by SupplierId;

-- Sacar un listado de los nombres de los barcos y cuantas veces los hemos utilizado para llevar a cabo envíos
select s.CompanyName, count(o.ShipVia) as vecesUtilizados from orders o inner join shippers s on s.ShipperID = o.ShipVia group by s.ShipperId;

-- contar el numero de empleados que hay por ciudad
select city, count(EmployeeId) from Employees group by city;

-- Sacar un listado de los puestos de trabajo (title) por ciudad
select city, count(title) from Employees group by city;

-- Nota: observad la diferencia entre agrupar por título y agrupar por título y ciudad
select city, title, count(title) from Employees group by city, title;

-- Sacar un listado de cuantos pedidos se envían a cada país
select Shipcountry, count(OrderId) as numeroPedidos from orders group by ShipCountry;

-- Sacar un listado de cuantos pedidos se envían a cada ciudad
select Shipcity, count(OrderID) as numeroPedidos from orders group by Shipcity;

-- Sacar un listado de fechas  y cuantos pedidos se han hecho en cada fecha (orderdate)
select orderDate, count(orderID) as numeroPedidos from orders group by orderDate;
-- sacar un listado con el número de pedidos que se hacen a cada proveedor (supplier)
select suppliers.supplierId, count(orderdetails.orderID) as numerPedidos from orderdetails inner join products on products.productID = orderdetails.productID inner join suppliers on suppliers.supplierID = products.supplierID  group by suppliers.supplierID;

-- sacar un listado con el número de pedidos que ha hecho cada empleado (sacar el listado con el formato nombre empleado - número pedidos)
select employees.firstname as nombreEmpleado, count(orders.orderID) as numeroPedidos from orders inner join employees on orders.employeeID = employees.employeeID group by employees.firstname;

-- Sacar un listado del número de productos que tienen el mismo precio
select unitPrice, count(productID) as numeroProductos from products group by unitPrice;
-- Sacar un listado con el número de proveedores por país
select country, count(supplierID) as numeroProvdores from suppliers group by country;
-- Hacer un listado del número de pedidos por fecha
select orderdate, count(orderId) as numeroPedidos from orders group by orderdate;
-- Hacer un listado de las cantidades que se han vendido de cada producto
select productid, sum(quantity) as cantidadProductos from orderdetails group by productID; 
select * from orderdetails;
-- Obtener un listado de la cantidad de productos que nos suministra cada proveedor diferenciando por categoría
select
-- Listar las categorías de productos incluyendo el número de productos en stock en cada categoría.

-- Obtener un listado de las cantidades vendidas a cada cliente especificando a su vez por categorías (más adelante)

-- Sacar un listado el la suma de los fletes (freigth) gastados en cada transportista