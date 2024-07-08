SQL> desc weather
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(10)
 RECORDDATE                                         DATE
 TEMPRATURE                                         NUMBER(3)

SQL> select * from Weather;

        ID RECORDDAT TEMPERATURE                                                
---------- --------- -----------                                                
         1 01-JAN-15          10                                                
         2 02-JAN-15          25                                                
         3 03-JAN-15          20                                                
         4 04-JAN-15          30                                                

SQL> -- Solution.
SQL> select w1.id
  2  from weather w1
  3  join weather w2
  4  on  w1.recorddate = w2.recorddate + 1
  5  where
  6  w1.temperature > w2.temperature;

        ID                                                                      
----------                                                                      
         2                                                                      
         4                                                                      

SQL> commit;

Commit complete.