-- Eliminar una categoría (si no está siendo usada por productos)
USE proyecto;
DELETE FROM categoria
WHERE id_categoria = 2;

DELETE FROM pais
WHERE id_pais = 2;

DROP DATABASE proyecto; -- borra toda la base de datos