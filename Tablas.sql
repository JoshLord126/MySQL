create table puestos(
idPuesto smallint primary key auto_increment,
puesto varchar(50));

create table clientes(
idCliente int primary key auto_increment,
nombres varchar(60),
apellidos varchar(60),
nit varchar(12),
genero bit,
telefono varchar(25),
correo_electronico varchar(45),
fechaingreso datetime);

create table empleados(
idEmpelado int primary key auto_increment,
nombres varchar(60),
apellidos varchar(60),
direccion varchar(80),
telefono varchar(25),
dpi varchar(15),
genero bit,
fecha_nacimiento date,
idPuesto smallint,
fecha_inicio_labores date,
fechaingreso datetime,
KEY `fk_puestos_empleados_idpuesto_idx` (`idPuesto`),
CONSTRAINT `fk_puestos_empleados_idpuesto` FOREIGN KEY (`idPuesto`) REFERENCES `puestos` (`idPuesto`) ON UPDATE CASCADE)
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table ventas(
idVenta int primary key auto_increment,
nofactura int,
serie char(1),
fechafactura date,
idCliente int,
idEmpleado int,
fechaingreso datetime);

create table ventas_detalle(
idVenta_detalle bigint primary key auto_increment,
idVenta int,
idProducto int,
cantidad varchar(45),
precio_unitario decimal(8,2));

create table productos(
idProducto int primary key auto_increment,
producto varchar(50),
idMarca smallint,
descripcion varchar(100),
imagen varchar(30),
precio_costo decimal(8,2),
precio_venta decimal(8,2),
existencia int,
fecha_ingreso datetime);

create table marcas(
idMarca smallint primary key auto_increment,
marca varchar(50));

create table compras(
idCompra int primary key auto_increment,
no_orden_compra int,
idProveedor int,
fecha_orden date,
fechaingreso datetime);

create table compras_detalle(
idCompra_detalle bigint primary key auto_increment,
idCompra int,
idProducto int,
cantidad int,
precio_costo_unitario decimal (8,2));

create table proveedores(
idProveedor int primary key auto_increment,
proveedor varchar(60),
nit varchar(12),
direccion varchar(80),
telefono varchar(25));
