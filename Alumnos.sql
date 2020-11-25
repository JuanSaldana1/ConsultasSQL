--1. Consultar todos los datos de los alumnos.
USE Alumnos_2014
SELECT * FROM Alumnos;
--2. Consultar los siguientes datos de alumnos: DNI, NOMBRE, APELLIDOS, CURSO, NIVEL y CLASE.
USE Alumnos_2014
SELECT dni, nombre, apellidos, curso, nivel, clase FROM Alumnos;
--3. Consultar NOMBRE y APELLIDOS de todos los alumnos cuya POBLACIÓN sea ‘GUADALAJARA’.
USE Alumnos_2014
SELECT nombre, apellidos FROM Alumnos
WHERE poblacion = 'GUADALAJARA';
--4. Consultar el DNI, NOMBRE, APELLIDOS, CURSO, NIVEL, CLASE y edad de todos los alumnos ordenado por APELLIDOS y NOMBRE ascendentemente
USE Alumnos_2014
SELECT dni, nombre, apellidos, curso, clase,  DATEDIFF(YEAR, fecha_nac, GETDATE()) AS edad FROM Alumnos
ORDER BY apellidos, nombre ASC;
--5. Consultar aquellos DNI cuya fecha de nacimiento sea nula
USE Alumnos_2014
select * from Alumnos
WHERE fecha_nac IS NULL;
--6. Consultar todos los datos de los alumnos cuya fecha de nacimiento no sea nula.
USE Alumnos_2014
SELECT * FROM Alumnos
WHERE fecha_nac IS NOT NULL;
--7. Consultar el DNI, NOMBRE y APELLIDOS de todos aquellos alumnos que tengan entre sus apellidos el apellido ‘Pérez’.
USE Alumnos_2014
SELECT dni, nombre, apellidos FROM Alumnos
WHERE apellidos LIKE '%Pérez%';
--8. Consultar el DNI, NOMBRE, APELLIDOS, CURSO, NIVEL y CLASE de todos los alumnos cuya población sea alguna de las siguientes: ‘MARCHAMALO’, ‘CABANILLAS’ o ‘YUNQUERA’.
USE Alumnos_2014
SELECT dni, nombre, apellidos, curso, nivel, clase FROM Alumnos
Where poblacion IN ('MARCHAMALO', 'CABANILLAS', 'YUNQUERA');
--9. Consultar el DNI, NOMBRE, APELLIDOS, CURSO, NIVEL y CLASE de todos aquellos alumnos cuya edad está comprendida entre 17 y 20 años.
USE Alumnos_2014
SELECT dni,nombre,apellidos,curso,nivel,clase FROM Alumnos
WHERE DATEDIFF(YEAR,fecha_nac,GETDATE()) BETWEEN 17 AND 20;
--10. Obtener el DNI, NOMBRE, APELLIDOS, NIVEL y la media de faltas de los tres trimestres para aquellos alumnos de ‘ESO’ y ‘ESI’.
USE Alumnos_2014
SELECT dni,nombre,apellidos,nivel, ((faltas1+faltas2+faltas3)/3) AS media_faltas FROM Alumnos
WHERE nivel='ESO' OR nivel='ESI';
--11. Consultar los datos de los alumnos que tengan faltas con valor nulo.
USE Alumnos_2014
SELECT * FROM Alumnos
WHERE (faltas1 +faltas2 + faltas3) IS NULL;
--12. Obtener el DNI, NOMBRE, APELLIDOS y NIVEL de todos los alumnos que nacieron en el año 1988 y en el mes Marzo
USE Alumnos_2014
SELECT dni,nombre, apellidos,nivel FROM Alumnos
WHERE fecha_nac LIKE '1988-03%';
--13. Obtener en una columna el DNI, y en otra, la concatenación de las columnas NOMBRE y APELLIDOS, de todos los alumnos de la tabla ordenando descendentemente por DNI.
USE Alumnos_2014
SELECT dni, (nombre + ', ' + apellidos) AS Nombre_y_apellidos FROM Alumnos
ORDER BY dni DESC;
--14. Obtener el NOMBRE y APELLIDOS de todos los alumnos de cuarto de ‘ESO’ de la clase ‘B’ ordenados por APELLIDOS y NOMBRE ascendentemente.
USE Alumnos_2014
SELECT nombre, apellidos FROM Alumnos
WHERE curso = 4 AND nivel = 'ESO' AND clase = 'B'
ORDER BY apellidos, Nombre;
--15. Obtener el NOMBRE, APELLIDOS y el total de faltas de los tres trimestres de todos los alumnos de cuarto de ‘ESO’ de la clase ‘B’ ordenados por APELLIDOS y NOMBRE ascendentemente.
USE Alumnos_2014
SELECT nombre, apellidos, (faltas1 + faltas2 + faltas3) AS Total_faltas FROM Alumnos
WHERE curso = 4 AND clase = 'B'
ORDER BY apellidos, nombre ASC;
--16. Consultar el DNI, NOMBRE, APELLIDOS, CURSO, NIVEL, CLASE y edad de todos los alumnos ordenado por CURSO, NIVEL, CLASE ascendentemente y APELLIDOS descendentemente cuyo nivel no sea ni ‘ESO’ ni ‘BAC’.
Use Alumnos_2014
SELECT DNI, NOMBRE, APELLIDOS, CURSO, NIVEL, CLASE, DATEDIFF(YEAR, fecha_nac, GETDATE()) AS edad FROM Alumnos
where nivel NOT IN ('ESO','BAC')
ORDER BY curso, nivel, clase, apellidos DESC;
