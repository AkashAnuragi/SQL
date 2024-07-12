SQL> desc students
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER(10)
 STUDENT_NAME                                       VARCHAR2(12)

SQL> desc subjects
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SUBJECT_NAME                              NOT NULL VARCHAR2(15)

SQL> desc examinations
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                         NUMBER(12)
 SUBJECT_NAME                                       VARCHAR2(15)

SQL> select * from students;

STUDENT_ID STUDENT_NAME                                                         
---------- ------------                                                         
         1 Alice                                                                
         2 Bob                                                                  
        13 John                                                                 
         6 Alex                                                                 

SQL> select * from subjects;

SUBJECT_NAME                                                                    
---------------                                                                 
math                                                                            
physics                                                                         
programming                                                                     

SQL> select * from examinations;

STUDENT_ID SUBJECT_NAME                                                         
---------- ---------------                                                      
         1 math                                                                 
         1 physics                                                              
         1 programming                                                          
         2 programming                                                          
         1 physics                                                              
         1 math                                                                 
        13 math                                                                 
        13 programming                                                          
        13 physics                                                              
         2 math                                                                 
         1 math                                                                 

11 rows selected.

SQL> -- Solutions.
SQL> Select s.student_id, s.student_name, sub.subject_name,
  2  Count(e.student_id) as attended_exams
  3  From students s
  4  Cross Join subjects sub
  5  Left Join examinations e
  6  ON s.student_id = e.student_id
  7  AND sub.subject_name = e.subject_name
  8  Group by s.student_id, s.student_name, sub.subject_name
  9  Order by  student_id, subject_name;

STUDENT_ID STUDENT_NAME SUBJECT_NAME    ATTENDED_EXAMS                          
---------- ------------ --------------- --------------                          
         1 Alice        math                         3                          
         1 Alice        physics                      2                          
         1 Alice        programming                  1                          
         2 Bob          math                         1                          
         2 Bob          physics                      0                          
         2 Bob          programming                  1                          
         6 Alex         math                         0                          
         6 Alex         physics                      0                          
         6 Alex         programming                  0                          
        13 John         math                         1                          
        13 John         physics                      1                          

STUDENT_ID STUDENT_NAME SUBJECT_NAME    ATTENDED_EXAMS                          
---------- ------------ --------------- --------------                          
        13 John         programming                  1                          

12 rows selected.

SQL> commit;

Commit complete.
