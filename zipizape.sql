CREATE DATABASE zipizape;
CREATE TABLE clientes (
  Idcliente int NOT NULL AUTO_INCREMENT,
  Apellido varchar(30) NOT NULL,
  Nombres varchar(30) NOT NULL,
  Direccion varchar(50) NOT NULL,
  Telefono varchar(20) NOT NULL 
)CONSTRAINT CLIENTESPk1 PRIMARY KEY (Idcliente);

INSERT INTO clientes VALUES ('001', 'mallini', 'jack', 'av. Los chanchitos', '952365147');

CREATE TABLE DocVenta (
  IdDocVenta int NOT NULL AUTO_INCREMENT,
  NroDocVenta char(8) NOT NULL,
  fecha datetime NOT NULL,
  TipoDocVenta char(10) NOT NULL,
  IdCliente int NOT NULL,
  ImporteTotal decimal(8,2) NOT NULL,
  Igv decimal(8,2) NOT NULL
)CONSTRAINT docventaPk1 PRIMARY KEY (IdDocVenta);

INSERT INTO DocVenta VALUES
('0001', '00000021', '2020-06-18','contado', '001', '25.5', '1.5');

CREATE TABLE Detalle_DocVenta (
  IdDocVenta int NOT NULL AUTO_INCREMENT,
  cantidad int NOT NULL,
  IdPublicacion int NOT NULL,
  PrecioVenta decimal(8,2) NOT NULL
)CONSTRAINT detalle_docVentaPk1 PRIMARY KEY (IdDocVenta, IdPublicacion);

INSERT INTO Detalle_DocVenta VALUES
('0001', '3', '001', '25.5');
CREATE TABLE Devoluciones (
  IdGuia int NOT NULL AUTO_INCREMENT,
  IdPublicacion int NOT NULL,
  cantidad int NOT NULL,
  Fecha datetime NOT NULL
)CONSTRAINT DevolucionPk1 PRIMARY KEY (IdGuia, IdPublicacion);
INSERT INTO Devoluciones VALUES ('001', '001', '3', '2020-06-18');

CREATE TABLE Distribuidoras (
  IdDistribuidora int NOT NULL AUTO_INCREMENT,
  RazonSocial varchar(50) NOT NULL,
  Direccion varchar(50) NOT NULL,
  Telefono varchar(20) NOT NULL
)CONSTRAINT DistribuidorPk1 PRIMARY KEY (IdDistribuidora);

INSERT INTO Distribuidoras VALUES
('0011', 'los mundos volteados', 'av. Las manticoras 543','954387654');

CREATE TABLE Publicaciones (
  IdPublicacion int NOT NULL AUTO_INCREMENT,
  Nombre varchar(50) NOT NULL,
	  Peridiocidad char(1) NOT NULL,
  IdEditorial int NOT NULL,
  IdDistribuidora int NOT NULL
)CONSTRAINT PublicacionPk1 PRIMARY KEY (IdPublicacion);

INSERT INTO Publicaciones VALUES ('0001', 'Cabello', 'T', '2541642', '0011');

CREATE TABLE DetalleGuiaRemision (
  IdPublicacion int NOT NULL AUTO_INCREMENT,
  IdGuia int NOT NULL,
  Cantidad int NOT NULL,
  Precio decimal(8,2) NOT NULL
)CONSTRAINT detalleguiaremision Pk1 PRIMARY KEY (IdPublicacion, IdGuia);

INSERT INTO DetalleGuiaRemision VALUES ('0001', '001', '3', '25.5');

CREATE TABLE Reservas (
  IdReserva int NOT NULL AUTO_INCREMENT,
  IdPublicacion int NOT NULL,
  fecha datetime NOT NULL,
  cantidad int NOT NULL
)CONSTRAINT ReservaPk1 PRIMARY KEY (IdReserva);

INSERT INTO Reservas VALUES
('0001', '0001', '2020-06-18', '3');
CREATE TABLE Editoriales (
  IdEditorial int NOT NULL AUTO_INCREMENT,
  Nombre varchar(50) NOT NULL,
  Nacionalidad varchar(50) NOT NULL
)CONSTRAINT EditorialPk1 PRIMARY KEY (IdEditorial);

INSERT INTO Editoriales VALUES ('2541642', 'cabello', 'Peruana');

CREATE TABLE GuiaRemision (
  IdGuia int NOT NULL AUTO_INCREMENT,
  NroGuia char(10) NOT NULL,
  Fecha datetime NOT NULL,
)CONSTRAINT DistribuidorPk1 PRIMARY KEY (IdGuia);

INSERT INTO Distribuidoras VALUES
('001', 'tercera línea, segundo piso', '2020-06-18');
