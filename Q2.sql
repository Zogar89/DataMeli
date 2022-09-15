# Este tema no lo conocía así que seguí este video https://www.youtube.com/watch?v=GJ3M3daJA_E
# Para la configuración del servidor al usar una instancia administrada de AWS RDS no cuento con privilegios de superuser, entonces seguí esta guia para aplicar un nuevo grupo de parámetros con event_scheduler ON https://stackoverflow.com/questions/14940910/creating-mysql-events-in-amazon-rds 

CREATE EVENT Q2_test3
ON SCHEDULE EVERY 1 DAY ON COMPLETION PRESERVE 
/*Respecto al horario me gustaria que quede fijo sin importar a que hora lo programe para evitar el solapamiento con otros y tener mas control.
Las opciones que probé requerian cambiar la query para adaptarla al día de programación ya que da error si pongo una fecha fija pasada
como estoy acostumbrado a hacer en los sistemas de mi trabajo actual. Necesito mas timpo para encontrar un método que satisfaga todo lo anterior*/
DO
	SELECT 	COUNTRY, 
	DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
	sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
	(TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
	FROM transactions
	JOIN sellers
	ON  sellers.CUST_ID = transactions.CUST_ID
	WHERE DATEDIFF(TRANSACTION_DATE, CURDATE()) between -60 and 0
	GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENT;