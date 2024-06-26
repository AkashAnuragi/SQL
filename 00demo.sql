SQL> create table INTRO(
  2  id varchar(12),
  3  name char(12));

Table created.

SQL> desc intro;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 VARCHAR2(12)
 NAME                                               CHAR(12)

SQL> insert into intro values(01,'akash');

1 row created.

SQL> insert into intro values(02,'ayush');

1 row created.

SQL> insert into intro values(03,'harsh');

1 row created.

SQL> insert into intro values(04,'sagar');

1 row created.

SQL> insert into intro values(05,'zyan');

1 row created.

SQL> select * from intro;

ID           NAME                                                               
------------ ------------                                                       
1            akash                                                              
2            ayush                                                              
3            harsh                                                              
4            sagar                                                              
5            zyan                                                               

SQL> commit;

Commit complete.
