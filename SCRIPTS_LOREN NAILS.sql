CREATE DATABASE Loren_Nails;
USE Loren_Nails;

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT NOT NULL PRIMARY  KEY,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    num_identidad INT NOT NULL,
    fecha_expe_cc DATETIME,
    correo VARCHAR (70) UNIQUE,
    direccion VARCHAR (70) NOT NULL,
    telefono VARCHAR (50) NOT NULL,
    id_Tipo_Usuario INT,
    id_Tipo_Documento INT,
    FOREIGN KEY (id_tipo_usuario)
    REFERENCES tipo_usuario (id_Tipo_ususario),
    FOREIGN KEY (id_Tipo_Documento)
    REFERENCES tipo_documento (id_tipo_documento) 
); 

CREATE TABLE Tipo_documento (
    id_tipo_documento INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    descripcion VARCHAR (70) NOT NULL
);

CREATE TABLE Ubicacion (
    id_Ubicacion INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    direccion VARCHAR (70) NOT NULL,
    referencia VARCHAR (50) NOT NULL,
    id_Usuario INT,
    FOREIGN KEY (id_usuario)   REFERENCES Usuario (id_Usuario)
);

CREATE TABLE Tipo_Usuario (
    id_Tipo_Usuario INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    descripcion VARCHAR (50) NOT NULL
);

CREATE TABLE Factura_cabeza (
    id_Factura_cabeza INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    documento_factura VARCHAR (70) NOT NULL, 
    numero_factura INT,
    fecha DATETIME,
    total INT 
);

CREATE TABLE Factura_detalle (
    id_Factura_detalle INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cantidad INT,
    subtotal VARCHAR (70) NOT NULL,
    id_factura_detalle INT,
    id_servicios INT,
    FOREIGN KEY (id_factura_detalle) REFERENCES Factura_detalle (id_Factura_detalle),
    FOREIGN KEY (id_Servicios) REFERENCES Servicios(id_Servicios)
);

CREATE TABLE Agenda (
   id_Agenda INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
   fecha DATETIME,
   id_Usuario INT,
   id_Ubicacion INT,
   id_Horarios INT,
   id_Dias INT,
   FOREIGN KEY (id_Usuario) REFERENCES id_usuario (id_usuario),
   FOREIGN KEY (id_ubicacion) REFERENCES id_ubicacion (id_ubicacion),
   FOREIGN KEY (id_Horarios) REFERENCES id_horarios (id_Horarios),
   FOREIGN KEY (id_Dias) REFERENCES id_dias (id_Dias)
 
);

CREATE TABLE Servicios (
    id_Servivios INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre_servicio VARCHAR (50) NOT NULL,
    descripcion VARCHAR (70) NOT NULL,
    precio INT
);
CREATE TABLE Catalogo (
    id_Catalogo INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    descripcion VARCHAR (70) NOT NULL,
    imagenes VARCHAR (50) NOT NULL
);

CREATE TABLE Categoria (
    id_Categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR (70) NOT NULL
);

CREATE TABLE Horarios (
    id_Horarios INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    disponibilidad VARCHAR (50) NOT NULL
);

CREATE TABLE Dias (
    id_Dias INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    disponibilidad VARCHAR(50) NOT NULL
);
    