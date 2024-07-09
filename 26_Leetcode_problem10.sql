SQL>  desc Activity;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MACHINE_ID                                NOT NULL NUMBER(10)
 PROCESS_ID                                NOT NULL NUMBER(10)
 ACTIVITY_TYPE                             NOT NULL CHAR(10)
 TIMESTAMP                                          NUMBER(12,3)

SQL> select * from Activity;

MACHINE_ID PROCESS_ID ACTIVITY_T  TIMESTAMP                                     
---------- ---------- ---------- ----------                                     
         0          0 start            .712                                     
         0          0 end              1.52                                     
         0          1 start            3.14                                     
         0          1 end              4.12                                     
         1          0 start             .55                                     
         1          0 end              1.55                                     
         1          1 start             .43                                     
         1          1 end              1.42                                     
         2          0 start             4.1                                     
         2          0 end             4.512                                     
         2          1 start             2.5                                     

MACHINE_ID PROCESS_ID ACTIVITY_T  TIMESTAMP                                     
---------- ---------- ---------- ----------                                     
         2          1 end                 5                                     

12 rows selected.

SQL> --Solution.
SQL> select a.machine_id, round(avg(b.timestamp - a.timestamp),3) as processing_time
  2  from activity  a
  3  , activity  b
  4  where a.machine_id = b.machine_id and a.process_id = b.process_id
  5  and a.activity_type = 'start' and b.activity_type = 'end'
  6  group by a.machine_id;

MACHINE_ID PROCESSING_TIME                                                      
---------- ---------------                                                      
         0            .894                                                      
         1            .995                                                      
         2           1.456                                                      

SQL> -- Another Method.
SQL> select a.machine_id, round(avg(b.timestamp - a.timestamp),3) as processing_time
  2  from activity  a
  3  join activity  b
  4  on a.machine_id = b.machine_id and a.process_id = b.process_id
  5  and a.activity_type = 'start' and b.activity_type = 'end'
  6  group by a.machine_id;

MACHINE_ID PROCESSING_TIME                                                      
---------- ---------------                                                      
         0            .894                                                      
         1            .995                                                      
         2           1.456                                                      

SQL> commit;

Commit complete.
