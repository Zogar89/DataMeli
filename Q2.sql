/*Para que la siguiente consulta funcione debemos tener event scheduler activado.
La configuración del servidor al usar una instancia administrada de AWS RDS no cuenta con privilegios de superuser, entonces seguí esta guia para aplicar un nuevo grupo de parámetros con event_scheduler ON https://stackoverflow.com/questions/14940910/creating-mysql-events-in-amazon-rds 

Leí que este tipo de eventos no tienen cola de ejecución y si se solapan no se ejecutan.
Por lo tanto, por diseño, la solución óptima que me hubiese gustado hacer es que se pueda setear desde la consulta un horario fijo, para así tener control y poder distribuir los eventos del servidor a lo largo del día. Esto se puede lograr estableciendo una fecha futura al momento de la programación del evento, pero obliga a editar la consulta cada vez que se programa ya que en una posible programación futura la consulta quedaría con una fecha pasada si no es actualizada y esto da error.
Por el momento no encontré una solución a este problema y opté por una salida simple que ignora este tema pues el horario de ejecución dependerá de la hora de programación. 
*/

CREATE EVENT Lasts_60_days
ON SCHEDULE EVERY 1 DAY ON COMPLETION PRESERVE 
DO
	SELECT 	COUNTRY, 
	DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
	sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
	(TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
	FROM transactions
	JOIN sellers
	ON  sellers.CUST_ID = transactions.CUST_ID
	WHERE DATEDIFF(TRANSACTION_DATE, CURDATE()) between -59 and 0 #Comienzo en el día actual. Between es inclusivo en inicio y fin.
	GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENT;
    
SHOW EVENTS