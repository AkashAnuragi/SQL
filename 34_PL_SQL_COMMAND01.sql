SQL> set serveroutput on;
SQL> DECLARE
  2  a number(2) := 45;
  3  BEGIN
  4  IF(a<42) THEN
  5  dbms_output.put_line('a is less than 42');
  6  ELSE
  7  dbms_output.put_line('a is not less than 42');
  8  END IF;
  9  dbms_output.put_line('value of a is  ' || a);
 10  END;
 11  /
a is not less than 42                                                           
value of a is  45                                                               

PL/SQL procedure successfully completed.


  1   DECLARE
  2   a number(2) := 69;
  3   BEGIN
  4  IF(a<42) THEN
  5  dbms_output.put_line('a is less than 42');
  6  ELSE
  7  dbms_output.put_line('a is not less than 42');
  8  END IF;
  9  dbms_output.put_line('value of a is  ' || a);
 10* END;
SQL> /
a is not less than 42                                                           
value of a is  69                                                               

PL/SQL procedure successfully completed.

  1   DECLARE
  2   a number(2) := 12;
  3   BEGIN
  4  IF(a<42) THEN
  5  dbms_output.put_line('a is less than 42');
  6  ELSE
  7  dbms_output.put_line('a is not less than 42');
  8  END IF;
  9  dbms_output.put_line('value of a is  ' || a);
 10* END;
SQL> /
a is less than 42                                                               
value of a is  12                                                               

PL/SQL procedure successfully completed.

SQL> set serveroutput OFF;
