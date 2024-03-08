use jardineria;

select * from clientes;

select * from detallepedidos;

select * from pagos;

select c.NombreCliente, c.Pais, c.Fax, c.ApellidoContacto, p.FechaPago from clientes C, pagos P where C.codigoCliente = P.codigoCliente and fechaPago like '%2008%';

select * from clientes c inner join pagos on c.codigoCliente = p.codigoCliente where fechaPago like '%2008%';

select * from clientes c natural join pagos p where fechaPago like '%2008%';

select * from pedidos p inner join clientes c on p.CodigoCliente like c.cpdigoCliente;

slelect E.Nombre as 'empleado', d.nombreDpto as 'departamento' from empleados E left join Departamento where 