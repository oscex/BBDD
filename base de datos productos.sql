use productos;
-- 1. Selecciona los nombres de todos los productos de la tienda.
select name from products;

-- 2. Selecciona los nombres y los precios de todos los productos de la tienda.
select name, price from products;

-- 3. Selecciona el nombre de los productos con un precio menor o igual a $200.
select name from products where Price <= '200';

-- 4. Selecciona todos los productos con un precio entre $60 y $120.
select * from products where price between 60 and 120;

-- 5. Selecciona el nombre y el precio en centavos (es decir, el precio debe multiplicarse por 100).
select name, price * 100 from products;

-- 6. Calcula el precio promedio de todos los productos.
select avg(price) from products;

-- 7. Calcula el precio promedio de todos los productos con código de fabricante igual a 2.
select avg(price) from products where Manufacturer = 2;

-- 8. Calcula el número de productos con un precio mayor o igual a $180.
select count(name) from products where price >= 180;

-- 9. Selecciona el nombre y el precio de todos los productos con un precio mayor o igual a $180 y ordena primero por precio (en orden descendente) y luego por nombre (en orden ascendente).
select name, price from products where price >= 180 order by price desc;

-- 10. Selecciona todos los datos de los productos, incluidos todos los datos del fabricante de cada producto.
select * from products, manufacturers;

-- 11. Selecciona el nombre del producto, el precio y el nombre del fabricante de todos los productos.
select name, price, Manufacturer from products;

-- 12. Selecciona el precio promedio de los productos de cada fabricante, mostrando solo el código del fabricante.
select m.code, avg(price) from products p inner join manufacturers m on p.Manufacturer = m.code;

-- 13. Selecciona el precio promedio de los productos de cada fabricante, mostrando el nombre del fabricante.
SELECT Manufacturers.Name AS 'Nombre del fabricante', AVG(Price) AS 'Precio promedio' FROM Products JOIN Manufacturers ON Products.Manufacturer = Manufacturers.Code GROUP BY Manufacturer;

-- 14. Selecciona los nombres de los fabricantes cuyos productos tienen un precio promedio mayor o igual a $150.

-- 15. Selecciona el nombre y precio del producto más económico.

-- 16. Selecciona el nombre de cada fabricante junto con el nombre y el precio de su producto más caro.

-- 17. Selecciona el nombre de cada fabricante que tenga un precio promedio superior a $145 y contenga al menos 2 productos diferentes.

-- Mostrar: nombre fabricante, precio promedio y artículos diferentes

