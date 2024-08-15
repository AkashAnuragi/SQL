SQL> SET SERVEROUTPUT ON;
SQL> DECLARE
  2  basic number(5) := 35000;
  3  BEGIN
  4  IF(basic >= 30000 and basic<= 35000) THEN
  5  dbms_output.put_line('pay 5% tax which is: ' || (basic*5)/100);
  6  ELSIF(basic>35000 and basic<=40000) THEN
  7   dbms_output.put_line('pay 7% tax which is: ' || (basic*7)/100);
  8  ELSIF(basic>40000 and basic<=45000) THEN
  9  dbms_output.put_line('pay 9% tax which is: ' || (basic*9)/100);
 10  ELSE
 11  dbms_output.put_line('out of the tax defined range.');
 12  END IF;
 13  END;
 14  /
pay 5% tax which is: 1750                                                       

PL/SQL procedure successfully completed.

  1  DECLARE
  2  basic number(5) := 25000;
  3  BEGIN
  4  IF(basic >= 30000 and basic<= 35000) THEN
  5  dbms_output.put_line('pay 5% tax which is: ' || (basic*5)/100);
  6  ELSIF(basic>35000 and basic<=40000) THEN
  7   dbms_output.put_line('pay 7% tax which is: ' || (basic*7)/100);
  8  ELSIF(basic>40000 and basic<=45000) THEN
  9  dbms_output.put_line('pay 9% tax which is: ' || (basic*9)/100);
 10  ELSE
 11  dbms_output.put_line('out of the tax defined range.');
 12  END IF;
 13* END;
SQL> /
out of the tax defined range.                                                   

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT OFF;
