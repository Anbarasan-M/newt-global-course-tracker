Anonymous block

DECLARE
    x NUMBER := 10;
    y NUMBER := 20;
    result NUMBER;
BEGIN
    result := x + y; -- Perform addition and store the result in 'result' variable
    DBMS_OUTPUT.PUT_LINE('The sum of x and y is: ' || result); -- Output the result
END;
