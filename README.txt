# DataMeli
 Datos para la prueba técnica SQL Meli 13-09-22

Las credenciales para conectarse se encuentran en el documento enviado.

Para pobla la base de datos correr en orden:
Create_transactions.sql
Create_sellers.sql

*Se incluyen capturas de pantalla con la configuración para los datos de prueba.

Las consultas son:
Q1
Q2
Q3

*La instancia tiene habilitado el scheduler.

-*-*-*---  Consignas:  ---*-*-*-

Tabla 1: transactions (Todos los cobros)
CUST_ID (STRING)
TRANSACTION_DATE (DATE)
TRANSACTION_ID (STRING) PK
TRANSACTION_AMOUNT (FLOAT)
AUTHORIZATION_TYPE (STRING)
COMMERCE_NAME(STRING)
COUNTRY (STRING)
Argentina
Brasil
Colombia

Tabla 2: sellers (info de sellers)
CUST_ID (STRING)
PRIMER_COBRO (DATE)
FLAG_RECURRENTE (STRING)
New
Recurrente
TIPO_CLIENTE (STRING)
Autonomo
Monotributista

Q1: Escribir una query que indique cantidad de transacciones totales y cantidad de plata transaccionada por mes en los últimos 30 días. De ser posible representar la columna mes en formato YYYYMM. Agrupar por País, mes y tipo de cliente.

Q2: Adaptar la query de Q1 para que corra todos los días de manera automática abarcando siempre los últimos 60 días.

Q3: Crear una tabla volátil con los mismos parámetros y formato de la tabla Q1 con los datos del mes en curso. Crear otra tabla volátil pero con los datos del mes anterior. Usando estas tablas temporales mostrar los resultados con el mismo formato de Q1, con la data del mes en curso agregando la variación (tanto para cantidad de transaccions como para cantidad de plata transaccionada) vs el mismo período del mes anterior.
