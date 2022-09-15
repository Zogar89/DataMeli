# Crear una tabla volátil con los mismos parámetros y formato de la tabla Q1 con los datos del mes en curso.

DROP TABLE IF EXISTS  MES_ACTUAL; #Siempre genera una nueva :D 
CREATE TEMPORARY TABLE MES_ACTUAL
	SELECT 	COUNTRY, 
			DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
			sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
			(TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
	FROM transactions
	JOIN sellers
	ON  sellers.CUST_ID = transactions.CUST_ID
	WHERE MONTH(TRANSACTION_DATE) =	MONTH(CURDATE()) AND YEAR(TRANSACTION_DATE)	= YEAR(CURDATE())
	GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENTE;

# Crear otra tabla volátil pero con los datos del mes anterior.

DROP TABLE IF EXISTS  MES_ANTERIOR; #Siempre genera una nueva :D
CREATE TEMPORARY TABLE MES_ANTERIOR
	SELECT 	COUNTRY, 
			DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
			sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
			(TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
	FROM transactions
	JOIN sellers
	ON  sellers.CUST_ID = transactions.CUST_ID
	WHERE MONTH(TRANSACTION_DATE) =	MONTH(CURDATE() - INTERVAL 1 MONTH) AND YEAR(TRANSACTION_DATE)	= YEAR(CURDATE() - INTERVAL 1 MONTH)
	GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENTE;

#Usando estas tablas temporales mostrar los resultados con el mismo formato de Q1,
# con la data del mes en curso agregando la variación (tanto para cantidad de transaccions como para cantidad de plata transaccionada) vs el mismo período del mes anterior.

SELECT 	MES_ACTUAL.*, #Traigo toda la tabla actual y solo las columnas que cambian del mes anterior
		MES_ANTERIOR.TRANSACTIONS_COUNT as TRANSACTIONS_COUNT_MES_ANTERIOR, #Por el enunciado quizas se podria omitir mostrarla
        MES_ANTERIOR.TRANSACTIONS_AMOUNT_TOTAL as TRANSACTIONS_AMOUNT_TOTAL_MES_ANTERIOR, #Por el enunciado quizas se podria omitir mostrarla
        MES_ACTUAL.TRANSACTIONS_COUNT - MES_ANTERIOR.TRANSACTIONS_COUNT as TRANSACTIONS_COUNT_VAR, #Hago Mes Actual - Mes Anterior
        ROUND(MES_ACTUAL.TRANSACTIONS_AMOUNT_TOTAL - MES_ANTERIOR.TRANSACTIONS_AMOUNT_TOTAL,2) as TRANSACTIONS_AMOUNT_TOTAL_VAR #Hago Mes Actual - Mes Anterior
FROM MES_ACTUAL
CROSS JOIN MES_ANTERIOR #
ON (MES_ACTUAL.COUNTRY = MES_ANTERIOR.COUNTRY) AND (MES_ACTUAL.TIPO_CLIENTE = MES_ANTERIOR.TIPO_CLIENTE);