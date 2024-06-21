SQL> create table STUD(
  2  id    number(12),
  3  name  varchar(14) not null,
  4  address varchar(23)
  5  );

Table created.

SQL> desc STUD;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(12)
 NAME                                      NOT NULL VARCHAR2(14)
 ADDRESS                                            VARCHAR2(23)

SQL> insert into STUD values(&id,'&name', '&address');
Enter value for id: 101
Enter value for name: Akash
Enter value for address: ganga nagar
old   1: insert into STUD values(&id,'&name', '&address')
new   1: insert into STUD values(101,'Akash', 'ganga nagar')

1 row created.

SQL> /
Enter value for id: 102
Enter value for name: Akash 
Enter value for address: Meerut;
old   1: insert into STUD values(&id,'&name', '&address')
new   1: insert into STUD values(102,'Akash ', 'Meerut;')

1 row created.

SQL> /
Enter value for id: 103
Enter value for name: 
Enter value for address: mumbai
old   1: insert into STUD values(&id,'&name', '&address')
new   1: insert into STUD values(103,'', 'mumbai')
insert into STUD values(103,'', 'mumbai')
                            *
ERROR at line 1:
ORA-01400: cannot insert NULL into ("SYSTEM"."STUD"."NAME") 


SQL> --UNIQUE
SQL> alter table STUD add admId number(10);

Table altered.

SQL> desc STUD;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(12)
 NAME                                      NOT NULL VARCHAR2(14)
 ADDRESS                                            VARCHAR2(23)
 ADMID                                              NUMBER(10)

SQL> insert into STUD values(&id,'&name', '&address',&admId);
Enter value for id: 103
Enter value for name: Sagar
Enter value for address: Delhi
Enter value for admid: 11210001
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(103,'Sagar', 'Delhi',11210001)

1 row created.

SQL> /
Enter value for id: 104
Enter value for name: Harsh
Enter value for address: Goa
Enter value for admid: 11210001
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(104,'Harsh', 'Goa',11210001)

1 row created.

SQL> alter table STUD modify adm number(12) unique;
alter table STUD modify adm number(12) unique
                        *
ERROR at line 1:
ORA-00904: "ADM": invalid identifier 


SQL> alter table STUD modify admId number(12) unique;
alter table STUD modify admId number(12) unique
*
ERROR at line 1:
ORA-02299: cannot validate (SYSTEM.SYS_C008325) - duplicate keys found 


SQL> delete from STUD where id =104;

1 row deleted.

SQL> select * from STUD;

        ID NAME           ADDRESS                      ADMID                    
---------- -------------- ----------------------- ----------                    
       101 Akash          ganga nagar                                           
       102 Akash          Meerut;                                               
       103 Sagar          Delhi                     11210001                    

SQL> alter table STUD modify admId number(12) unique;

Table altered.

SQL> desc STUD;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(12)
 NAME                                      NOT NULL VARCHAR2(14)
 ADDRESS                                            VARCHAR2(23)
 ADMID                                              NUMBER(12)

SQL> insert into STUD values(&id,'&name', '&address',&admId);
Enter value for id: 104
Enter value for name: Harsh
Enter value for address: Mahoba
Enter value for admid: 11210002
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(104,'Harsh', 'Mahoba',11210002)

1 row created.

SQL> /
Enter value for id: 105
Enter value for name: Aayu
Enter value for address: U.K
Enter value for admid: 11210002
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(105,'Aayu', 'U.K',11210002)
insert into STUD values(105,'Aayu', 'U.K',11210002)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008326) violated 


SQL> /
Enter value for id: 105
Enter value for name: Aayu
Enter value for address: U.K.
Enter value for admid: 
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(105,'Aayu', 'U.K.',)
insert into STUD values(105,'Aayu', 'U.K.',)
                                           *
ERROR at line 1:
ORA-00936: missing expression 


SQL> --PRIMARY KEY
SQL> alter table STUD modify Id number(12) primary key;

Table altered.

SQL> desc STUD;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(12)
 NAME                                      NOT NULL VARCHAR2(14)
 ADDRESS                                            VARCHAR2(23)
 ADMID                                              NUMBER(12)

