SQL> desc emp
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                       NOT NULL NUMBER(10)
 ENAME                                              VARCHAR2(23)
 BDATE                                              DATE
 TITLE                                              VARCHAR2(23)
 SALARY                                             NUMBER(10)
 DNO                                                NUMBER(10)

SQL> desc dept
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DNO                                       NOT NULL NUMBER(10)
 DNAME                                              VARCHAR2(23)
 MGRENO                                             NUMBER(10)

SQL> desc proj
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PNO                                       NOT NULL NUMBER(10)
 PNAME                                              VARCHAR2(23)
 BUDGET                                             NUMBER(15)
 DNO                                                NUMBER(10)

SQL> desc workson
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                                NUMBER(10)
 PNO                                                NUMBER(10)
 RESP                                               VARCHAR2(24)
 HOURS                                              NUMBER(2)

SQL> select * from emp;

       ENO ENAME                   BDATE     TITLE                       SALARY 
---------- ----------------------- --------- ----------------------- ---------- 
       DNO                                                                      
----------                                                                      
       101 Akash Anuragi           12-DEC-02 SE                           90000 
       201                                                                      
                                                                                
       102 Harsh Kumar             23-MAR-01 SAP                          45000 
       202                                                                      
                                                                                
       103 Sagar                   01-NOV-03 Devops                       56000 
       203                                                                      
                                                                                

       ENO ENAME                   BDATE     TITLE                       SALARY 
---------- ----------------------- --------- ----------------------- ---------- 
       DNO                                                                      
----------                                                                      
       104 Zyan                    23-JUN-02 Java Dev                     56000 
       204                                                                      
                                                                                
       105 Kartik                  12-OCT-03 Networking                   23000 
       205                                                                      
                                                                                
       106 Akhil Singh             29-JAN-04 SA                           25000 
       206                                                                      
                                                                                

       ENO ENAME                   BDATE     TITLE                       SALARY 
---------- ----------------------- --------- ----------------------- ---------- 
       DNO                                                                      
----------                                                                      
       107 Rajan                   03-JAN-01 EE                           56004 
       207                                                                      
                                                                                

7 rows selected.

SQL> select * from dept;

       DNO DNAME                       MGRENO                                   
---------- ----------------------- ----------                                   
       201 consulting                     301                                   
       202 Human Resource                 302                                   
       203 Finance                        303                                   
       204 Accounting                     304                                   
       205 Human Resource                 305                                   
       206 Accounting                     306                                   
       207 consulting                     307                                   

7 rows selected.

SQL> select * from proj;

       PNO PNAME                       BUDGET        DNO                        
---------- ----------------------- ---------- ----------                        
       401 Todo List                    12000        201                        
       402 gaming                        2000        202                        
       403 Commercial web               12000        203                        
       404 Hospital management          56000        204                        
       405 College Management           80000        205                        

SQL> select * from workson;

       ENO        PNO RESP                          HOURS                       
---------- ---------- ------------------------ ----------                       
       101        401 Manager                          10                       
       102        402 Boss                              5                       
       103        403 null                              8                       
       104        404 HR                                8                       
       105        405 Interviewer                       6                       

SQL> --01. Write an SQL query that returns the project number and name for projects with a budget greater than 80,000.
SQL> select pno, pname from proj
  2  where budget>12000;

       PNO PNAME                                                                
---------- -----------------------                                              
       404 Hospital management                                                  
       405 College Management                                                   

SQL> --02. Write an SQL query that returns all works on records where hours worked is less than 10 and the responsibility is 'Manager'.
SQL> select * from workson
  2  where hours <10 and resp ='Manager';

no rows selected

SQL> select * from workson
  2  where hours <=10 and resp ='Manager';

       ENO        PNO RESP                          HOURS                       
---------- ---------- ------------------------ ----------                       
       101        401 Manager                          10                       

SQL> --03. Write an SQL query that returns the employees (number and name only) who have a title of 'EE' or 'SA' and make more than $35,000.
SQL> select eno, ename from emp
  2  where title ='EE' or title= 'SA' and salary>35000;

       ENO ENAME                                                                
---------- -----------------------                                              
       107 Rajan                                                                

SQL> --04. Write an SQL query that returns the employees (name only) in department '201' ordered by decreasing salary.
SQL> select ename from emp
  2  where dno =201
  3  order by desc;
order by desc
         *
ERROR at line 3:
ORA-00936: missing expression 


SQL> ed
Wrote file afiedt.buf

  1  select ename from emp
  2  where dno =201
  3* order by salary desc
SQL> /

ENAME                                                                           
-----------------------                                                         
Akash Anuragi                                                                   

