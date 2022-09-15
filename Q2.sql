# Este tema no lo conocía así que seguí este video https://www.youtube.com/watch?v=GJ3M3daJA_E
# Para la configuración del servidor al usar una instancia administrada de AWS RDS no cuento con privilegios de superuser, entonces seguí esta guia para aplicar un nuevo grupo de parámetros con event_scheduler ON https://stackoverflow.com/questions/14940910/creating-mysql-events-in-amazon-rds 

CREATE EVENT Q2_test
ON SCHEDULE EVERY 15 SECOND ON COMPLETION PRESERVE
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