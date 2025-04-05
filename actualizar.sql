-- 1. Actualizar el nombre de un cliente
UPDATE cliente
SET nombre_cliente = 'Luis Eduardo'
WHERE id_cliente = 1;

-- 2. Aumentar el salario de un cliente
UPDATE cliente
SET salario = salario + 10000,
	apellido_cliente = "Perez"
WHERE id_cliente = 2;
