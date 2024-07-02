SQL> desc World;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 NAME                                      NOT NULL VARCHAR2(23)
 CONTINENT                                          VARCHAR2(23)
 AREA                                               NUMBER(38)
 POPULATION                                         NUMBER(38)
 GDP                                                NUMBER

SQL> select * from world;

NAME                    CONTINENT                     AREA POPULATION        GDP
----------------------- ----------------------- ---------- ---------- ----------
afghanistan             Asia                        652230   25500100 2.0343E+10
Albania                 Europe                       28748    2831741 1.2960E+10
Algeria                 Africa                     2341741   37100000 1.8868E+11
Andorra                 Europe                         468      78115 3712000000
Angola                  Africa                     1246700   20609294 1.0099E+11

SQL> --Solution.
SQL> select name, population, area from World
  2  where area >=3000000 OR population >=25000000
  3  order by population ;

NAME                    POPULATION       AREA                                   
----------------------- ---------- ----------                                   
afghanistan               25500100     652230                                   
Algeria                   37100000    2341741                                   

SQL> commit;

Commit complete.


