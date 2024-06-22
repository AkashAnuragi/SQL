SQL> --Arithmatic Operators.
SQL> --ADD,Subtract, Multiply, Divide, Modulo .
SQL> Select 12 + 45 +165 from dual;

 12+45+165                                                                      
----------                                                                      
       222                                                                      

SQL> Select 45*21 from Dual;

     45*21                                                                      
----------                                                                      
       945                                                                      

SQL> Select 45-21 from Dual;

     45-21                                                                      
----------                                                                      
        24                                                                      

SQL> Select 45/21 from Dual;

     45/21                                                                      
----------                                                                      
2.14285714                                                                      

SQL> Select mod(5,2) from Dual;

  MOD(5,2)                                                                      
----------                                                                      
         1                                                                      

SQL> Select mod(50,2) from Dual;

 MOD(50,2)                                                                      
----------                                                                      
         0                                                                      

SQL> --Comperison Operators( =, >, <, >=, <=, <> or !=)
SQL> select 5=5 from dual;
select 5=5 from dual
        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected 


SQL> select * from STUD where id = 1;

no rows selected

SQL> select * from STUD where id = 2;

no rows selected

SQL> select * from STUD where id = 2;5
  2  ;
select * from STUD where id = 2;5
                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


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

SQL> select * from STUD where id = 101;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       101 Akash          ganga nagar                                           

SQL> select * from STUD where id >= 101;

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

SQL> select * from STUD where id > 101;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       102 Akash          Meerut;                                               
       103 Sagar          Delhi                     11210001                    
       106 Manish         Bihar                     11210005         18         
       104 Harsh          Mahoba                    11210002                    
       105 Aayu           U.K.                      11210003                    
       107 Ayush          Gwalior                   11210006         28         
       108 MUkesh         Wapi                       1121008                    
       109 Pankaj         Kanpur                    11210009         56         

8 rows selected.

SQL> select * from STUD where id < 101;

no rows selected

SQL> select * from STUD where id < 102;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       101 Akash          ganga nagar                                           

SQL> select * from STUD where id <= 102;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       101 Akash          ganga nagar                                           
       102 Akash          Meerut;                                               

SQL> select * from STUD where id != 102;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       101 Akash          ganga nagar                                           
       103 Sagar          Delhi                     11210001                    
       106 Manish         Bihar                     11210005         18         
       104 Harsh          Mahoba                    11210002                    
       105 Aayu           U.K.                      11210003                    
       107 Ayush          Gwalior                   11210006         28         
       108 MUkesh         Wapi                       1121008                    
       109 Pankaj         Kanpur                    11210009         56         

8 rows selected.

SQL> select * from STUD where id <> 102;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       101 Akash          ganga nagar                                           
       103 Sagar          Delhi                     11210001                    
       106 Manish         Bihar                     11210005         18         
       104 Harsh          Mahoba                    11210002                    
       105 Aayu           U.K.                      11210003                    
       107 Ayush          Gwalior                   11210006         28         
       108 MUkesh         Wapi                       1121008                    
       109 Pankaj         Kanpur                    11210009         56         

8 rows selected.

SQL> --Logical Operators(AND, OR, NOT)
SQL> select * from STUD where id = 102 AND id =105;

no rows selected

SQL> select * from STUD where id = 102 AND name = Akash;
select * from STUD where id = 102 AND name = Akash
                                             *
ERROR at line 1:
ORA-00904: "AKASH": invalid identifier 


SQL> select * from STUD where id = 102 AND name = 'Akash';

no rows selected

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

SQL> select * from STUD where id =102 AND name = 'Akash';

no rows selected

SQL> select * from STUD where id =102 AND name = 'akash';

no rows selected

SQL> Select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> Select * from STUDENT where name = 'Akash' AND roll_no =1 ;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         1 Akash                   Meerut                                       

SQL> select * from STUD where id =105 AND name = 'Aayu';

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       105 Aayu           U.K.                      11210003                    

SQL> select * from STUD where id =102 OR name = 'Aayu';

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       102 Akash          Meerut;                                               
       105 Aayu           U.K.                      11210003                    

SQL> select * from STUD where id =102 NOT name = 'Aayu';
select * from STUD where id =102 NOT name = 'Aayu'
                                 *
ERROR at line 1:
ORA-00933: SQL command not properly ended 


SQL> select * from STUD where NOT id =101;

        ID NAME           ADDRESS                      ADMID        AGE         
