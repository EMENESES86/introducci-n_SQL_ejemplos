/* Tabla1: Empresa
		id
		Nombre
		Dirección
Tabla2: Categoria
		id
		Nombre
		Descripción
		id_empresa
Tabla3: Producto
		id
		Nombre
		Descripción
		id_Categoria

Normalizar
Tipos de datos
# de caracteres
Relaciones
Ingresar 1 empresa 2 Categorías 2 Productos por cada categoría */

create database trabajo1;

use trabajo1;

create table empresa(
	id int primary key auto_increment,
	nombre varchar(100),
	direccion varchar(200)
);

use trabajo1;
create table categoria(
	id int primary key auto_increment,
	nombre varchar(100),
	direccion varchar(200),
	id_empresa int,
	FOREIGN KEY (id_empresa) REFERENCES empresa(id)
);

use trabajo1;
create table productos(
	id int primary key auto_increment,
	nombre varchar(100),
	descripcion varchar(200),
	id_categoria int,
	FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);