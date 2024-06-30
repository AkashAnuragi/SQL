SQL> desc Products;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCT_ID                                NOT NULL NUMBER(2)
 LOW_FATS                                           CHAR(1)
 RECYCLABLE                                         CHAR(1)

SQL> select * from Products;

PRODUCT_ID L R                                                                  
---------- - -                                                                  
         0 Y N                                                                  
         1 Y Y                                                                  
         2 N Y                                                                  
         3 Y Y                                                                  
         4 N N                                                                  

SQL> select product_id from Products
  2  where low_fats ='Y' AND recyclable ='Y';

PRODUCT_ID                                                                      
----------                                                                      
         1                                                                      
         3                                                                      

SQL> commit;

Commit complete.

SQL> exit;
