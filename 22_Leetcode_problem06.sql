SQL> desc employees
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(12)
 NAME                                               VARCHAR2(23)

SQL> desc employeeUNI;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(12)
 UNIQUE_ID                                 NOT NULL NUMBER(12)

SQL> select * from Employees;

        ID NAME                                                                 
---------- -----------------------                                              
         1 Alice                                                                
         7  Bob                                                                 
        11  Meir                                                                
        90  Winston                                                             
         3  Jonthan                                                             

SQL> select * from EmployeeUNI;

        ID  UNIQUE_ID                                                           
---------- ----------                                                           
         3          1                                                           
        11          2                                                           
        90          3                                                           

SQL> -- SOLUTION.
SQL> SELECT E.name, EU.unique_id
  2  FROM Employees E
  3  LEFT JOIN EmployeeUNI EU ON E.id = EU.id;

NAME                     UNIQUE_ID                                              
----------------------- ----------                                              
 Jonthan                         1                                              
 Meir                            2                                              
 Winston                         3                                              
Alice                                                                           
 Bob                                                                            

SQL> -- Another Method.
SQL> SELECT E.name, EU.unique_id
  2  FROM Employees E
  3  LEFT JOIN EmployeeUNI EU ON E.id = EU.id
  4  Order by name;

NAME                     UNIQUE_ID                                              
----------------------- ----------                                              
 Bob                                                                            
 Jonthan                         1                                              
 Meir                            2                                              
 Winston                         3                                              
Alice                                                                           

SQL> -- Another Method.
SQL> SELECT E.name, EU.unique_id
  2  FROM Employees E
  3  LEFT JOIN EmployeeUNI EU ON E.id = EU.id
  4  Order by name asc;

NAME                     UNIQUE_ID                                              
----------------------- ----------                                              
 Bob                                                                            
 Jonthan                         1                                              
 Meir                            2                                              
 Winston                         3                                              
Alice                                                                           

SQL> -- Another Method.
SQL> SELECT E.name, EU.unique_id
  2  FROM Employees E
  3  LEFT JOIN EmployeeUNI EU ON E.id = EU.id
  4 Order by E.id;

NAME                     UNIQUE_ID                                              
----------------------- ----------                                              
Alice                                                                           
 Jonthan                         1                                              
 Bob                                                                            
 Meir                            2                                              
 Winston                         3                                              

SQL> commit;

Commit complete.


