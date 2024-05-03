use bancos
DELIMITER $$
CREATE PROCEDURE clienteCiudad(IN genero_cli VARCHAR(50))
BEGIN
    SELECT ciudad.nombre, COUNT(CASE WHEN cliente.genero = genero_cli THEN 1 END) AS cantidad
    FROM ciudad
    LEFT JOIN cliente ON ciudad.id_ciudad = cliente.id_ciudad
    GROUP BY ciudad.nombre;
END $$
DELIMITER ;

call cliente_ciudad('M');