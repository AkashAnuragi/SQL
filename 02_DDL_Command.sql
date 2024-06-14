SQL> --Create Command
SQL> create table COLLEGE
  2  ( ColName  varchar(23),
  3    ColId    number(23),
  4    ColAdd   varchar(34)
  5  );

Table created.

SQL> desc COLLEGE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COLNAME                                            VARCHAR2(23)
 COLID                                              NUMBER(23)
 COLADD                                             VARCHAR2(34)

SQL> -- Drop Command
SQL> -- we already create a table which name is EMP . so Now we use Drop command in this table.
SQL> drop table EMP;

Table dropped.

SQL> --Alter Command
SQL> -- for Adding column
SQL> alter table COLLEGE add ColTel_NO number(10);

Table altered.

SQL> --for Drop a column
SQL> desc COLLEGE
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COLNAME                                            VARCHAR2(23)
 COLID                                              NUMBER(23)
 COLADD                                             VARCHAR2(34)
 COLTEL_NO                                          NUMBER(10)

SQL> -- for droping a column
SQL> alter table COLLEGE drop column ColTel_No;

Table altered.

SQL> desc COLLEGE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COLNAME                                            VARCHAR2(23)
 COLID                                              NUMBER(23)
 COLADD                                             VARCHAR2(34)

SQL> -- for Modifying a column
SQL> alter table COLLEGE modify ColId number(12);

Table altered.

SQL> desc COLLEGE
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COLNAME                                            VARCHAR2(23)
 COLID                                              NUMBER(12)
 COLADD                                             VARCHAR2(34)

SQL> --Truncate Command
SQL> desc student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(10)
 NAME                                               VARCHAR2(23)
 ADDRESS                                            VARCHAR2(23)

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
       132 akash                   meerut        
SQL> -- here are the table STUDENT so we use truncate command in this table                               

SQL> truncate table STUDENT;

Table truncated.

SQL> desc STUDENT
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(10)
 NAME                                               VARCHAR2(23)
 ADDRESS                                            VARCHAR2(23)

SQL> select * from STUDENT;

no rows selected

