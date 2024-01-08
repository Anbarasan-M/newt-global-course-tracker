PL/SQL variables 

SET SERVEROUTPUT ON;

DECLARE
x NUMBER;
    name VARCHAR2(50) := 'John';

BEGIN
    x := 10;
    DBMS_OUTPUT.PUT_LINE('The value of x is: ' || x);
    
    -- Outputting the value of the 'name' variable
    DBMS_OUTPUT.PUT_LINE('The value of name is: ' || name);
END;
