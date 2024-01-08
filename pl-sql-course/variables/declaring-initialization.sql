Declaring and Initialization

DECLARE
    -- Declaration and initialization of variables
    x NUMBER := 10; -- Declare 'x' as a NUMBER and initialize it to 10
    name VARCHAR2(50) := 'John'; -- Declare 'name' as a VARCHAR2 and initialize it to 'John'
    isActive BOOLEAN := TRUE; -- Declare 'isActive' as a BOOLEAN and initialize it to TRUE
    total_sales NUMBER; -- Declare 'total_sales' as a NUMBER without initialization
BEGIN
    -- Using the variables
    total_sales := x * 100; -- Assign the result of a calculation to 'total_sales'
    DBMS_OUTPUT.PUT_LINE('The value of x is: ' || x); -- Output the value of 'x'
    DBMS_OUTPUT.PUT_LINE('Hello, ' || name || '!'); -- Output a greeting using 'name'
    IF isActive THEN
        DBMS_OUTPUT.PUT_LINE('The user is active.'); -- Output based on the value of 'isActive'
    END IF;
    DBMS_OUTPUT.PUT_LINE('Total sales: ' || total_sales); -- Output the calculated value
END;
