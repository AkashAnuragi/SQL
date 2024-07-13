SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(12)
 NAME                                               VARCHAR2(10)
 DEPARTMENT                                         VARCHAR2(12)
 MANAGERID                                          NUMBER(10)

SQL> select * from employee;

        ID NAME       DEPARTMENT    MANAGERID                                   
---------- ---------- ------------ ----------                                   
       101 John       A                                                         
       102 Dan        A                   101                                   
       103 James      A                   101                                   
       104 Amy        A                   101                                   
       105 Anne       A                   101                                   
       106 Ron        B                   101                                   

6 rows selected.

SQL> -- Solution.
SQL> Select  name from Employee
  2  where id in (Select managerId from employee
  3  Group by managerId
  4  having count(managerId)>=5
  5  );

NAME                                                                            
----------                                                                      
John                                                                            

SQL> commit;

Commit complete.

SQL> spool off;
