-- 1. Insertar países
INSERT INTO pais (id_pais, nombre_pais) VALUES
(1, 'México'),
(2, 'Argentina'),
(3, 'Chile'),
(4, 'Colombia'),
(5, 'Perú'),
(6, 'Brasil'),
(7, 'Uruguay'),
(8, 'Paraguay'),
(9, 'Ecuador'),
(10, 'Bolivia');

-- 2. Insertar categorías
INSERT INTO categoria (id_categoria, nombre_categoria) VALUES
(1, 'Electrónica'),
(2, 'Ropa'),
(3, 'Hogar'),
(4, 'Deportes'),
(5, 'Libros'),
(6, 'Juguetes'),
(7, 'Accesorios'),
(8, 'Computación'),
(9, 'Salud'),
(10, 'Videojuegos');

-- 3. Insertar clientes
INSERT INTO cliente (pais_id_pais,nombre_cliente, apellido_cliente, direccion, telefono, tarjeta, edad, genero, salario) VALUES
(1,'Luis', 'Pérez', 'Av. Reforma 123', '5551234567', '1234-5678-9876-5432', 30, 'M', 25000),
(1,'María', 'Gómez', 'Calle Falsa 456', '3417654321', '4321-8765-1234-5678', 28, 'F', 30000),
(1, 'Luis', 'Pérez', 'Av. Reforma 123', '5551234567', '1234-5678-9876-5432', 30, 'M', 25000),
(2, 'María', 'Gómez', 'Calle Falsa 456', '3417654321', '4321-8765-1234-5678', 28, 'F', 30000),
(3, 'Carlos', 'Ramírez', 'Calle Sol 789', '9988776655', '4567-1234-7890-9876', 40, 'M', 27000),
(4, 'Lucía', 'Fernández', 'Av. Mitre 987', '8765432190', '9876-5432-1234-5678', 35, 'F', 32000),
(5, 'Pedro', 'Martín', 'Ruta 40 Km 50', '1122334455', '3333-4444-5555-6666', 45, 'M', 26000),
(6, 'Sofía', 'Ruiz', 'Calle Luna 202', '9988776655', '2222-3333-4444-5555', 29, 'F', 28000),
(7, 'Diego', 'Suárez', 'Av. Libertador 1234', '1234567890', '1111-2222-3333-4444', 50, 'M', 35000),
(8, 'Valentina', 'Molina', 'San Juan 101', '9876543210', '4444-5555-6666-7777', 27, 'F', 31000),
(9, 'Esteban', 'López', 'Lavalle 202', '6543217890', '8888-9999-0000-1111', 32, 'M', 24000),
( 10, 'Camila', 'Castro', 'Calle 9 de Julio', '7654321098', '6666-7777-8888-9999', 38, 'F', 29000);

-- 4. Insertar vendedores
INSERT INTO vendedor (pais_id_pais, id_vendedor, nombre_vendedor, apellido_vendedor) VALUES
(1, 1, 'Ana', 'López'),
(2, 2, 'Juan', 'Martínez'),
(3, 3, 'Laura', 'González'),
(4, 4, 'Fernando', 'Torres'),
(5, 5, 'Paula', 'Núñez'),
(6, 6, 'Gustavo', 'Morales'),
(7, 7, 'Elena', 'Vega'),
(8, 8, 'Andrés', 'Silva'),
(9, 9, 'Natalia', 'Reyes'),
(10, 10, 'Javier', 'Domínguez');

-- 5. Insertar productos
INSERT INTO producto (id_producto, nombre_producto, precio, categoria_id_categoria) VALUES
(1, 'Smartphone', 6999.99, 1),
(2, 'Camisa', 499.99, 2),
(3, 'Licuadora', 1500.00, 3),
(4, 'Balón de fútbol', 800.00, 4),
(5, 'Libro de ficción', 350.00, 5),
(6, 'Muñeca', 1200.00, 6),
(7, 'Collar', 750.00, 7),
(8, 'Laptop', 12000.00, 8),
(9, 'Vitaminas', 600.00, 9),
(10, 'Consola de videojuegos', 15000.00, 10);

-- 6. Insertar órdenes
INSERT INTO orden (id_orden, fecha_orden, cliente_id_cliente) VALUES
(1, '2025-04-01', 1),
(2, '2025-04-02', 2),
(3, '2025-04-03', 3),
(4, '2025-04-04', 4),
(5, '2025-04-05', 5),
(6, '2025-04-06', 6),
(7, '2025-04-07', 7),
(8, '2025-04-08', 8),
(9, '2025-04-09', 9),
(10, '2025-04-10', 10),
(11, '2025-04-08', 8),
(12, '2025-04-09', 10),
(13, '2025-04-10', 10);

-- 7. Insertar detalle
INSERT INTO detalle (producto_id_producto, vendedor_id_vendedor, orden_id_orden, linea_orden, cantidad) VALUES
(1, 1, 1, 1, 2),
(2, 2, 2, 1, 3),
(3, 3, 3, 1, 1),
(4, 4, 4, 1, 2),
(5, 5, 5, 1, 1),
(6, 6, 6, 1, 4),
(7, 7, 7, 1, 2),
(8, 8, 8, 1, 1),
(9, 9, 9, 1, 5),
(10, 10, 10, 1, 1),
(8, 8, 11, 1, 1),
(9, 9, 12, 1, 5),
(10, 10, 13, 1, 1);

