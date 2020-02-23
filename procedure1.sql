DELIMITER $$
DROP PROCEDURE IF EXISTS compra_cliente;
CREATE PROCEDURE compra_cliente ()
BEGIN
select cli.nombre,p.nombre,sum(v.correlativo)*p.precio as 'MONTO' from ventas as v inner join cliente as cli on v.id_cliente=cli.id_cliente inner join
productos as p on p.id_producto=v.id_producto group by cli.nombre,p.nombre,p.precio;
END$$
DELIMITER ;
