use bancos;
DELIMITER $$
CREATE FUNCTION calcularRadio(radio float)  
RETURNS float
BEGIN
DECLARE area FLOAT;
SET area=pi()*radio*radio;
RETURN area;
END $$
DELIMITER ;
SELECT calcularRadio(7.5) as areaCirculo;