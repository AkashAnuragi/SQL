SQL> select * from STUD;

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

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> select * from ADDMISSION;

        ID      ADMID NAME                    ADDRESS                           
---------- ---------- ----------------------- -----------------------           
       101   11210001 Sagar                   Delhi                             
       106   11210005 Manish                  Bihar                             
       106   11210006 Manish                  Bihar                             

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

SQL> --INNER Join.
SQL> select EMP.salary ,STUDENT.name from EMP
  2  inner join STUDENT on STUDENT.roll_no = EMP.empid;

    SALARY NAME                                                                 
---------- -----------------------                                              
     60000 Akash                                                                
     45000 Harsh                                                                
     56000 Sagar                                                                
     85000 Zyan                                                                 
     54000 Akhil                                                                
     45000 Archi                                                                

6 rows selected.

SQL> -- LEFT Join.
SQL> select EMP.salary ,STUDENT.name from EMP
  2  left join STUDENT on STUDENT.roll_no = EMP.empid;

    SALARY NAME                                                                 
---------- -----------------------                                              
     54000 Akhil                                                                
     45000 Archi                                                                
     60000 Akash                                                                
     45000 Harsh                                                                
     56000 Sagar                                                                
     85000 Zyan                                                                 
     60000                                                                      

7 rows selected.

SQL> -- RIGHT Join.
SQL> select EMP.salary ,STUDENT.name from EMP
  2  full join STUDENT on STUDENT.roll_no = EMP.empid;

    SALARY NAME                                                                 
---------- -----------------------                                              
     60000 Akash                                                                
     45000 Harsh                                                                
     56000 Sagar                                                                
     85000 Zyan                                                                 
     60000                                                                      
     54000 Akhil                                                                
     45000 Archi                                                                

7 rows selected.

SQL> select EMP.salary ,STUDENT.name from EMP
  2  full join STUDENT on STUDENT.roll_no = EMP.empid;

    SALARY NAME                                                                 
---------- -----------------------                                              
     60000 Akash                                                                
     45000 Harsh                                                                
     56000 Sagar                                                                
     85000 Zyan                                                                 
     60000                                                                      
     54000 Akhil                                                                
     45000 Archi                                                                

7 rows selected.

SQL> select EMP.salary ,STUDENT.name from EMP
  2  full join STUDENT on STUDENT.roll_no = EMP.empid;

    SALARY NAME                                                                 
---------- -----------------------                                              
     60000 Akash                                                                
     45000 Harsh                                                                
     56000 Sagar                                                                
     85000 Zyan                                                                 
     60000                                                                      
     54000 Akhil                                                                
     45000 Archi                                                                

7 rows selected.

SQL> select EMP.salary ,STUDENT.name from STUDENT
  2  full join EMP on STUDENT.roll_no = EMP.empid;

    SALARY NAME                                                                 
---------- -----------------------                                              
     60000 Akash                                                                
     45000 Harsh                                                                
     56000 Sagar                                                                
     85000 Zyan                                                                 
     60000                                                                      
     54000 Akhil                                                                
     45000 Archi                                                                

7 rows selected.

SQL> select EMP.salary ,STUDENT.name,EMP.lastname from STUDENT
  2  full join EMP on STUDENT.roll_no = EMP.empid;

    SALARY NAME                    LASTNAME                                     
---------- ----------------------- ------------                                 
     60000 Akash                   Anuragi                                      
     45000 Harsh                   Singh                                        
     56000 Sagar                   Kumar                                        
     85000 Zyan                    Abbas                                        
     60000                         Singh                                        
     54000 Akhil                   Singhal                                      
     45000 Archi                   Goal                                         

7 rows selected.

SQL> commit;

Commit complete.
