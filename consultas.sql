-- Consultar clientes femeninos con salario mayor a 2500, usa operadores logicos
SELECT nombre_cliente, apellido_cliente, salario, genero
FROM cliente
WHERE salario > 25000 AND genero = 'F';

-- Obtener numero de clientes por pais, usa count y alias
SELECT pais_id_pais, COUNT(id_cliente) AS num_clientes
FROM cliente
GROUP BY pais_id_pais;

/*
En este caso, se agrupa los resultados por nombre_producto para obtener la suma de las ventas de cada producto.
*/
SELECT p.nombre_producto, SUM(d.cantidad * p.precio) AS total_ventas
FROM detalle d
INNER JOIN producto p ON d.producto_id_producto = p.id_producto
GROUP BY p.nombre_producto;

-- salario promedio de clientes
SELECT AVG(salario) AS salario_promedio
FROM cliente;

-- cantidad de productos vendidos por cada vendedor
SELECT v.nombre_vendedor, v.apellido_vendedor, SUM(d.cantidad) AS total_vendidos
FROM vendedor v
INNER JOIN detalle d ON v.id_vendedor = d.vendedor_id_vendedor
GROUP BY v.id_vendedor;

-- HAVING filtra los resultados después de la agregación 
-- Consulta para obtener los vendedores que han vendido más de 5 productos.
SELECT v.nombre_vendedor, v.apellido_vendedor, SUM(d.cantidad) AS total_vendidos
FROM vendedor v
INNER JOIN detalle d ON v.id_vendedor = d.vendedor_id_vendedor
GROUP BY v.id_vendedor
HAVING SUM(d.cantidad) > 5;

-- ordenamientos
-- desc: descendente, LIMIT [numer]: limita resultado
SELECT nombre_producto, precio
FROM producto
ORDER BY precio DESC LIMIT 3;

SELECT nombre_producto, precio
FROM producto
WHERE precio = (SELECT MAX(precio) FROM producto);

-- JOINS
-- Consulta para obtener la lista de clientes y las órdenes asociadas
/*
INNER: coincidencias en ambas tablas
LEFT:  coincidencias en tabla IZQ
RIGHT: coincidencias en tabla DER
*/
SELECT c.nombre_cliente, c.apellido_cliente, o.id_orden
FROM cliente c
INNER JOIN orden o ON c.id_cliente = o.cliente_id_cliente;

SELECT c.nombre_cliente, c.apellido_cliente, o.id_orden
FROM cliente c
LEFT JOIN orden o ON c.id_cliente = o.cliente_id_cliente;

SELECT c.nombre_cliente, c.apellido_cliente, o.id_orden
FROM cliente c
RIGHT JOIN orden o ON c.id_cliente = o.cliente_id_cliente;

/*
Consulta para obtener los vendedores que han vendido más de 2 
productos y ordenar por la cantidad total de productos vendidos,
mostrando solo los 3 primeros.
*/
SELECT v.nombre_vendedor, v.apellido_vendedor, SUM(d.cantidad) AS total_vendidos
FROM vendedor v
INNER JOIN detalle d ON v.id_vendedor = d.vendedor_id_vendedor
GROUP BY v.id_vendedor
HAVING SUM(d.cantidad) > 2
ORDER BY total_vendidos DESC
LIMIT 3;
