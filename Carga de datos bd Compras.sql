--- Carga de datos en BD Compras ----
USE compras
INSERT INTO Articulos (codigart,descrart,preunart,stockart,stockmin ) VALUES 
 ('0001','MESA OFICINA 90x1,80',225,100,1),
 ('0002','SILLA ERGONOMIC MOD. MX',120,25,1),
 ('0003','ARMARIO DIPLOMATIC',300,2,1),
 ('0004','ARCHIVADOR MOD. TR',180,3,1);
 
 INSERT INTO  proveedores  ( codigpro , cifpro , nombrpro , direcpro , cpostpro ,  localpro  , faxpro ,telefpro, emailpro , procepro ) VALUES 
 ('P001','A39184215','Bau Pi, Pablo','Alta 3, 2º','39390','Santander','(34) 942 223 344','(34) 942 223 345','mailto:baupi@eresmas.es','UE'),
 ('P002','A48162311','Zar Luna, Ana','Ercilla 22, 1º','48002','Bilbao','(34) 947 865 434','(34) 947 865 413','mailto:zarana@yahoo.es','UE'),
 ('P003','B28373212','Gras León, Luz','Pez 14, 5º dcha.','28119','Madrid','(34) 916 677 889','(34) 916 677 829',NULL,'UE'),
 ('P004','B85392314','Gil Laso, Luis','Uría 18, 2º','85223','Oviedo','(34) 952 345 678','(34) 952 345 6632',NULL,'UE');

 INSERT INTO  pedidos  ( numped , codigpro , fechaped , ivaped , fentrped ) VALUES 
 (1,'P001','22-05-2010',18,'16-06-2010'),
 (2,'P002','10-06-2010',18,'15-08-2010'),
 (3,'P003','15-10-2010',18,'15-12-2010'),
 (4,'P001','13-08-2010',18,'10-09-2010');
 
 
 INSERT INTO  lineas  ( numped , numlin , codigart , unilin , preunlin , desculin ) VALUES 
 (1,1,'0001',1,220,0),
 (1,2,'0003',2,295,0),
 (2,1,'0002',3,120,2),
 (2,2,'0003',2,300,3),
 (2,3,'0002',5,120,0),
 (3,1,'0002',1,110,0),
 (4,1,'0002',4,120,0),
 (4,2,'0004',10,180,0);