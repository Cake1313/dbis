/*1.Написати PL/SQL код, що по вказаному ключу покупцЯ додає в його замовленнЯ,
що було зроблено першим будь-який продукт 10 разів, змінюючи order_item у циклі.
Операція виконується, якщо у даному замовленні вже є хоча б один товар. 10 балґв*/


/*2. Написати PL/SQL код, що по вказаному ключу продукту виводить у консоль його назму та изначає його статус.
Якщо продукт не продаєтьсЯ  - статус  = "poor"
Якщо продукт продано до 2 різних замовлень включно - статус  = "common"
Якщо продукт продано більше ніж у 2 замовлення - статус  = "rich" 4 бали*/

DECLARE
vendr_id VARCHAR(10):=";
vendr_name VARCHAR(10):=";
items_count INT :=0;
BEGIN 
SELECT vend_id
prod_name
COUNT(DISTINCT PROD_NAME)
INTO vend_name
vendr_name
items_count
FROM VENDORS
LEFT JOIN PRODUCTS 
ON VENDORS.PROD.ID=PRODUCTS.PROD.ID
GROUP BY VEND_ID
vend_name
if ITEMS_COUNT=0 THEN
DBMS_OUTPUT PRINT LINE ("poor")
elsif items_count<=2 THEN

DBMS_OUTPUT PRINT LINE ("common")
elsif items_count>=2 THEN
DBMS_OUTPUT PRINT LINE ("rich")
END;



/*3. Створити представлення та використати його у двох запитах:
3.1. Вивести ім'я постачальника та номер замовлення, куди не продає постачальник свої продукти.
3.2. Вивести ім'я постачальника та загальну кількість замовлень, куди постачальник продав свої продукти 6 балів.*/
CREATE VIEW cust_vend AS
SELECT
CUST_NAME
VEND_NAME
VEND_ID
PROD_ID
PROD_NAME
FROM CUSTOMERS 
JOIN ORDERS
ON CUSTOMERS.CUST_ID=ORDERS.CUST_ID
JOIN ORDERITEMS
ON ORDERS.ORDER_NUM=ORDERITEMS.ORDER_NUM
JOIN PRODUCTS
ON ORDER.PROD_ID=PRODUCTS.PROD_ID
JOIN VENDORS
ON PRODUCTS.VEND_ID=VENDORS.VEND_ID
SELECT 
cust_id
vend_name
FROM cust.vend
WHERE
SELECT vend_name
COUNT(DISTINCT prod_id)
FROM cust_vend
WHERE VEND_ID=PROD_ID
