SQL> select  * from STUD;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       101 Akash          ganga nagar                                           
       102 Akash          Meerut;                                               
       103 Sagar          Delhi                     11210001                    
       106 Manish         Bihar                     11210005         18         
       104 Harsh          Mahoba                    11210002                    
       105 Aayu           U.K.                      11210003                    
       107 Ayush          Gwalior                   11210006         28         
       108 MUkesh         Wapi                       1121008                    
       109 Pankaj         Kanpur                    11210009         56         

9 rows selected.

SQL> select  * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> --UNION Operators
SQL> select  name from STUDENT union select name from STUD;

NAME                                                                            
-----------------------                                                         
Akhil                                                                           
Archi                                                                           
Akash                                                                           
Harsh                                                                           
Sagar                                                                           
Zyan                                                                            
Akash                                                                           
Manish                                                                          
Aayu                                                                            
Ayush                                                                           
MUkesh                                                                          

NAME                                                                            
-----------------------                                                         
Pankaj                                                                          

12 rows selected.

SQL> select  name from STUDENT union all select name from STUD;

NAME                                                                            
-----------------------                                                         
Akhil                                                                           
Archi                                                                           
Akash                                                                           
Harsh                                                                           
Sagar                                                                           
Zyan                                                                            
Akash                                                                           
Akash                                                                           
Sagar                                                                           
Manish                                                                          
Harsh                                                                           

NAME                                                                            
-----------------------                                                         
Aayu                                                                            
Ayush                                                                           
MUkesh                                                                          
Pankaj                                                                          

15 rows selected.

SQL> --As Operator.
SQL> select Name As sname from STUD;

SNAME                                                                           
--------------                                                                  
Akash                                                                           
Akash                                                                           
Sagar                                                                           
Manish                                                                          
Harsh                                                                           
Aayu                                                                            
Ayush                                                                           
MUkesh                                                                          
Pankaj                                                                          

9 rows selected.

SQL> select Name  sname from STUD;

SNAME                                                                           
--------------                                                                  
Akash                                                                           
Akash                                                                           
Sagar                                                                           
Manish                                                                          
Harsh                                                                           
Aayu                                                                            
Ayush                                                                           
MUkesh                                                                          
Pankaj                                                                          

9 rows selected.

SQL> select Name  from STUD  INTERN;

NAME                                                                            
--------------                                                                  
Akash                                                                           
Akash                                                                           
Sagar                                                                           
Manish                                                                          
Harsh                                                                           
Aayu                                                                            
Ayush                                                                           
MUkesh                                                                          
Pankaj                                                                          

9 rows selected.

SQL> spool off;
