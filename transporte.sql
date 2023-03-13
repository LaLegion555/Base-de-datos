CREATE DATABASE transporte;
CREATE TABLE ciudad (
 `idciudad` char(2) NOT NULL,
 `nombre` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO ciudad VALUES
('01', 'trujillo'),
('02', 'lima'),
('03', 'chiclayo');
CREATE TABLE ruta (
 `idruta` char(3) NOT NULL,
 `idciudadorigen` char(2) NOT NULL,
 `idciudaddestino` char(2) NOT NULL,
 `distancia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO ruta VALUES
('001', '01', '02', 540),
('002', '01', '03', 190);
¿
CREATE TABLE `servicio` (
 `idservicio` char(2) NOT NULL,
 `descripcion` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO servicio VALUES
('01', 'Económico'),
('02', 'Especial'),
('03', 'Buscama'),
('04', 'Vip');
CREATE TABLE tarifa (
 `idtarifa` char(4) NOT NULL,
 `idruta` char(3) NOT NULL,
 `idservicio` char(2) NOT NULL,
 `horasalida` char(5) NOT NULL,
 `costopasaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO tarifaVALUES
('0001', '001', '02', '', 55),
('0002', '001', '03', '', 75);
ALTER TABLE `ciudad`
 ADD PRIMARY KEY (`idciudad`);
ALTER TABLE `ruta`
 ADD PRIMARY KEY (`idruta`);
ALTER TABLE `servicio`
 ADD PRIMARY KEY (`idservicio`);
ALTER TABLE `tarifa`
 ADD PRIMARY KEY (`idtarifa`);
COMMIT;
