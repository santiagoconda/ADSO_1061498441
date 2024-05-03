use bancos
DELIMITER $$
CREATE PROCEDURE Actualizar_abono()
BEGIN
DECLARE id_abono INT;
DECLARE valor_abono DECIMAL(10,0);
DECLARE numero_credito INT;
DECLARE saldo_credito DECIMAL (10,0);
DECLARE calcularvalor decimal (10,0);
DECLARE DONE INT DEFAULT 0;
DECLARE CUR CURSOR FOR
SELECT  numero, valor_cuota FROM credito;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET DONE= TRUE;
OPEN CUR;
LOOP1: LOOP
FETCH CUR INTO numero_credito, valor_abono;
if DONE THEN
LEAVE loop1;
END IF;

UPDATE abono set valor = valor_abono where  num_credito = numero_credito;
END LOOP LOOP1;
CLOSE CUR;
END $$
DELIMITER ; 

call actualizar_abono();
select * from abono;
select num_credito, sum valor, cont ced_cliente from abono group by (ced_cliente);