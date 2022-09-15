SELECT 	COUNTRY, 
		DATE_FORMAT(TRANSACTION_DATE,'%Y%m' ) as DATE_YM, 
        sellers.TIPO_CLIENTE, COUNT(TRANSACTION_ID) as 'TRANSACTIONS_COUNT', 
        (TRANSACTION_AMOUNT) as 'TRANSACTIONS_AMOUNT_TOTAL'
FROM transactions
JOIN sellers
  ON  sellers.CUST_ID = transactions.CUST_ID
WHERE DATEDIFF(TRANSACTION_DATE, CURDATE()) between -30 and 0 #No olvidar de cambiar el orden y la fecha de creación de los ejemplos
GROUP BY COUNTRY, DATE_YM, sellers.TIPO_CLIENTE;
