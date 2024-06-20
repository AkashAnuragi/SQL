SQL> --01
SQL> select 2*2 from DUAL;

       2*2                                                                      
----------                                                                      
         4                                                                      

SQL> --02
SQL> select sysdate from DUAL;

SYSDATE                                                                         
---------                                                                       
20-JUN-24                                                                       

SQL> --03
SQL> select abs(-45) from DUAL;

  ABS(-45)                                                                      
----------                                                                      
        45                                                                      

SQL> --04
SQL> select power(2,4) from DUAL;

POWER(2,4)                                                                      
----------                                                                      
        16                                                                      

SQL> --05
SQL> select sqrt(25) from DUAL;

  SQRT(25)                                                                      
----------                                                                      
         5                                                                      

SQL> --06
SQL> select exp(5) from DUAL;

    EXP(5)                                                                      
----------                                                                      
148.413159                                                                      

SQL> --07
SQL> select greatest(5,45,7,89,1,524,14,36,4654,45) from DUAL;

GREATEST(5,45,7,89,1,524,14,36,4654,45)                                         
---------------------------------------                                         
                                   4654                                         

SQL> --08
SQL> select least(5,45,7,89,1,524,14,36,4654,45) from DUAL;

LEAST(5,45,7,89,1,524,14,36,4654,45)                                            
------------------------------------                                            
                                   1                                            

SQL> --09
SQL> select mod(5,2) from DUAL;

  MOD(5,2)                                                                      
----------                                                                      
         1                                                                      

SQL> --10
SQL> select trunc(5.9589) from DUAL;

TRUNC(5.9589)                                                                   
-------------                                                                   
            5                                                                   

SQL> --11
SQL> select floor(5.9589) from DUAL;

FLOOR(5.9589)                                                                   
-------------                                                                   
            5                                                                   

SQL> select trunc(5.589) from DUAL;

TRUNC(5.589)                                                                    
------------                                                                    
           5                                                                    

SQL> --12
SQL> select ceil(25.50) from DUAL;

CEIL(25.50)                                                                     
-----------                                                                     
         26                                                                     

SQL> --13
SQL> select lower('AKASH') from DUAL;

LOWER                                                                           
-----                                                                           
akash                                                                           

SQL> --14
SQL> select upper('akash') from DUAL;

UPPER                                                                           
-----                                                                           
AKASH                                                                           

SQL> --15
SQL> select initcap('my name is akash anuragi') from DUAL;

INITCAP('MYNAMEISAKASHAN                                                        
------------------------                                                        
My Name Is Akash Anuragi                                                        

SQL> --16
SQL> select ascii('A') from DUAL;

ASCII('A')                                                                      
----------                                                                      
        65                                                                      

SQL> --17
SQL> select length('Akash anuragi') from DUAL;

LENGTH('AKASHANURAGI')                                                          
----------------------                                                          
                    13                                                          

SQL> --18                                                                 
SQL> select ltrim('akash anuragi','a') from DUAL;

LTRIM('AKASH                                                                    
------------                                                                    
kash anuragi                                                                    

SQL> select ltrim('akash anuragi','akash') from DUAL;

LTRIM('A                                                                        
--------                                                                        
 anuragi                                                                        

SQL> --19
SQL> select rtrim('akash anuragi','a') from DUAL;

RTRIM('AKASHA                                                                   
-------------                                                                   
akash anuragi                                                                   

SQL> select rtrim('akash anuragi','i') from DUAL;

RTRIM('AKASH                                                                    
------------                                                                    
akash anurag                                                                    

SQL> --20
SQL> select add_months(sysdate,3) from DUAL;

ADD_MONTH                                                                       
---------                                                                       
20-SEP-24                                                                       

SQL> select add_months(sysdate) from DUAL;
select add_months(sysdate) from DUAL
       *
ERROR at line 1:
ORA-00909: invalid number of arguments 


SQL> select add_months(sysdate,0) from DUAL;

ADD_MONTH                                                                       
---------                                                                       
20-JUN-24                                                                       

SQL> --21
SQL> select sysdate,last_day(sysdate) from DUAL;

SYSDATE   LAST_DAY(                                                             
--------- ---------                                                             
20-JUN-24 30-JUN-24                                                             

SQL> --22
SQL> select months_between('20-jan-24','20-jun-24') from DUAL;

MONTHS_BETWEEN('20-JAN-24','20-JUN-24')                                         
---------------------------------------                                         
                                     -5                                         

SQL> --23
SQL> select next_day('20-jan-24','thusday') from DUAL;

NEXT_DAY(                                                                       
---------                                                                       
25-JAN-24                                                                       

SQL> --24
SQL> select to_date('20-10-24','dd-mm-yy') from DUAL;

TO_DATE('                                                                       
---------                                                                       
20-OCT-24                                                                       

SQL> spool off;
