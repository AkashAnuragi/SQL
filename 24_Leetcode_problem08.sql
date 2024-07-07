SQL> desc visits;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 VISIT_ID                                  NOT NULL NUMBER(10)
 CUSTOMER_ID                                        NUMBER(10)

SQL> desc transactions
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TRANSACTION_ID                            NOT NULL NUMBER(10)
 VISIT_ID                                           NUMBER(10)
 AMOUNT                                             NUMBER(10)

SQL> select * from visits;

  VISIT_ID CUSTOMER_ID                                                          
---------- -----------                                                          
         1          23                                                          
         2           9                                                          
         4          30                                                          
         5          54                                                          
         6          96                                                          
         7          54                                                          
         8          54                                                          

7 rows selected.

SQL> select * from Transactions;

TRANSACTION_ID   VISIT_ID     AMOUNT                                            
-------------- ---------- ----------                                            
             2          5        310                                            
             3          5        330                                            
             9          5        200                                            
            12          1        910                                            
            13          2        970                                            

SQL> -- Solution.
SQL> select
  2      v.customer_id, COUNT(v.visit_id) AS count_no_trans from Visits v
  3   left join Transactions t ON
  4      v.visit_id = t.visit_id
  5  WHERE
  6      t.transaction_id IS NULL
  7  GROUP BY
  8      v.customer_id
  9  ORDER BY
 10      v.customer_id;

CUSTOMER_ID COUNT_NO_TRANS                                                      
----------- --------------                                                      
         30              1                                                      
         54              2                                                      
         96              1                                                      

SQL> commit;

Commit complete.

SQL> spool off;