SQL> insert into STUD values(&id,'&name', '&address',&admId);
Enter value for id: 105
Enter value for name: Aayu
Enter value for address: U.K.
Enter value for admid: 11210003
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(105,'Aayu', 'U.K.',11210003)

1 row created.

SQL> /
Enter value for id: 
Enter value for name: Zyan
Enter value for address: Gujrat
Enter value for admid: 11210004
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(,'Zyan', 'Gujrat',11210004)
insert into STUD values(,'Zyan', 'Gujrat',11210004)
                        *
ERROR at line 1:
ORA-00936: missing expression 


SQL> /
Enter value for id: 105
Enter value for name: Zyan
Enter value for address: Gujrat
Enter value for admid: 11210004
old   1: insert into STUD values(&id,'&name', '&address',&admId)
new   1: insert into STUD values(105,'Zyan', 'Gujrat',11210004)
insert into STUD values(105,'Zyan', 'Gujrat',11210004)
*
ERROR at line 1:
ORA-00001: unique constraint (SYSTEM.SYS_C008327) violated 


SQL> --CHECK Constraints
SQL> alter table STUD add age number(3) check (age>=18);

Table altered.

SQL> desc STUD;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(12)
 NAME                                      NOT NULL VARCHAR2(14)
 ADDRESS                                            VARCHAR2(23)
 ADMID                                              NUMBER(12)
 AGE                                                NUMBER(3)

SQL> insert into STUD values(&id,'&name', '&address',&admId,&age);
Enter value for id: 106
Enter value for name: Manish
Enter value for address: Bihar
Enter value for admid: 11210005
Enter value for age: 18
old   1: insert into STUD values(&id,'&name', '&address',&admId,&age)
new   1: insert into STUD values(106,'Manish', 'Bihar',11210005,18)

1 row created.

SQL> /
Enter value for id: 107
Enter value for name: Ayush
Enter value for address: Gwalior
Enter value for admid: 11210006
Enter value for age: 28
old   1: insert into STUD values(&id,'&name', '&address',&admId,&age)
new   1: insert into STUD values(107,'Ayush', 'Gwalior',11210006,28)

1 row created.

SQL> /
Enter value for id: 108
Enter value for name: Sandeep
Enter value for address: Panna
Enter value for admid: 11210007
Enter value for age: 16
old   1: insert into STUD values(&id,'&name', '&address',&admId,&age)
new   1: insert into STUD values(108,'Sandeep', 'Panna',11210007,16)
insert into STUD values(108,'Sandeep', 'Panna',11210007,16)
*
ERROR at line 1:
ORA-02290: check constraint (SYSTEM.SYS_C008328) violated 


SQL> --FOREIGN KEY
SQL> create Table Addmission (
  2  id   number(12) references STUD(id),
  3  admID number(12) primary key,
  4  name varchar(23),
  5  address varchar(23)
  6  );

Table created.

SQL> desc ADMISSION;
ERROR:
ORA-04043: object ADMISSION does not exist 


SQL> desc ADDMISSION;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                                 NUMBER(12)
 ADMID                                     NOT NULL NUMBER(12)
 NAME                                               VARCHAR2(23)
 ADDRESS                                            VARCHAR2(23)

SQL> insert into Addmission values(&id, &admId, '&name', '&address');
Enter value for id: 101
Enter value for admid: 11210001
Enter value for name: Sagar
Enter value for address: Delhi
old   1: insert into Addmission values(&id, &admId, '&name', '&address')
new   1: insert into Addmission values(101, 11210001, 'Sagar', 'Delhi')

1 row created.

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

7 rows selected.

SQL> insert into Addmission values(&id, &admId, '&name', '&address');
Enter value for id: 106
Enter value for admid: 11210005
Enter value for name: Manish
Enter value for address: Bihar
old   1: insert into Addmission values(&id, &admId, '&name', '&address')
new   1: insert into Addmission values(106, 11210005, 'Manish', 'Bihar')

1 row created.

