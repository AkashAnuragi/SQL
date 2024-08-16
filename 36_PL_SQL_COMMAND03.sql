SQL> SET SERVEROUTPUT ON;
SQL> -- ARITHMETIC OPERATOR.
  1  DECLARE
  2  num1 NUMBER(5) := 5;
  3  num2 NUMBER(5) := 15;
  4  BEGIN
  5  DBMS_OUTPUT.PUT_LINE('Addition of a and b is : ' || (num1+num2));
  6  DBMS_OUTPUT.PUT_LINE('Subtraction of a and b is : ' || (num1-num2));
  7  DBMS_OUTPUT.PUT_LINE('Multiplication of a and b is : ' || (num1*num2));
  8  DBMS_OUTPUT.PUT_LINE('Division of a and b is : ' || (num2/num1));
  9* END;
SQL> /
Addition of a and b is : 20                                                     
Subtraction of a and b is : -10                                                 
Multiplication of a and b is : 75                                               
Division of a and b is : 3                                                      

PL/SQL procedure successfully completed.

SQL> SET SERVEROUTPUT OFF;
