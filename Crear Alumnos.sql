CREATE DATABASE Alumnos_2014;
GO
USE Alumnos_2014;
CREATE TABLE Alumnos
(
  DNI	        VARCHAR(10),
  nombre	VARCHAR(15),
  apellidos	VARCHAR(20),
  fecha_nac	DATE,
  direccion	VARCHAR(20),
  poblacion	VARCHAR(20),
  provincia	VARCHAR(20),
  curso	        INT,
  nivel	        VARCHAR(3),
  clase	        CHAR(1),
  faltas1	INT,
  faltas2	INT,
  faltas3	INT
 ) ;
INSERT INTO Alumnos VALUES('123456789','Juan', 'Cabello Panzano', '1990-08-16', 
 'C/Félix Fernández 12','BERROCALEJO', 'CACERES', 3, 'ESO', 'A', 0,0,0 );
INSERT INTO Alumnos VALUES('123456788','Julia', 'Cabello Panzano', '1990-08-16', 
 'C/Félix Fernández 12','BERROCALEJO', 'CACERES', 3, 'ESO', 'A', 4,0,2 );
INSERT INTO Alumnos VALUES('123456787','María', 'Martín Pérez', '1989-12-16', 
 'C/Doctor Vazquez 33','GUADALAJARA', 'GUADALAJARA', 4, 'ESO', 'B', 1,0,0 );
INSERT INTO Alumnos VALUES('123456786','Manuel', 'Gómez Pérez', '1988-07-06', 
 'C/Segovia 23','MARCHAMALO', 'GUADALAJARA', 1, 'ESI', 'A', NULL,0,0 );
INSERT INTO Alumnos VALUES('123456780','Miguel', 'Fernández Gil', '1988-03-11', 
 'C/Las Cañas 7B','YUNQUERA', 'GUADALAJARA', 1, 'ESI', 'A', 3,0,0 );
INSERT INTO Alumnos VALUES('123456700','Esther', 'Alía Ramos', NULL, 
 'C/Pilón 10','YUNQUERA', 'GUADALAJARA', 2, 'ESI', 'A', 3,7,2 );
