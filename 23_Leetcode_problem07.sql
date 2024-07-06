SQL> desc sales
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SALE_ID                                   NOT NULL NUMBER(10)
 PRODUCT_ID                                         NUMBER(10)
 YEAR                                      NOT NULL NUMBER(5)
 QUANTITY                                           NUMBER(10)
 PRICE                                              NUMBER(10)

SQL> desc product;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCT_ID                                NOT NULL NUMBER(4)
 PRODUCT_NAME                                       VARCHAR2(23)

SQL> select * from sales;

   SALE_ID PRODUCT_ID       YEAR   QUANTITY      PRICE                          
---------- ---------- ---------- ---------- ----------                          
         1        100       2008         10       5000                          
         2        100       2009         12       5000                          
         7        200       2011         15       9000                          

SQL> select * from product;

PRODUCT_ID PRODUCT_NAME                                                         
---------- -----------------------                                              
       100 Nokia                                                                
       200 Apple                                                                
       300 Samsung                                                              

SQL> --Solution.
SQL> SELECT P.product_name, S.year, S.price
  2  FROM Sales S
  3  JOIN Product P ON S.product_id = P.product_id;

PRODUCT_NAME                  YEAR      PRICE                                   
----------------------- ---------- ----------                                   
Nokia                         2008       5000                                   
Nokia                         2009       5000                                   
Apple                         2011       9000                                   

SQL> commit;

Commit complete.

