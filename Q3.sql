/*Entiendo que esta pidiendo algo muy parecido a lo que se ve en la página de metricas de la cuenta de vendedores de mercadolibre 
donde podemos comparar 1,7,15,30 días vs un intervalo de igual duración inmediatamente anterior la mismo.
https://vendedores.mercadolibre.com.ar/nota/seccion-de-metricas-de-negocio

*Intenté varias maneras para no repetir el código al generar las tablas temporales como usar procedimientos o funciones. 
En este ultimo caso, MARIADB no soporta devolver tablas en funciones :(


https://www.codecademy.com/learn/paths/data-analyst/tracks/dsf-learn-sql/modules/dsinf-learn-sql-multiple-tables/cheatsheet
*/

DROP TABLE IF EXISTS  Q1; #Siempre genera una nueva :D 
CREATE TEMPORARY TABLE Q1
	SELECT 	COUNTRY, 
		DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
		sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
		(TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
	FROM transactions
	JOIN sellers
	ON  sellers.CUST_ID = transactions.CUST_ID
	WHERE DATEDIFF(TRANSACTION_DATE, CURDATE()) between -30 and -1 #No cuento el día actual
	GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENTE;

DROP TABLE IF EXISTS  Q2; #Siempre genera una nueva :D
CREATE TEMPORARY TABLE Q2
	SELECT 	COUNTRY, 
		DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
		sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
		(TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
	FROM transactions
	JOIN sellers
	ON  sellers.CUST_ID = transactions.CUST_ID
	WHERE DATEDIFF(TRANSACTION_DATE, CURDATE()) between -60 and -31
	GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENTE;
    
SELECT Q1.*,Q2.TRANSACTIONS_COUNT as TRANSACTIONS_COUNT_Q2,Q2.TRANSACTIONS_AMOUNT_TOTAL as TRANSACTIONS_AMOUNT_TOTAL_Q2
FROM Q1
LEFT JOIN Q2 
ON (Q1.COUNTRY = Q2.COUNTRY) AND (Q1.DATE_YM = Q2.DATE_YM) AND (Q1.TIPO_CLIENTE = Q2.TIPO_CLIENTE) ;
