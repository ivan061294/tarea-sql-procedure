DELIMITER $$
DROP PROCEDURE IF EXISTS product_mas_comprado;
CREATE PROCEDURE product_mas_comprado()
BEGIN
select p.nombre,sum(v.correlativo*p.precio) as 'monto comprado' from ventas as v inner join productos as p on v.id_producto=p.id_producto 
 group by v.id_producto having sum(v.correlativo*p.precio)>=3500;
END $$
DELIMITER ;
