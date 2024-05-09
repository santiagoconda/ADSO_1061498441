use bancos
DELIMITER $$
CREATE PROCEDURE clienteCiudad(IN genero_cli VARCHAR(50))
BEGIN
   SELECT ciudad.nombre, count(genero) as total FROM ciudad
   INNER JOIN cliente ON cliente.id_ciudad=ciudad.id
   WHERE genero= genero_cli
   GROUP BY ciudad.nombre;

END $$
DELIMITER ;

call clienteciudad('F');