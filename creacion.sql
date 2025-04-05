CREATE SCHEMA IF NOT EXISTS proyecto;
USE proyecto;

CREATE TABLE IF NOT EXISTS  categoria (
    id_categoria     INTEGER NOT NULL,
    nombre_categoria VARCHAR(100) NOT NULL,
    PRIMARY KEY ( id_categoria )
);

CREATE TABLE IF NOT EXISTS  cliente (
    pais_id_pais     INTEGER,
    id_cliente       INTEGER NOT NULL AUTO_INCREMENT,
    nombre_cliente   VARCHAR(150) NOT NULL,
    apellido_cliente VARCHAR(150) NOT NULL,
    direccion        VARCHAR(150),
    telefono         VARCHAR(15) NOT NULL,
    tarjeta          VARCHAR(50) NOT NULL,
    edad             INTEGER,
    genero           VARCHAR(3),
    salario          INTEGER,
    PRIMARY KEY ( id_cliente )
);

CREATE TABLE IF NOT EXISTS  orden (
    id_orden           INTEGER NOT NULL,
    fecha_orden        VARCHAR(20) NOT NULL,
    cliente_id_cliente INTEGER NOT NULL,
    PRIMARY KEY ( id_orden )
);

CREATE TABLE IF NOT EXISTS detalle (
    producto_id_producto INTEGER NOT NULL,
    vendedor_id_vendedor INTEGER NOT NULL,
    orden_id_orden INTEGER NOT NULL,
    linea_orden INTEGER,
    cantidad INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS  pais (
    id_pais     INTEGER NOT NULL,
    nombre_pais VARCHAR(100) NOT NULL,
    PRIMARY KEY ( id_pais )
);

CREATE TABLE IF NOT EXISTS  producto (
    id_producto            INTEGER NOT NULL,
    nombre_producto        VARCHAR(255) NOT NULL,
    precio                 FLOAT NOT NULL,
    categoria_id_categoria INTEGER NOT NULL,
    PRIMARY KEY ( id_producto )
);

CREATE TABLE IF NOT EXISTS  vendedor (
    pais_id_pais      INTEGER,
    id_vendedor       INTEGER NOT NULL,
    nombre_vendedor   VARCHAR(150) NOT NULL,
    apellido_vendedor VARCHAR(150) NOT NULL,
    PRIMARY KEY ( id_vendedor )
);

ALTER TABLE cliente
    ADD CONSTRAINT fk_cliente_pais FOREIGN KEY ( pais_id_pais )
        REFERENCES pais ( id_pais ) ON DELETE SET NULL;

ALTER TABLE detalle
    ADD CONSTRAINT fk_detalle_orden FOREIGN KEY ( orden_id_orden )
        REFERENCES orden ( id_orden ) ON DELETE CASCADE;

ALTER TABLE detalle
    ADD CONSTRAINT fk_detalle_producto FOREIGN KEY ( producto_id_producto )
        REFERENCES producto ( id_producto ) ON DELETE CASCADE;

ALTER TABLE detalle
    ADD CONSTRAINT fk_detalle_vendedor FOREIGN KEY ( vendedor_id_vendedor )
        REFERENCES vendedor ( id_vendedor ) ON DELETE CASCADE;

ALTER TABLE orden
    ADD CONSTRAINT fk_orden_cliente FOREIGN KEY ( cliente_id_cliente )
        REFERENCES cliente ( id_cliente ) ON DELETE CASCADE;

ALTER TABLE producto
    ADD CONSTRAINT fk_producto_categoria FOREIGN KEY ( categoria_id_categoria )
        REFERENCES categoria ( id_categoria ) ON DELETE CASCADE;

ALTER TABLE vendedor
    ADD CONSTRAINT fk_vendedor_pais FOREIGN KEY ( pais_id_pais )
        REFERENCES pais ( id_pais ) ON DELETE SET NULL;