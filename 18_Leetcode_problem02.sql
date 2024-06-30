SQL> desc Customers;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(38)
 NAME                                               VARCHAR2(23)
 REFEREE_ID                                         NUMBER(38)

SQL> select * from Customers;

        ID NAME                    REFEREE_ID                                   
---------- ----------------------- ----------                                   
         1 Will                                                                 
         2 Jane                                                                 
         3 Alex                             2                                   
         4 Bill                                                                 
         5 Zack                             1                                   
         6 Mark                             2                                   

6 rows selected.

SQL> -- Solution.
SQL> select name from Customers
  2  where referee_id !=2 or referee_id is null;

NAME                                                                            
-----------------------                                                         
Will                                                                            
Jane                                                                            
Bill                                                                            
Zack                                                                            

SQL> commit;

Commit complete.

