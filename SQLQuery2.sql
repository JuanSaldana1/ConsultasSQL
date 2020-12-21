--insertar un nuevo equipo cai

--Select equipos.Nombre, equipos.Division, equipos.Conferencia, equipos.Ciudad into cai from equipos;
insert into equipos(Nombre, Ciudad, conferencia, Division)
 values ('CAI', 'Zaragoza', NULL, NULL);
--borrar equipos que no hayan jugado ningun partido
delete equipos
where Nombre not in (
	select equipo_local from partidos
) and Nombre not in (
	select equipo_visitante from partidos	
);