SQL> /
Enter value for id: 
Enter value for admid: 11210002
Enter value for name: Harsh
Enter value for address: Mahoba
old   1: insert into Addmission values(&id, &admId, '&name', '&address')
new   1: insert into Addmission values(, 11210002, 'Harsh', 'Mahoba')
insert into Addmission values(, 11210002, 'Harsh', 'Mahoba')
                              *
ERROR at line 1:
ORA-00936: missing expression 


SQL> /
Enter value for id: 106
Enter value for admid: 11210006
Enter value for name: Manish
Enter value for address: Bihar
old   1: insert into Addmission values(&id, &admId, '&name', '&address')
new   1: insert into Addmission values(106, 11210006, 'Manish', 'Bihar')

1 row created.

SQL> select * from ADDMISSION;

        ID      ADMID NAME                    ADDRESS                           
---------- ---------- ----------------------- -----------------------           
       101   11210001 Sagar                   Delhi                             
       106   11210005 Manish                  Bihar                             
       106   11210006 Manish                  Bihar                             

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

7 rows selected.

  1  select * From ADDMISSION,STUD
  2* where ADDMISSION.id = STUD.id 
SQL> /

        ID      ADMID NAME                    ADDRESS                         ID
---------- ---------- ----------------------- ----------------------- ----------
NAME           ADDRESS                      ADMID        AGE                    
-------------- ----------------------- ---------- ----------                    
       101   11210001 Sagar                   Delhi                          101
Akash          ganga nagar                                                      
                                                                                
       106   11210005 Manish                  Bihar                          106
Manish         Bihar                     11210005         18                    
                                                                                
       106   11210006 Manish                  Bihar                          106
Manish         Bihar                     11210005         18                    
                                                                                

SQL> select stud.name from STUD,addmission
  2  where STUD.id = ADDMISSION.id and STUD.age>=18;

NAME                                                                            
--------------                                                                  
Manish                                                                          
Manish                                                                          

SQL> --DEFAULT Constraints
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

7 rows selected.

SQL> alter table STUD
  2  modify age Default '18';

Table altered.

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

7 rows selected.

SQL> insert into STUD values(108,'Mukesh','Wapi',11210008,);
insert into STUD values(108,'Mukesh','Wapi',11210008,)
                                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> insert into STUD values(&id,'&name','&address',&admid,&age);
Enter value for id: 108
Enter value for name: mukesh
Enter value for address: Wapi
Enter value for admid: 11210008
Enter value for age: 
old   1: insert into STUD values(&id,'&name','&address',&admid,&age)
new   1: insert into STUD values(108,'mukesh','Wapi',11210008,)
insert into STUD values(108,'mukesh','Wapi',11210008,)
                                                     *
ERROR at line 1:
ORA-00936: missing expression 


SQL> /
Enter value for id: 108
Enter value for name: MUkesh
Enter value for address: Wapi
Enter value for admid: 1121008
Enter value for age: null
old   1: insert into STUD values(&id,'&name','&address',&admid,&age)
new   1: insert into STUD values(108,'MUkesh','Wapi',1121008,null)

1 row created.

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

8 rows selected.

SQL> insert into STUD values(&id,'&name','&address',&admid,&age);
Enter value for id: 109
Enter value for name: Pankaj
Enter value for address: Kanpur
Enter value for admid: 11210009
Enter value for age: 56
old   1: insert into STUD values(&id,'&name','&address',&admid,&age)
new   1: insert into STUD values(109,'Pankaj','Kanpur',11210009,56)

1 row created.

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

SQL> alter table STUD
  2  modify age default (18);

Table altered.

SQL> /
Enter value for id: 131
Enter value for name: sajdhksa
Enter value for address: 454h
Enter value for admid: 15
Enter value for age: null
old   1: insert into STUD values(&id,'&name','&address',&admid,&age)
new   1: insert into STUD values(131,'sajdhksa','454h',15,null)

1 row created.

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
       131 sajdhksa       454h                            15                    

10 rows selected.

SQL> delete from STUD where id =131;

1 row deleted.

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

SQL> commit;

Commit complete.

