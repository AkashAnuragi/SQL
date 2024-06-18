SQL> select * from EMP;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         5 Akhil        Singh             60000         23                      
         6 Kartik       Singhal           54000         24                      
         7 Akash        Goal              45000         23                      

7 rows selected.

SQL> --DISTINCT Command.
SQL> select distinct empname from EMP;

EMPNAME                                                                         
------------                                                                    
Akash                                                                           
Sagar                                                                           
Harsh                                                                           
Zayn                                                                            
Akhil                                                                           
Kartik                                                                          
Akash                                                                           

7 rows selected.

SQL> select distinct age from EMP;

       AGE                                                                      
----------                                                                      
        21                                                                      
        23                                                                      
        24                                                                      

SQL> --ORDER BY Command.

SQL> select * from EMP
  2  order by empname DESC;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         4 Zayn         Abbas             85000         24                      
         2 Sagar        Singh             45000         23                      
         6 Kartik       Singhal           54000         24                      
         3 Harsh        Kumar             56000         21                      
         5 Akhil        Singh             60000         23                      
         1 Akash        Anuragi           60000         21                      
         7 Akash        Goal              45000         23                      

7 rows selected.

SQL> select * from EMP
  2  order by empname ASC;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         7 Akash        Goal              45000         23                      
         1 Akash        Anuragi           60000         21                      
         5 Akhil        Singh             60000         23                      
         3 Harsh        Kumar             56000         21                      
         6 Kartik       Singhal           54000         24                      
         2 Sagar        Singh             45000         23                      
         4 Zayn         Abbas             85000         24                      

7 rows selected.

SQL> -- GROUP BY Command.
SQL> select count(salary)from EMP
  2  group by age;

COUNT(SALARY)                                                                   
-------------                                                                   
            2                                                                   
            3                                                                   
            2                                                                   

SQL> select count(salary),age from EMP
  2  group by age;

COUNT(SALARY)        AGE                                                        
------------- ----------                                                        
            2         21                                                        
            3         23                                                        
            2         24                                                        

SQL> -- HAVING CLAUSE Command.
SQL> select sum(salary) from EMP group by age
  2  having sum(salary)>=50000;

SUM(SALARY)                                                                     
-----------                                                                     
     116000                                                                     
     150000                                                                     
     139000                                                                     

SQL> select sum(salary) from EMP group by age
  2  having sum(salary)>=500000;

no rows selected

SQL> select sum(salary),age from EMP group by age
  2  having sum(salary)>=50000;

SUM(SALARY)        AGE                                                          
----------- ----------                                                          
     116000         21                                                          
     150000         23                                                          
     139000         24                                                                                                                    

SQL> --WHERE CLAUSE Command.
SQL> select * from EMP
  2  where salary>=45000;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         5 Akhil        Singh             60000         23                      
         6 Kartik       Singhal           54000         24                      
         7 Akash        Goal              45000         23                      

7 rows selected.

SQL> select * from EMP
  2  where salary>=55000;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         5 Akhil        Singh             60000         23                      


