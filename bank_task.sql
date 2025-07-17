select * from bank
select * from customer
 select * from employe 
 select * from transaction
 select * from loan11
 select * from insurance 
 select * from policies
 select * from PolicyTypes
----------
 SELECT
    tc.table_name,
    kcu.column_name,
    ccu.table_name AS foreign_table_name,
    ccu.column_name AS foreign_column_name
FROM
    information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
    AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
    AND ccu.table_schema = tc.table_schema
WHERE
    tc.constraint_type = 'FOREIGN KEY' AND tc.table_name = 'customer';
-------------
select * from transaction
-----

SELECT
    c.first_name,
    c.last_name,
    c.email,
    b.name AS bank_name,
    b.city AS bank_city
FROM
    customer AS c
right JOIN
    bank AS b ON c.bank_id = b.id;

	-----
	SELECT
    l.loan_account_number,
    l.principal_amount,
    b.name AS bank_name,
    b.city AS bank_city
FROM
    loan2 AS l
INNER JOIN
    bank AS b ON l.bank_id = b.id;

select * from bank;

