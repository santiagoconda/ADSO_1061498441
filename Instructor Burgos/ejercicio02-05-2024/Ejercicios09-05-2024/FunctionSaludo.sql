use bancos;
delimiter $$
CREATE function saludo (nombre varchar(50), apellidos varchar(50))
returns varchar(50)
begin
declare nombre_completo varchar(50);
set nombre_completo= concat(nombre, apellidos);
return concat('Bienvenido ', nombre_completo);
end $$
delimiter ;
select nombre, apellidos, saludo(nombre, apellidos) as nombreCompleto FROM cliente;
