SQL>  desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                               NOT NULL NUMBER(10)
 NAME                                               VARCHAR2(32)
 EXPERIENCE_YEARS                                   NUMBER(10)

SQL> desc Project;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PROJECT_ID                                NOT NULL NUMBER(10)
 EMPLOYEE_ID                               NOT NULL NUMBER(10)

SQL> select * from employee;

EMPLOYEE_ID NAME                             EXPERIENCE_YEARS                   
----------- -------------------------------- ----------------                   
          1 Khaled                                          3                   
          2 Ali                                             2                   
          3 John                                            1                   
          4 Doe                                             2                   

SQL> select * from Project;

PROJECT_ID EMPLOYEE_ID                                                          
---------- -----------                                                          
         1           1                                                          
         1           2                                                          
         1           3                                                          
         2           1                                                          
         2           4                                                          

SQL> -- Solution.
SQL> Select p.project_id,
  2  Round(AVG(e.experience_years),2) as average_years
  3  From project p
  4    join Employee e
  5  ON p.employee_id = e.employee_id
  6  group by p.project_id;

PROJECT_ID AVERAGE_YEARS                                                        
---------- -------------                                                        
         1             2                                                        
         2           2.5                                                        

SQL> commit;

Commit complete.