---------- -------------- ----------------------- ---------- ----------         
       102 Akash          Meerut;                                               
       103 Sagar          Delhi                     11210001                    
       106 Manish         Bihar                     11210005         18         
       104 Harsh          Mahoba                    11210002                    
       105 Aayu           U.K.                      11210003                    
       107 Ayush          Gwalior                   11210006         28         
       108 MUkesh         Wapi                       1121008                    
       109 Pankaj         Kanpur                    11210009         56         

8 rows selected.

SQL> --Other Operators(IN, NOT in ,BETWEEN, NOT BETWEEN ,LIKE,ANY,ALL,ANY, EXISTS).
SQL> Select * from emp;

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

SQL> select * from EMP where age IN(21,24);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         6 Kartik       Singhal           54000         24                      

SQL> select * from EMP where age  NOT IN(21,24);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         2 Sagar        Singh             45000         23                      
         5 Akhil        Singh             60000         23                      
         7 Akash        Goal              45000         23                      

SQL> select * from EMP where age  between 21and 24;

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

SQL> select * from EMP where salary  between 20000and 64000;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      
         5 Akhil        Singh             60000         23                      
         6 Kartik       Singhal           54000         24                      
         7 Akash        Goal              45000         23                      

6 rows selected.

SQL> select * from EMP where salary not between 20000and 64000;

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         4 Zayn         Abbas             85000         24                      

SQL> select * from EMP where name like '%h';
select * from EMP where name like '%h'
                        *
ERROR at line 1:
ORA-00904: "NAME": invalid identifier 


SQL> select * from EMP where empname like '%h';

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         3 Harsh        Kumar             56000         21                      
         7 Akash        Goal              45000         23                      

SQL> select * from EMP where empname like 'a';

no rows selected

SQL> select * from EMP where empname like 'a%';

no rows selected

SQL> select * from EMP where empname like 'A%';

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         5 Akhil        Singh             60000         23                      
         7 Akash        Goal              45000         23                      

SQL> select * from EMP where empname not like 'A%';

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         6 Kartik       Singhal           54000         24                      

SQL> select * from EMP where empname not like '%h';

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         4 Zayn         Abbas             85000         24                      
         5 Akhil        Singh             60000         23                      
         6 Kartik       Singhal           54000         24                      

SQL> select * from EMP where empid<any(select empid from EMP where salary < 85000);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         5 Akhil        Singh             60000         23                      
         6 Kartik       Singhal           54000         24                      

6 rows selected.

SQL> select * from EMP where empid<any(select empid from EMP where salary < 60000);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      
         4 Zayn         Abbas             85000         24                      
         5 Akhil        Singh             60000         23                      
         6 Kartik       Singhal           54000         24                      

6 rows selected.

SQL> select * from EMP where empid<any(select empid from EMP where salary > 60000);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         1 Akash        Anuragi           60000         21                      
         2 Sagar        Singh             45000         23                      
         3 Harsh        Kumar             56000         21                      

SQL> select * from EMP where empid>any(select empid from EMP where salary > 60000);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         7 Akash        Goal              45000         23                      
         6 Kartik       Singhal           54000         24                      
         5 Akhil        Singh             60000         23                      

SQL> select * from EMP where empid>any(select empid from EMP where salary < 60000);

     EMPID EMPNAME      LASTNAME         SALARY        AGE                      
---------- ------------ ------------ ---------- ----------                      
         7 Akash        Goal              45000         23                      
         6 Kartik       Singhal           54000         24                      
         5 Akhil        Singh             60000         23                      
         4 Zayn         Abbas             85000         24                      
         3 Harsh        Kumar             56000         21                      

SQL> select All empname from EMP;

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

SQL> select * from ADDMISSION;

        ID      ADMID NAME                    ADDRESS                           
---------- ---------- ----------------------- -----------------------           
       101   11210001 Sagar                   Delhi                             
       106   11210005 Manish                  Bihar                             
       106   11210006 Manish                  Bihar                             

SQL> select STUD.name from STUD where exists(select address from ADDMISSION where STUD.id = ADDMISSION.id);

NAME                                                                            
--------------                                                                  
Akash                                                                           
Manish                                                                          

SQL> select STUD.name,STUD.address from STUD where exists(select address from ADDMISSION where STUD.id = ADDMISSION.id);

NAME           ADDRESS                                                          
-------------- -----------------------                                          
Akash          ganga nagar                                                      
Manish         Bihar                                                            

SQL> commit;

Commit complete.
