SQL> desc cinema
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(12)
 MOVIE                                              VARCHAR2(23)
 DESCRIPTION                                        VARCHAR2(34)
 RATING                                             NUMBER(10,3)

SQL> select * from cinema;

        ID MOVIE                   DESCRIPTION                            RATING
---------- ----------------------- ---------------------------------- ----------
         1 War                     great 3D                                  8.9
         2 Science                 fiction                                   8.5
         3 irish                   boring                                    6.2
         4 Ice song                Fantacy                                   8.6
         5 House card              Interesting                               9.1

SQL> --SOLUTION.
SQL> Select * from Cinema
  2  Where mod(id,2) !=0
  3  AND description != 'boring';

        ID MOVIE                   DESCRIPTION                            RATING
---------- ----------------------- ---------------------------------- ----------
         1 War                     great 3D                                  8.9
         5 House card              Interesting                               9.1

SQL> -- Another Mehtod
SQL> Select * from Cinema
  2  Where mod(id,2) <>0
  3  AND description <> 'boring';

        ID MOVIE                   DESCRIPTION                            RATING
---------- ----------------------- ---------------------------------- ----------
         1 War                     great 3D                                  8.9
         5 House card              Interesting                               9.1

SQL> -- Another Method.
SQL> Select * from Cinema
  2  Where mod(id,2) = 1
  3  AND description not like '%boring%';

        ID MOVIE                   DESCRIPTION                            RATING
---------- ----------------------- ---------------------------------- ----------
         1 War                     great 3D                                  8.9
         5 House card              Interesting                               9.1

SQL> commit;

Commit complete.

SQL> spool off;
