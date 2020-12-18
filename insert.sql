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
