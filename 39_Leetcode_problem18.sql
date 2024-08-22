SQL> desc Users;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 USER_ID                                   NOT NULL NUMBER(5)
 USER_NAME                                          VARCHAR2(23)

SQL> desc Register
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CONTEST_ID                                NOT NULL NUMBER(5)
 USER_ID                                   NOT NULL NUMBER(5)

SQL> select * from Users;

   USER_ID USER_NAME                                                            
---------- -----------------------                                              
         6 Alice                                                                
         2 Bob                                                                  
         7 Alex                                                                 

SQL> select * from Register;

CONTEST_ID    USER_ID                                                           
---------- ----------                                                           
       215          6                                                           
       209          2                                                           
       208          2                                                           
       210          6                                                           
       208          6                                                           
       209          7                                                           
       209          6                                                           
       215          7                                                           
       208          7                                                           
       210          2                                                           
       207          2                                                           

CONTEST_ID    USER_ID                                                           
---------- ----------                                                           
       210          7                                                           

12 rows selected.

SQL> SELECT
  2      r.contest_id,
  3      ROUND(COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
  4  FROM
  5      Register r
  6  GROUP BY
  7      r.contest_id
  8  ORDER BY
  9      percentage DESC,
 10      r.contest_id ASC;

CONTEST_ID PERCENTAGE                                                           
---------- ----------                                                           
       208        100                                                           
       209        100                                                           
       210        100                                                           
       215      66.67                                                           
       207      33.33                                                           


