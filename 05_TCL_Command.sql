SQL> --Commit command.
SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> commit;

Commit complete.

SQL> -- Rollback Command.
SQL> 
SQL> delete from STUDENT where name ='Akhil';

1 row deleted.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

SQL> rollback;

Rollback complete.

SQL> --Savepoint Command.
SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> savepoint sp1;

Savepoint created.

SQL> delete from STUDENT where roll_no = 6;

1 row deleted.

SQL> savepoint sp2;

Savepoint created.

SQL> delete from STUDENT where roll_no = 7;

1 row deleted.

SQL> savepoint sp3;

Savepoint created.

SQL> delete from STUDENT where roll_no = 1;

1 row deleted.

SQL> savepoint sp4;

Savepoint created.

SQL> delete from STUDENT where roll_no = 2 or roll_no =3 or roll_no = 4;

3 rows deleted.

SQL> select * from STUDENT;

no rows selected

SQL> savepoint sp5;

Savepoint created.

SQL> rollback to sp5;

Rollback complete.

SQL> select * from STUDENT;

no rows selected

SQL> rollback to sp4;

Rollback complete.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

SQL> rollback to sp3;

Rollback complete.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

SQL> rollback to sp2;

Rollback complete.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

SQL> rollback to sp1;

Rollback complete.

SQL> select * from STUDENT;

   ROLL_NO NAME                    ADDRESS                                      
---------- ----------------------- -----------------------                      
         6 Akhil                   lakhnow                                      
         7 Archi                   Jharkand                                     
         1 Akash                   Meerut                                       
         2 Harsh                   Noida                                        
         3 Sagar                   Delhi                                        
         4 Zyan                    Gurugram                                     

6 rows selected.

SQL> commit ;

Commit complete.
