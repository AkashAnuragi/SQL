SQL> create user c##akash identified by akash543;

User created.

SQL> select * from student;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 akersh                  lakhnow                                      
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     
         5 ayush                   Goa                                          

6 rows selected.

SQL> --Grant Command.
SQL> 
SQL> grant create session to c##akash;

Grant succeeded.

SQL> grant select, insert, update, delete on STUDENT to c##akash;

Grant succeeded.

SQL> connect;
Enter user-name: c##akash
Connected.
SQL> select * from STUDENT;
select * from STUDENT
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> select * from system.STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 akersh                  lakhnow                                      
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     
         5 ayush                   Goa                                          

6 rows selected.

SQL> insert into system.STUDENT values(07,'Archi','Jharkand');

1 row created.

SQL> select * from system.STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 akersh                  lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     
         5 ayush                   Goa                                          

7 rows selected.

SQL> update system.STUDENT set name = Akhil where roll_no =6;
update system.STUDENT set name = Akhil where roll_no =6
                                 *
ERROR at line 1:
ORA-00904: "AKHIL": invalid identifier 


SQL> update system.STUDENT set name = 'Akhil' where roll_no =6;

1 row updated.

SQL> select * from system.STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     
         5 ayush                   Goa                                          

7 rows selected.

SQL> delete from system.STUDENT where name ='ayush';

1 row deleted.

SQL> select * from system.STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> connect
Enter user-name: system
Connected.
SQL> 
SQL> --Revoke Command.
SQL> 
SQL> revoke select, insert, update, delete on STUDENT from c##akash;

Revoke succeeded.

SQL> connect ;
Enter user-name: c##akash
Connected.
SQL> select * from system.STUDENT;
select * from system.STUDENT
                     *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> insert into system.STUDENT values(04,'ayush', 'Goa');
insert into system.STUDENT values(04,'ayush', 'Goa')
                   *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> update system.STUDENT set name ='awadh' where address= 'Goa';
update system.STUDENT set name ='awadh' where address= 'Goa'
              *
ERROR at line 1:
ORA-00942: table or view does not exist 


SQL> delete from system.STUDENT;
delete from system.STUDENT
                   *
ERROR at line 1:
ORA-00942: table or view does not exist 

SQL> connect
Enter user-name: system
Enter password:
Connected.
SQL> drop user c##akash;

User dropped.

SQL> commit;

Commit complete.
