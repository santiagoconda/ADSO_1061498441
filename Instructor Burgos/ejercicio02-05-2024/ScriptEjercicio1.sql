use bancos
DELIMITER $$
create procedure actualizar_cuota()
BEGIN
DECLARE Valor_c DECIMAL(10,2);
DECLARE numero_c int;
DECLARE saldo_c decimal (10.2);
DECLARE cuotas_fc int;
DECLARE done int DEFAULT 0;
DECLARE CUR CURSOR FOR
SELECT numero, cuatas_faltantes, saldo FROM credito;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET DONE = true;
OPEN CUR;
loop1: LOOP
FETCH CUR INTO numero_c, cuotas_fc, saldo_c;
IF done THEN
LEAVE loop1;
END IF;
set Valor_c= saldo_c / cuotas_fc;
update credito set valor_cuota= Valor_c where numero= numero_c;
END LOOP LOOP1;
CLOSE cur;
END $$
DELIMITER ;
call actualizar_cuota();
select * from credito;
select * from abono;
