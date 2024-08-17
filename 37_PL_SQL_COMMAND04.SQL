SQL> SET SERVEROUTPUT ON;
SQL> -- LOGICAL OPERATORS (AND , OR , NOT).
SQL> -- AND OPERATOR.
SQL> 
SQL> DECLARE
  2  boolnum1 boolean := true;
  3  boolnum2 boolean := false;
  4  BEGIN
  5  IF(boolnum1 AND boolnum2) THEN
  6  DBMS_OUTPUT.PUT_LINE(' in AND Operator when the both the condition are true or both are false then it execute if condition.');
  7  END IF;
  8  DBMS_OUTPUT.PUT_LINE(' Both the condition are not true ');
  9  END;
 10  /
Both the condition are not true                                                 

PL/SQL procedure successfully completed.

SQL> -- OR
  1  DECLARE
  2  boolnum1 boolean := true;
  3  boolnum2 boolean := true;
  4  BEGIN
  5  IF(boolnum1 AND boolnum2) THEN
  6  DBMS_OUTPUT.PUT_LINE(' in AND Operator when the both the condition are true or both are false then it execute if condition.');
  7  END IF;
  8  DBMS_OUTPUT.PUT_LINE(' Both the condition are not true ');
  9* END;
SQL> /
in AND Operator when the both the condition are true or both are false then it  
execute if condition.                                                           
Both the condition are not true                                                 

PL/SQL procedure successfully completed.

SQL> -- OR Operator.
  1  DECLARE
  2  boolnum1 boolean := true;
  3  boolnum2 boolean := false;
  4  BEGIN
  5  IF(boolnum1 OR boolnum2) THEN
  6  DBMS_OUTPUT.PUT_LINE(' in OR Operator when any operands are true then if condition Execute.');
  7  END IF;
  8  DBMS_OUTPUT.PUT_LINE(' When both the condition are false ');
  9* END;
SQL> /
in OR Operator when any operands are true then if condition Execute.            
When both the condition are false                                               

PL/SQL procedure successfully completed.

SQL> -- OR
  1  DECLARE
  2  boolnum1 boolean := false;
  3  boolnum2 boolean := false;
  4  BEGIN
  5  IF(boolnum1 OR boolnum2) THEN
  6  DBMS_OUTPUT.PUT_LINE(' in OR Operator when any operands are true then if condition Execute.');
  7  END IF;
  8  DBMS_OUTPUT.PUT_LINE(' When both the condition are false ');
  9* END;
SQL> /
When both the condition are false                                               

PL/SQL procedure successfully completed.

SQL> -- NOT Operator.
Wrote file afiedt.buf

  1  DECLARE
  2  boolnum1 boolean := false;
  3  boolnum2 boolean := false;
  4  BEGIN
  5  IF( NOT boolnum1 ) THEN
  6  DBMS_OUTPUT.PUT_LINE(' In NOT Operator when the operands is true/false it will execute its opposite.');
  7  END IF;
  8* END;
SQL> /
In NOT Operator when the operands is true/false it will execute its opposite.   

PL/SQL procedure successfully completed.

SQL> -- OR
  1  DECLARE
  2  boolnum1 boolean := true;
  3  boolnum2 boolean := false;
  4  BEGIN
  5  IF( NOT boolnum1 ) THEN
  6  DBMS_OUTPUT.PUT_LINE(' In NOT Operator when the operands is true/false it will execute its opposite.');
  7  END IF;
  8* END;
SQL> /

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT OFF;
