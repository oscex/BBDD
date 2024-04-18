use northwind;
-- Contar el número de líneas por pedido (de la tabla orderdetails)
select orderId, count(orderId) as numeroPedidos from orderdetails group by orderId;

-- Calcular el número de dinero gastado en cada pedido
select orderId, count(UnitPrice) as dineroGastado from orderdetails group by orderId;
select orderID, sum((UnitPrice* quantity) - Discount) as dineroGastado from orderdetails group by orderId;
-- Hacer una lista del número de clientes de cada país
select Country, count(customerId) as numeroClientes from customers group by Country;

-- Ordenar la lista anterior de forma descendente
select Country, count(customerID) as numeroClientes from customers group by Country order by numeroClientes desc;

-- Hacer un listado del número de pedidos por cliente 
select Contac

-- contar el número de pedidos por cliente de los clientes de londres


-- Ordenar la lista anterior por orden de pedidos (de más a menos)


-- En la tabla empleados Employees tenemos el puesto que ocupa cada empleado. Necesitamos un listado del número de personas que ocupan cada puesto