/* II Examen Parcial: Ileana Romero G.

Crear el query para la base de datos

Crear tablas 1- usuarios (ID Usuario, nombre, correo electronico, telefono)
2. Registro de equipós a reparar (equipoid, tipo equipo, modelo usuario ID)
3. TECNICOS
4. ASIGNACIONES 
5. REPARACIONES 
6. DETALLES DE REPÁRACION
*/

CREATE DATABASE MANT_EQUIPOS
GO 

USE MANT_EQUIPOS
GO

CREATE TABLE registro_usuarios (
  UsuarioID INT identity (1,1) PRIMARY KEY,
  NOMBRE VARCHAR(50) NOT NULL,
  CORREOELECTRONICO VARCHAR(50),
  TELEFONO VARCHAR(20),
)

CREATE TABLE registro_equipos (
  equipoid INT IDENTITY (2,2)PRIMARY KEY,
  tipoequipo VARCHAR(50) NOT NULL,
  modelo VARCHAR(50),
  usuarioID INT NOT NULL,
  CONSTRAINT FK_usuarioID FOREIGN KEY (usuarioID) REFERENCES registro_usuarios(UsuarioID),
)

CREATE TABLE registro_tecnicos (
  tecnicoID INT IDENTITY (3,3) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  especialidad VARCHAR(50),
)

CREATE TABLE registro_reparaciones (
  ReparacionID INT identity (5,5) PRIMARY KEY,
  equipoID INT,
  fecha_solicitud DATETIME CONSTRAINT fecha_regis DEFAULT GETDATE(),
  estado VARCHAR(50),
  CONSTRAINT FK_equipoID FOREIGN KEY (equipoID) REFERENCES registro_equipos(equipoid),
)

CREATE TABLE registro_asignaciones (
  asignacionID INT identity (10,10) PRIMARY KEY,
  fechaasignacion DATETIME CONSTRAINT fecha_asig DEFAULT GETDATE(),
  ReparacionID INT,
  tecnicoID INT,
  CONSTRAINT FK_ReparacionID FOREIGN KEY (ReparacionID) REFERENCES registro_reparaciones(ReparacionID),
  CONSTRAINT FK_tecnicoID FOREIGN KEY (tecnicoID) REFERENCES registro_tecnicos(tecnicoID),
)

CREATE TABLE registro_detalles_reparacion (
  detalleID INT identity (6,6) PRIMARY KEY,
  reparacionID INT,
  descripcion VARCHAR(255),
  fechainicio DATETIME CONSTRAINT fECHA_ini DEFAULT GETDATE(),
  fechafinal DATE,
  FOREIGN KEY (reparacionID) REFERENCES registro_reparaciones(ReparacionID),
);