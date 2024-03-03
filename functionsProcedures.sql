-- Active: 1709224115030@@127.0.0.1@5432@ph
/*
                    @Procedural Approach:
    1. Language Support: Supports procedural languages like PL/pgSQL, PL/Perl, PL/Python, etc.
    2. Complex Logic: Allows for complex logic using control structures like loops, conditionals, and exception handling.
    3. Variable Support: Supports variable declarations and manipulation within the procedural code.
    4. Stored Procedures/Functions: Provides the ability to create stored procedures or functions, 

                    @Non-Procedural Approach:
    1. Declarative Queries: Focuses on writing declarative SQL queries to retrieve, insert, update, or delete data from the database.
    2. Simplicity: Emphasizes simplicity by expressing operations in terms of what data is needed.
    3. SQL Functions: Supports SQL functions, which are single SQL statements that return a value or set of values.
    4. Performance: Can sometimes offer better performance for simple operations due to the optimized query execution plans generated by the database engine.
*/


SELECT * from employees;
SELECT count(*) from employees;


CREATE or replace Function emp_count()
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = 30;
$$;



CREATE or replace Function delete_emp()
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = 30;
$$;

SELECT delete_emp();


CREATE or replace Function delete_emp_by_id(p_emp_id int)
RETURNS void
LANGUAGE SQL
as
$$
    DELETE FROM employees WHERE employee_id = p_emp_id;
$$;

SELECT delete_emp_by_id(29)

-- procedure
CREATE Procedure remove_emp_var()
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
        SELECT employee_id INTO test_var from employees WHERE employee_id = 26;
        DELETE FROM employees WHERE employee_id = test_var;
    END
$$;

call remove_emp_var();


CREATE Procedure remove_emp_by_id(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
        SELECT employee_id INTO test_var from employees WHERE employee_id = p_emp_id;
        DELETE FROM employees WHERE employee_id = test_var;

        RAISE NOTICE 'Employee removed successfully!';
    END
$$;


CALL remove_emp_by_id(24)








