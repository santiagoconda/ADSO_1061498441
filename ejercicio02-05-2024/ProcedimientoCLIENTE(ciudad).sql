use bancos;
  DELIMITER $$
  CREATE PROCEDURE cliente_ciudad(in nom_ciudad varchar(50))
  BEGIN
  SELECT ciudad.nombre as ciudad, cliente.nombre, cliente.apellidos, cliente.edad FROM cliente
  INNER JOIN ciudad ON cliente.id_ciudad= ciudad.id
  WHERE ciudad.nombre= nom_ciudad;
  END $$
  DELIMITER ;
  CALL cliente_ciudad('cali');
  select * from cliente;