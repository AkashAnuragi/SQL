SQL> desc prices;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCT_ID                                NOT NULL NUMBER(10)
 START_DATE                                NOT NULL DATE
 END_DATE                                  NOT NULL DATE
 PRICE                                              NUMBER(10)

SQL> desc UnitsSold;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCT_ID                                         NUMBER(10)
 PURCHASE_DATE                                      DATE
 UNITS                                              NUMBER(10)

SQL> select * from Prices;

PRODUCT_ID START_DAT END_DATE       PRICE                                       
---------- --------- --------- ----------                                       
         1 17-FEB-19 28-FEB-19          5                                       
         1 01-MAR-19 22-MAR-19         20                                       
         2 01-FEB-19 20-FEB-19         15                                       
         2 21-FEB-19 31-MAR-19         30                                       

SQL> select * from UnitsSold;

PRODUCT_ID PURCHASE_      UNITS                                                 
---------- --------- ----------                                                 
         1 25-FEB-19        100                                                 
         1 01-MAR-19         15                                                 
         2 10-FEB-19        200                                                 
         2 22-MAR-19         30                                                 

SQL> -- Solution.
SQL> Select p.product_id,
  2  coalesce(round(sum(u.units*p.price)/sum(u.units),2),0)
  3  As average_price
  4   from prices p
  5   left join unitsSold u   on (
  6      p.product_id = u.product_id
  7      AND u.purchase_date Between p.start_date
  8      AND p.end_date )
  9      Group by p.product_id;

PRODUCT_ID AVERAGE_PRICE                                                        
---------- -------------                                                        
         1          6.96                                                        
         2         16.96                                                        

SQL> commit;

Commit complete.


