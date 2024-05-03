use bancos
DELIMITER $$
CREATE PROCEDURE Cliente_Credito(in edad1 int, in edad2 int)
BEGIN
SELECT cliente.nombre, cliente.apellidos, credito.saldo FROM cliente
INNER JOIN credito ON credito.numero
WHERE cliente.edad between edad1 AND edad2;

END $$
DELIMITER ;
 call Cliente_Credito(20,40);