﻿USE [CursoASP]
GO
insert into Localidades values ('Chihuahua', NULL)
insert into Localidades values ('Chihuahua', 1)
insert into Localidades values ('Delicias', 1)
insert into Localidades values ('Nuevo Leon', NULL)
insert into Localidades values ('Monterrey', 4)

insert into Clientes (Nombre,Estado,Localidad,Adeudo,RFC,Moral) values ('Acme','Chihuahua','Chihuahua',70.0,'AX123423',0)
insert into Clientes (Nombre,Estado,Localidad,Adeudo,RFC,Moral) values ('Ramon','Chihuahua','Chihuahua',70.0,'AX123424',0)
insert into Clientes (Nombre,Estado,Localidad,Adeudo,RFC,Moral) values ('Sitek','Chihuahua','Chihuahua',70.0,'AX123425',0)
insert into Clientes (Nombre,Estado,Localidad,Adeudo,RFC,Moral) values ('Sitek','Chihuahua','Chihuahua',70.0,'AX123426',0)

insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 1','AAA101017S45',0,5)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor XX','AAA101017S46',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Acme 56','AAA101017S48',0,5)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 5','AAA101017S49',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 6','AAA101017S50',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 7','AAA101017S51',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 8','AAA101017S52',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 9','AAA101017S53',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 10','AAA101017S54',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 11','AAA101017S55',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 12','AAA101017S56',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 13','AAA101017S57',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Proveedor 14','AAA101017S58',0,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Prov Test','FIS080402J23',1,2)
insert into Proveedores (Nombre,RFC,Moral,localidad_id) values ('Test','OIPT2342J34',1,2)