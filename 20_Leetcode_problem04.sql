SQL> desc Views
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ARTICLE_ID                                         NUMBER(10)
 AUTHOR_ID                                          NUMBER(10)
 VIEWER_ID                                          NUMBER(10)
 VIEW_DATE                                          DATE

SQL> select * from Views;

ARTICLE_ID  AUTHOR_ID  VIEWER_ID VIEW_DATE                                      
---------- ---------- ---------- ---------                                      
         1          3          5 01-AUG-19                                      
         1          3          6 02-AUG-19                                      
         2          7          7 01-AUG-19                                      
         2          7          6 02-AUG-19                                      
         4          7          1 22-JUL-19                                      
         3          4          4 21-JUL-19                                      
         3          4          4 21-JUL-19                                      

7 rows selected.

SQL> --solution.
SQL> select  distinct author_id as id from Views
  2  where author_id = viewer_id
  3  order by author_id asc;

        ID                                                                      
----------                                                                      
         4                                                                      
         7                                                                      

SQL> commit;

Commit complete.
