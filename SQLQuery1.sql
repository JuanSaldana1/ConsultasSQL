select Empleados
where codigoOficina in (
	select codigoOficina from Oficinas
	where Ciudad = 'Barcelona')
	and codigoEmpleado not in (
		select codigoEmpleadoRepVentas from Clientes
	);

insert into empleados select * from EmpleadosBarcelona
where CodigoEmpleadoRepVentas from Clientes
)