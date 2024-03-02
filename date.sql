-- Active: 1709224115030@@127.0.0.1@5432@ph
Active: 1699467625194@@127.0.0.1@5432@ph@public

SHOW timezone;
SELECT now();

create table timeZ (ts TIMESTAMP without time zone , tsz TIMESTAMP with time zone );

INSERT into timez VALUES('2024-01-12 10:45:00', '2024-01-12 10:45:00');

SELECT * from timez;


SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT to_char(now(), 'Month');

SELECT to_char(now(), 'DDD');

SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

SELECT age(CURRENT_DATE, '1994-03-18');

SELECT *, age(CURRENT_DATE, dob) from students;

SELECT extract(year from  '2024-01-25'::date);

SELECT 'n'::BOOLEAN;