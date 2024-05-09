use bancos;
delimiter $$
create function BONO(valor decimal(10.0))
RETURNS decimal 
begin
declare saldo decimal (10.0);
set saldo= valor-100000;
return saldo;
end $$
delimiter ;
select valor, BONO(valor) as nuevo_saldo FROM abono;