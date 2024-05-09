use bancos;
DELIMITER $$
CREATE FUNCTION horasFestivas(sueldo float, Horas float)
RETURNS FLOAT
BEGIN
DECLARE horasE float;
set horasE= (sueldo*1.75*horas)/240;
return horasE;
END $$
DELIMITER ;
select horasFestivas(1000,5) as horasFestivas;