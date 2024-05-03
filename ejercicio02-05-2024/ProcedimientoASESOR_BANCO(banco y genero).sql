use bancos
DELIMITER $$
CREATE PROCEDURE asesorBanco(in nom_banco varchar(50), in a_genero varchar(50))
BEGIN
SELECT asesor.nombre, asesor.genero, banco.nombre FROM asesor
INNER JOIN banco ON banco.codigo= asesor.cod_banco
WHERE banco.nombre AND asesor.genero= nom_banco AND a_genero;
END $$
DELIMITER ;
 CALL asesorBanco('Bogota','M');
 
DELIMITER $$
CREATE PROCEDURE asesorBanco (IN nom_banco VARCHAR(50), IN a_genero VARCHAR(50))
BEGIN
    SELECT asesor.nombre, asesor.genero, banco.nombre 
    FROM asesor
    INNER JOIN banco ON banco.codigo = asesor.cod_banco
    WHERE banco.nombre = nom_banco AND asesor.genero = a_genero;
END $$
DELIMITER ;
CALL asesorBanco('Bogota', 'M');
