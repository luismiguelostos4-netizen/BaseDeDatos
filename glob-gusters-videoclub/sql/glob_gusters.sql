-- Base de Datos Relacional Glob-Gusters Video-Club
-- Autor: Luis Miguel Ostos Cortes
-- Fecha: 2026-25-09

-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS `glob_gusters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `glob_gusters`;

-- Eliminación de la base de datos
-- DROP DATABASE IF EXISTS `glob_gusters`;

CREATE TABLE Actor (
    ActorID int PRIMARY KEY,
    Nombre varchar(255)NOT NULL,
    Apellido varchar(255),
    Address varchar(255),
    City varchar(255),
    NacionalidadID int FOREIGN KEY,
    Sexo varchar(50)
);

CREATE TABLE Reparto (
    RepartoID int PRIMARY KEY
    ActorID int FOREIGN KEY,
    PeliculaID int FOREIGN KEY,
    Rol int,
);

CREATE TABLE Nacionalidad (
    NacionalidadID int PRIMARY KEY,
    NombreNac varchar(255)
);
CREATE TABLE Director (
    DirectorID int PRIMARY KEY,
    NacionalidadID int FOREIGN KEY,
    Nombre varchar(255)
    Apellido varchar(255)
);
CREATE TABLE Pelicula (
    PeliculaID int PRIMARY KEY,
    DirectorID int FOREIGN KEY,
    NacionalidadID int FOREIGN KEY,
    Titulo varchar(255)
    Fecha DATE
    ProductoraID int FOREIGN KEY,  
);

CREATE TABLE Productora (
    ProductoraID int PRIMARY KEY,
    Nombre varchar(255)
);

CREATE TABLE Cliente (
    ClienteID int PRIMARY KEY,
    ClienteDNI int Foreign KEY,
    Nombre varchar(255),
    Direccion varchar(255),
    Telefono varchar(50),
);

CREATE TABLE Renta(
    RentaID int PRIMARY KEY,
    ClienteID int FOREIGN KEY,
    Inicia DATE,
    Termina DATE,
);
CREATE TABLE EjemplarRenta(
    EjemplarID int Foreign KEY,
    RentaID int Foreign Key,
    Entrega DATE,
);
CREATE TABLE Ejemplar(
    EjemplarID int PRIMARY KEY,
    EstadoID int Foreign Key,
    PeliculaID int Foreign Key,
);
CREATE TABLE Estado (
    EstadoID int PRIMARY KEY,
    NombreEstado varchar(255)
);
    

