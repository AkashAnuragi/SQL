SQL> desc STUDENT;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                   NOT NULL NUMBER(10)
 NAME                                               VARCHAR2(23)
 ADDRESS                                            VARCHAR2(23)

SQL> desc COLLEGE;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COLNAME                                            VARCHAR2(23)
 COLID                                              NUMBER(12)
 COLADD                                             VARCHAR2(34) 

SQL> --Insert command
SQL> --first method.
SQL> 
SQL> insert into STUDENT(roll_no, name, address)
  2  values(01,'Akash','Ganga nagar');

1 row created.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         1 Akash                   Ganga nagar                                  

SQL> --Second Method.
SQL> 
SQL> insert into STUDENT value (02,'Sagar','Meerut');
insert into STUDENT value (02,'Sagar','Meerut')
                           *
ERROR at line 1:
ORA-00928: missing SELECT keyword 


SQL> insert into STUDENT values (02,'Sagar','Meerut');

1 row created.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         1 Akash                   Ganga nagar                                  
         2 Sagar                   Meerut                                       

SQL> -- Third Method.
SQL> 
SQL> insert into STUDENT values(&roll_no,'&name', '&address');
Enter value for roll_no: 03
Enter value for name: Harsh
Enter value for address: Noida
old   1: insert into STUDENT values(&roll_no,'&name', '&address')
new   1: insert into STUDENT values(03,'Harsh', 'Noida')

1 row created.

SQL> /
Enter value for roll_no: 04
Enter value for name: Zyan 
Enter value for address: Modipuram
old   1: insert into STUDENT values(&roll_no,'&name', '&address')
new   1: insert into STUDENT values(04,'Zyan ', 'Modipuram')

1 row created.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         1 Akash                   Ganga nagar                                  
         2 Sagar                   Meerut                                       
         3 Harsh                   Noida                                        
         4 Zyan                    Modipuram                                    

SQL> --Update Command.
SQL> 
SQL> Update STUDENT set address = 'Delhi' where name ='Akash';

1 row updated.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         1 Akash                   Delhi                                        
         2 Sagar                   Meerut                                       
         3 Harsh                   Noida                                        
         4 Zyan                    Modipuram                                    

SQL> --Delete Command
SQL> 
SQL> delete from STUDENT where name ='Akash';

1 row deleted.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         2 Sagar                   Meerut                                       
         3 Harsh                   Noida                                        
         4 Zyan                    Modipuram                                    

SQL> --Delete for all row from table.
SQL> 
SQL> delete from STUDENT;

3 rows deleted.

SQL> select * from STUDENT;

no rows selected


