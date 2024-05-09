use bancos;
DELIMITER $$
 CREATE PROCEDURE ActualizarSaldo()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE numero_credito INT;
    DECLARE sum_valor DECIMAL(10, 2);
    DECLARE count_ced bigint;
    DECLARE saldo_actual DECIMAL(10, 2);
    DECLARE CUR CURSOR FOR 
    SELECT num_credito, SUM(valor), COUNT(ced_cliente) FROM abono
    group by (ced_cliente);
    DECLARE CONTINUE HANDLER FOR NOT FOUND 
    SET done = TRUE;
    OPEN CUR;
    LOOP1:LOOP
    FETCH CUR INTO numero_credito, sum_valor, count_ced;
    IF done THEN
    LEAVE LOOP1;
    END IF;
    SELECT saldo INTO saldo_actual FROM credito WHERE numero= numero_credito;
    UPDATE credito SET saldo= saldo_actual-sum_valor WHERE numero= numero_credito;
    END LOOP LOOP1;
    CLOSE CUR;
    END $$
 DELIMITER ;
  CALL ActualizarSaldo();
  select * FROM credito;