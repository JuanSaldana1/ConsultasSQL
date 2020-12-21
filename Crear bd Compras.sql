CREATE DATABASE [compras]  ON (NAME = N'compras',
 FILENAME = N'C:\Archivos de programa\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\compras.mdf' , 
SIZE = 5MB,  MAXSIZE = 3000MB, FILEGROWTH = 10%) 
LOG ON (NAME = N'compras_log', 
FILENAME = N'C:\Archivos de programa\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\compras.LDF' ,
 SIZE = 1MB, FILEGROWTH = 10%)
COLLATE Modern_Spanish_CI_AS
GO
USE compras
GO

CREATE TABLE Proveedores (
  codigpro	  CHAR(4)    NOT NULL    CONSTRAINT id_pro PRIMARY KEY,
  cifpro      CHAR(12)   NOT NULL    CONSTRAINT u_cif UNIQUE,
  nombrpro    CHAR(30)   NOT NULL,
  direcpro	  CHAR(30)   NOT NULL,
  cpostpro	  CHAR(5)	 NOT NULL CHECK (cpostpro like '[0-9][0-9][0-9][0-9][0-9]'),
  localpro	  CHAR(20)   NOT NULL,
  telefpro	  CHAR(17)   NOT NULL,
  faxpro	  CHAR(17),
  emailpro    CHAR(25),   
  procepro	  CHAR(5)  NOT NULL CHECK (procepro in ('UE', 'No UE'))) 
GO

CREATE TABLE Articulos (
	codigart	CHAR(6)  NOT NULL    CONSTRAINT id_art PRIMARY KEY,
	descrart	CHAR(40) NOT NULL,
	preunart	DECIMAL(9,2)	 NOT NULL,
	stockart	INTEGER  NOT NULL check (stockart >=0),
	stockmin	INTEGER  NOT NULL check (stockmin >=0),
    fecbaja     DATE)
GO

CREATE TABLE Pedidos (
	numped 		INTEGER  	 NOT NULL   CONSTRAINT id_ped PRIMARY KEY,
	fechaped	DATE	     NOT NULL  DEFAULT getdate(),
	codigpro	CHAR(4)	  	 NOT NULL,
	ivaped		DECIMAL(4,1) NOT NULL CHECK (ivaped>0 and ivaped<100),
	fentrped	DATE		 NOT NULL,
           CONSTRAINT f_pro FOREIGN KEY (codigpro) REFERENCES Proveedores (codigpro),
           CONSTRAINT c_fecha CHECK (fechaped<=fentrped)) 

GO

CREATE INDEX FK_prop  ON Pedidos (codigpro)
GO

CREATE TABLE Lineas (
	numped		INTEGER		 NOT NULL,
	numlin		SMALLINT	 NOT NULL,
	codigart	CHAR(6)		 NOT NULL,
	unilin		DECIMAL(6,0) NOT NULL,
	preunlin	DECIMAL(9,2) NOT NULL,
	desculin	DECIMAL(4,1) NOT NULL CHECK (desculin>=0 and desculin<=100),
	totallin        AS ([preunlin] * [unilin] * (1-[desculin]/100.0)),	
          CONSTRAINT id_lin PRIMARY KEY (numped, numlin),
          CONSTRAINT f_ped FOREIGN KEY (numped) REFERENCES Pedidos (numped),
          CONSTRAINT f_art FOREIGN KEY (codigart) REFERENCES Articulos (codigart)) 

GO

CREATE INDEX FK_LineasArt  ON Lineas (codigart)

go
CREATE INDEX FK_LineasPed  ON Lineas (numped)
go
