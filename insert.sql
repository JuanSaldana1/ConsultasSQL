--17/12
--codigart, descrart, stockart, stockmin
--'007', 300, 'Estantería', 5, 1

/*insert into Articulos (codigart,preunart, descrart, stockart, stockmin)
values('0007', 300, (select  'Estantería' + descrart from Articulos
where codigart = '0001'), 5, 1);*/

--18/12
--copia de la tabla pedidos
/*use Jardineria
select * into NuevaPedidos from Pedidos;*/
--tabla llamada españa con todas las oficinas españolas
/*select pais into OficinasEspaña from Oficinas
where Pais = 'España'*/
/*select * into OfEspaña from Oficinas
where Pais = 'España';*/
/*use compras
select codigart, descrart into Resumen from Articulos;*/

--update

--use NBA
/*--actualizar el equipo de pau gasol que ha fichado por los knicks
UPDATE jugadores SET Nombre_equipo= 'Knicks', Peso =Peso+80
WHERE Nombre = 'Pau Gasol';
--Pau Gasol pesa más
UPDATE jugadores SET  Peso =Peso+80
WHERE Nombre = 'Pau Gasol';*/
--Pasar el peso a kilos
--update jugadores set Peso = Peso * 0.4535;
--BBDD Jardineria
use Jardineria
--pedidos he añadido un nuevo campo que se llama importe y que esta todo a valores minimos, lo quiero actualizar; tendria que sacar la información de la tabla detallePedidos
/*select SUM(cantidad*PrecioUnidad) from DetallePedidos join Pedidos
on DetallePedidos.CodigoPedido = Pedidos.CodigoPedido
group by Pedidos.CodigoPedido*/
update Pedidos set Importe = 
select SUM(cantidad*PrecioUnidad) from DetallePedidos join Pedidos
on DetallePedidos.CodigoPedido = Pedidos.CodigoPedido
group by Pedidos.CodigoPedido;

--Este está mal
/*update Pedidos set Importe = (cantidad*PrecioUnidad) from DetallePedidos join Pedidos
on DetallePedidos.CodigoPedido = Pedidos.CodigoPedido;*/
update Pedidos set Importe = (
	Select SUM(cantidad*PrecioUnidad) from DetallePedidos join Pedidos
	on DetallePedidos.CodigoPedido = Pedidos.CodigoPedido
	group by Pedidos.CodigoPedido
);

--Creando una tabla intermedia
--Actualizar los campos a la tabla intermedia
update Pedidos set importe = kk.importe from Pedidos join kk
on Pedidos.CodigoPedido = kk.CodigoPedido

--Crear tabla intermedia
Select SUM(cantidad*PrecioUnidad) as importe, Pedidos.CodigoPedido into kk from DetallePedidos join Pedidos
on DetallePedidos.CodigoPedido = Pedidos.CodigoPedido
group by Pedidos.CodigoPedido

--Comprobar tabla nueva
select * from kk

--Comprobar la tabla, hay errores a la hora de rellenar la tabla
select distinct codigoPedido from Pedidos 
where CodigoPedido NOT IN (
	select CodigoPedido from DetallePedidos
);
--Hemos calculado aquellos que tienen lineas de pedidos cuanto valen.
--los registros que no encuentra los pone null
