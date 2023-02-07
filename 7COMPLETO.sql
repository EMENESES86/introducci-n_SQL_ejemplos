/* Ejercicio completo de SQL sin normalizar */
create database SQL_ACADEMICO_COMPLETO;

use SQL_ACADEMICO_COMPLETO;

create table campus(
	id int primary key auto_increment,
	nombre varchar(100),
	direccion varchar(200)
);

use SQL_ACADEMICO_COMPLETO;
create table carrera(
	id int primary key auto_increment,
	codigo varchar(100),
	nombre varchar(200),
	id_campus int,
	FOREIGN KEY (id_campus) REFERENCES campus(id)
);

use SQL_ACADEMICO_COMPLETO;
create table materia(
	id int primary key auto_increment,
	codigo varchar(100),
	nombre varchar(200),
	id_carrera int,
	FOREIGN KEY (id_carrera) REFERENCES carrera(id)
);

/* ----------------------------------------------------- */
/* insert */
/* insert campus */
use SQL_ACADEMICO_COMPLETO;
INSERT INTO campus
VALUES ("1","Norte","Quito");

use SQL_ACADEMICO_COMPLETO;
INSERT INTO campus(id,nombre,direccion)
VALUES (1,"Norte","Quito"),
(2,"Sur","Quito");


/* ----------------------------------------------------- */
/* insert carrera */
use SQL_ACADEMICO_COMPLETO;
INSERT INTO carrera
VALUES ("1","CDS","CARRERA DE DESARROLLO DE SOFTWARE",2);

use SQL_ACADEMICO_COMPLETO;
INSERT INTO carrera(id,codigo,nombre,id_campus)
VALUES (1,"CDS","CARRERA DE DESARROLLO DE SOFTWARE",2),
(2,"CMK","CARRERA DE MARKETING",1);


/* ----------------------------------------------------- */
/* insert materias */
use SQL_ACADEMICO_COMPLETO;
INSERT INTO materia
VALUES ("","CDS_POO1","PROGRAMACION ORIENTADA A OBJETOS II","1");

use SQL_ACADEMICO_COMPLETO;
INSERT INTO materia(id,codigo,nombre,id_carrera)
VALUES (1,"CDS_POO1","PROGRAMACION ORIENTADA A OBJETOS II",1),
(2,"CMK_INF","INFORMATICA",2);


/* Consultas */

/* TODO */
use SQL_ACADEMICO_COMPLETO;
SELECT * FROM campus

use SQL_ACADEMICO_COMPLETO;
SELECT * FROM carrera

use SQL_ACADEMICO_COMPLETO;
SELECT * FROM materia

/* Consulta especifica*/
use SQL_ACADEMICO_COMPLETO;
SELECT nombre, direccion FROM campus

/* ----------- */
use SQL_ACADEMICO_COMPLETO;
SELECT nombre, direccion FROM campus where nombre="norte"

use SQL_ACADEMICO_COMPLETO;
SELECT nombre, direccion FROM campus where nombre like 'n%' #Busca en nombre los que inician con n

use SQL_ACADEMICO_COMPLETO;
SELECT nombre, direccion FROM campus where nombre like '%r' #Busca en nombre los que termina con r

use SQL_ACADEMICO_COMPLETO;
SELECT nombre, direccion FROM campus where nombre like '%r%' #Busca en nombre los que contengan la letra r


/* ----------- */
use SQL_ACADEMICO_COMPLETO;
SELECT carrera.codigo, carrera.nombre as carrera, campus.nombre as campus
FROM carrera
JOIN campus
ON carrera.id_campus = campus.id

use SQL_ACADEMICO_COMPLETO;
SELECT materia.codigo, materia.nombre as materia, carrera.nombre as carrera,campus.nombre as campus
FROM materia
JOIN carrera
ON materia.id_carrera=carrera.id
JOIN campus
ON carrera.id_campus=campus.id