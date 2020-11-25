--1. Consultar todos los datos de los alumnos.
USE Alumnos_2014
SELECT * FROM Alumnos;
--2. Consultar los siguientes datos de alumnos: DNI, NOMBRE, APELLIDOS, CURSO, NIVEL y CLASE.
USE Alumnos_2014
SELECT dni, nombre, apellidos, curso, nivel, clase
FROM Alumnos;
--3. Consultar NOMBRE y APELLIDOS de todos los alumnos cuya POBLACIÓN sea ‘GUADALAJARA’.
USE Alumnos_2014
SELECT nombre, apellidos FROM Alumnos
WHERE poblacion = 'GUADALAJARA';
--4. Consultar el DNI, NOMBRE, APELLIDOS, CURSO, NIVEL, CLASE y edad de todos los alumnos ordenado por APELLIDOS y NOMBRE ascendentemente
USE Alumnos_2014
SELECT dni, nombre, apellidos, curso, clase,  DATEDIFF(YEAR, fecha_nac, GETDATE()) AS edad
FROM Alumnos
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
