-- LABORATORY WORK 5
-- BY Servatmand_Mariam
1. CREATE OR REPLACE FUNCTION function_1
          
          RETURN INT 
          IS
            var INT  
          BEGIN
              select cust_name, order_num FROM CUSTOMERS WHERE cust_id.customers=cust_id.orders
          END function_1;


    
2.
Create or REPLACE PROCEDURE DELETE_VENDOR ( vendors_id IN Vendors.vend_id)  IS
products_id product.products_id%type
vendors_id Vendor_vend_id%type;

BEGIN
vend_id varchar2;
prod_id varchar2;
SELECT product.prod_id, Vendor_vend_id Into products_id, vendors_id
FROM Products JOIN Vendors
 ON Products.vend_id=Vendors.vendors_id
 GROUP BY PRODUCTS
 Delete Vendors.vendors_id 
 Where Vendors.vendors_id=Vendors.vendors_id
EXCEPTION
when count(vendors_id)=0
END DELETE_VENDOR 

3. 
CREATE OR REPLACE PROCEDURE add_product(order_id orders.ORDER_num%type,
                                            new_product CUSTOMERS.CUST_NAME%type)
IS
  
BEGIN 
  
  SELECT CUST_NAME NAME FROM PRODUCTS WHERE PROD1_ID = PROD_ID
    
  IF(PROD_ID IS NOT NULL) THEN 
    UPDATE ORDERS
    SET PROD_NAME = new_name
    WHERE   CUST_ID = customer_id
  END IF;
  
  EXCEPTION 
  WHEN NO_DATA_FOUND THEN
 
END;
