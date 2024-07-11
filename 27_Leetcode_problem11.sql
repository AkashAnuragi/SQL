SQL> desc employee;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                     NOT NULL NUMBER(9)
 NAME                                               VARCHAR2(23)
 SUPERVISOR                                         NUMBER(23)
 SALARY                                             NUMBER(10)

SQL> desc bonus;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                     NOT NULL NUMBER(9)
 BONUS                                              NUMBER(10)

SQL> -- Solution.
SQL> select e.name, b.bonus from Employee e
  2   LEFT JOIN Bonus b ON e.empid = b.empid
  3  where bonus < 1000 OR bonus is null
  4  order by bonus desc;

NAME                         BONUS                                              
----------------------- ----------                                              
Brad                                                                            
John                                                                            
Dan                            500                                              

SQL> commit;

Commit complete.
