
SQL> --Create Command
SQL> create table EMP
  2  ( EName  varchar(23),
  3    ENo    number(12),
  4    DOB    date,
  5    Salary number(7,2)
  6  );

Table created.

SQL> desc EMP ;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENAME                                              VARCHAR2(23)
 ENO                                                NUMBER(12)
 DOB                                                DATE
 SALARY                                             NUMBER(7,2)

