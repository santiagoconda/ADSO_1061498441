use bancos;
delimiter $$
CREATE FUNCTION calcularDiametro(radio float)
RETURNS FLOAT
BEGIN
DECLARE diametro Float;
set diametro= (radio)*2;
return diametro ;
END $$
delimiter ;
SELECT calcularDiametro (20.5) AS diametro ;

