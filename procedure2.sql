DELIMITER $$
DROP PROCEDURE IF EXISTS monto_total;
CREATE PROCEDURE monto_total ()
BEGIN
select c.nombre,sum(Correlativo*p.precio) as 'monto total' from ventas as v inner join cliente as c on c.id_cliente=v.id_cliente inner join productos as p
on p.id_producto=v.id_producto group by v.id_cliente;
END $$
DELIMITER ;
