create database ProyectoKamil

use ProyectoKamil 

create table Empleados (
IdEmpleado int identity primary key not null,
Nombre varchar (16) not null,
ApellidoPat varchar(16) not null,
ApellidoMat varchar(16) not null,
Rfc varchar (13) not null,
IdCentro varchar (6) not null ,
IdPuesto varchar (8) not null,
Decripcion text,
Directivo int not null,
constraint fk_IdPuesto foreign key (IdPuesto) references Puestos (IdPuesto),
constraint fk_IdCentro foreign key (IdCentro) references Centros (IdCentro),
);

create table Puestos (
IdPuesto varchar (8) primary key not null,
Puesto varchar (8) not null,
Descripcion text,
)

create table Centros (
IdCentro varchar (6) primary key not null,
NombreCentro varchar (16) not null,
Ciudad varchar (16) not null,
)

create table Directivos(
IdEmpleado int not null,
IdCentro varchar (6) not null,
NombreCentro varchar(16) not null,
Prestacion int not null,
constraint fk_D_IdEmpleado foreign key (IdEmpleado) references Empleados (IdEmpleado),
constraint fk_D_IdCentro foreign key (IdCentro) references Centros (IdCentro),
)