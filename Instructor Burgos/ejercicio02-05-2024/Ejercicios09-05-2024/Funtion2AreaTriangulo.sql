use bancos;
DELIMITER $$
CREATE FUNCTION Area_triangulo(base float, altura float)  
RETURNS float
BEGIN
DECLARE area FLOAT;
SET area= base*altura/2;
RETURN area;
END $$
DELIMITER ;
SELECT Area_triangulo(7,5) as areaTriangulo;