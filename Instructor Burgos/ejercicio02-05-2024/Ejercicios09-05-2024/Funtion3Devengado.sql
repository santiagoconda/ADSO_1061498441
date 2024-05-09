use bancos;
DELIMITER $$
CREATE FUNCTION CalcularDavengado(sueldo float, DiasdeTrabajo float)
RETURNS float
BEGIN
DECLARE devengado float;
set devengado=sueldo*DiasdeTrabajo/30;
RETURN devengado ;
END $$
DELIMITER ;
select CalcularDavengado(35000,20) as Devengado;