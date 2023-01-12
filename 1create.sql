/* Crea la base de datos */
CREATE database test;

/* Crea la tabla SIMPLE NO RELACIONADA, hay que especificar la tabla test */
use test;

create table usuarios(
    id int primary key auto_increment,
    nombre varchar(50) not null,
    cedula varchar(50) not null,
    telefono varchar(15) not null,
    email varchar(60) not null
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_spanish_ci;



/* Crea tablas relacionadas */
use test;

create table empresa (
    id int primary key auto_increment,
    codigo varchar(50) not null,
    nombre varchar(50) not null
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_spanish_ci;

create table categoria(
    id int primary key auto_increment,
    cat_codigo varchar(50) not null,
    cat_nombre varchar(10) not null,
    cat_descripcion varchar(15) not null,
    empresa_id INT,
    FOREIGN KEY (empresa_id) REFERENCES empresa(id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_spanish_ci;

create table productos(
    id int primary key auto_increment,
    pro_codigo varchar(50) not null,
    pro_nombre varchar(10) not null,
    pro_descripcion varchar(15) not null,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_spanish_ci;