SQL> select ename from emp
  2  order by salary desc;

ENAME                                                                           
-----------------------                                                         
Akash Anuragi                                                                   
Rajan                                                                           
Sagar                                                                           
Zyan                                                                            
Harsh Kumar                                                                     
Akhil Singh                                                                     
Kartik                                                                          

7 rows selected.

SQL> --05. Write an SQL query that returns the departments (all fields) ordered by ascending  departmaent name.
SQL> select * from dept
  2  order by dname asc;

       DNO DNAME                       MGRENO                                   
---------- ----------------------- ----------                                   
       204 Accounting                     304                                   
       206 Accounting                     306                                   
       203 Finance                        303                                   
       205 Human Resource                 305                                   
       202 Human Resource                 302                                   
       207 consulting                     307                                   
       201 consulting                     301                                   

7 rows selected.

SQL> select * from dept
  2  order by dname ;

       DNO DNAME                       MGRENO                                   
---------- ----------------------- ----------                                   
       204 Accounting                     304                                   
       206 Accounting                     306                                   
       203 Finance                        303                                   
       205 Human Resource                 305                                   
       202 Human Resource                 302                                   
       207 consulting                     307                                   
       201 consulting                     301                                   

7 rows selected.

SQL> --06. Write an SQL query that returns the employee name, department name, and employee title.
SQL> select emp.ename,emp.title,dept.dname from emp, dept
  2  where emp.dno =dept.dno;

ENAME                   TITLE                   DNAME                           
----------------------- ----------------------- -----------------------         
Akash Anuragi           SE                      consulting                      
Harsh Kumar             SAP                     Human Resource                  
Sagar                   Devops                  Finance                         
Zyan                    Java Dev                Accounting                      
Kartik                  Networking              Human Resource                  
Akhil Singh             SA                      Accounting                      
Rajan                   EE                      consulting                      

7 rows selected.

SQL> --07. Write an SQL query that returns the project name, hours worked, and project number for all works on records where hours > 10.
SQL> select proj.pno,proj.pname, workson.hours from proj, workson
  2  where hours =10 and proj.pno =workson.pno;

       PNO PNAME                        HOURS                                   
---------- ----------------------- ----------                                   
       401 Todo List                       10                                   

SQL> --08. Write an SQL query that returns the employee numbers and salaries of all employees in the 'Consulting' department ordered by descending salary.
SQL> select eno,salary from emp, dept
  2  where dname ='consulting'
  3  AND emp.dno =dept.dno
  4  order by salary desc;

       ENO     SALARY                                                           
---------- ----------                                                           
       101      90000                                                           
       107      56004                                                           

SQL> select eno,salary from emp ,dept
  2  where dname ='consulting'
  3  order by salary desc;

       ENO     SALARY                                                           
---------- ----------                                                           
       101      90000                                                           
       101      90000                                                           
       107      56004                                                           
       107      56004                                                           
       103      56000                                                           
       104      56000                                                           
       103      56000                                                           
       104      56000                                                           
       102      45000                                                           
       102      45000                                                           
       106      25000                                                           

       ENO     SALARY                                                           
---------- ----------                                                           
       106      25000                                                           
       105      23000                                                           
       105      23000                                                           

14 rows selected.

SQL> --09. Write an SQL query that returns the project name, department name, and budget for all projects with a budget < $50,000.
SQL> select proj.pname, proj.budget, dept.dname from proj, dept
  2  where budget<50000 and proj.dno= dept.dno;

PNAME                       BUDGET DNAME                                        
----------------------- ---------- -----------------------                      
Todo List                    12000 consulting                                   
gaming                        2000 Human Resource                               
Commercial web               12000 Finance                                      

SQL> --10. Write an SQL query that returns the employee name, project name, employee title, and hours for all works on records.
SQL> select emp.ename, proj.pname, emp.title, workson.hours from emp, proj, workson
  2  where emp.eno =workson.eno and proj.pno =workson.pno;

ENAME                   PNAME                   TITLE                           
----------------------- ----------------------- -----------------------         
     HOURS                                                                      
----------                                                                      
Akash Anuragi           Todo List               SE                              
        10                                                                      
                                                                                
Harsh Kumar             gaming                  SAP                             
         5                                                                      
                                                                                
Sagar                   Commercial web          Devops                          
         8                                                                      
                                                                                

ENAME                   PNAME                   TITLE                           
----------------------- ----------------------- -----------------------         
     HOURS                                                                      
----------                                                                      
Zyan                    Hospital management     Java Dev                        
         8                                                                      
                                                                                
Kartik                  College Management      Networking                      
         6                                                                      
                                                                                

SQL> commit;

Commit complete.


