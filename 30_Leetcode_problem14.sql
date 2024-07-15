SQL> desc signups
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 USER_ID                                   NOT NULL NUMBER(10)
 TIME_STAMP                                NOT NULL DATE

SQL> desc confirmations;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 USER_ID                                            NUMBER(10)
 TIME_STAMP                                         DATE
 ACTION                                             CHAR(10)

SQL> select * from signups;

   USER_ID TIME_STAM                                                            
---------- ---------                                                            
         2 29-JUL-20                                                            
         3 21-MAR-20                                                            
         6 09-DEC-20                                                            
         7 04-JAN-20                                                            

SQL> select * from confirmations;

   USER_ID TIME_STAM ACTION                                                     
---------- --------- ----------                                                 
         3 06-JAN-21 timeout                                                    
         3 14-JUL-21 timeout                                                    
         7 12-JUN-21 confirmed                                                  
         7 13-JUN-21 confirmed                                                  
         7 24-JUN-21 confirmed                                                  
         2 22-JAN-21 confirmed                                                  
         2 28-FEB-21 timeout                                                    

7 rows selected.

SQL> -- Solution.
SQL> Select s.user_id,
  2  Round(
  3      Coalesce(
  4          Sum( case When Action= 'confirmed' then 1 end )/count(*),0 ),2)
  5          as confirmation_rate from signups s
  6          Left join confirmations c
  7          ON s.user_id = c.user_id
  8          Group by s.user_id;

   USER_ID CONFIRMATION_RATE                                                    
---------- -----------------                                                    
         2                .5                                                    
         3                 0                                                    
         6                 0                                                    
         7                 1                                                    

SQL> commit;

Commit complete.


