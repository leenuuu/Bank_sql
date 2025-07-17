
-------Define Tables .. Bank, Customer, Employee, Transaction, Loan, Insurance, PolicyTypes, Policies


CREATE TABLE bank (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    ifsc_code VARCHAR(20) NOT NULL,
    branch VARCHAR(100),
    fund DECIMAL (18,2) DEFAULT 0
);
select * from bank;

INSERT INTO bank (name, address, city, email, ifsc_code, branch, fund) VALUES
('Bank of India', '123 Main St, Mumbai', 'Mumbai', 'bankofindia@example.com', 'BOI0000001', 'Mumbai Main', 10000000),
('State Bank of India', '456 Elm St, Delhi', 'Delhi', 'sbi.delhi@sbi.com', 'SBIN0000002', 'Delhi Main', 20000000),
('HDFC Bank', '789 Oak Ave, Bangalore', 'Bangalore', 'hdfc.bangalore@hdfc.com', 'HDFC0000003', 'Bangalore Main', 30000000),
('ICICI Bank', '101 Pine Ln, Chennai', 'Chennai', 'icici.chennai@icici.com', 'ICICI0000004', 'Chennai Main', 40000000),
('Axis Bank', '2012 Cedar Ct, Kolkata', 'Kolkata', 'axis.kolkata@axis.com', 'AXIS0000005', 'Kolkata Main', 50000000),
('Punjab National Bank', '303 Birch Rd, Hyderabad', 'Hyderabad', 'pnb.hyderabad@pnb.com', 'PNB0000006', 'Hyderabad Main', 60000000),
('Bank of Baroda', '404 Willow Ln, Pune', 'Pune', 'bankofbaroda@example.com', 'BDBL0000007', 'Pune Main', 70000000),
('Syndicate Bank', '505 Maple Dr, Jaipur', 'Jaipur', 'syndicate.jaipur@syndicate.com', 'SBIN0000008', 'Jaipur Main', 80000000),
('Canara Bank', '606 Ash St, Ahmedabad', 'Ahmedabad', 'canara.ahmedabad@canara.com', 'CNRB0000009', 'Ahmedabad Main', 90000000),
('Union Bank of India', '707 Palm St, Surat', 'Surat', 'union.surat@union.com', 'UBI0000010', 'Surat Main', 10000000),
('Bank of Maharashtra', '808 Cherry St, Lucknow', 'Lucknow', 'bankofmaharashtra@example.com', 'BOM0000011', 'Lucknow Main', 11000000),
('Central Bank of India', '909 Peach St, Kanpur', 'Kanpur', 'centralbank.kanpur@central.com', 'CBIN0000012', 'Kanpur Main', 12000000),
('Indian Bank', '1010 Plum St, Nagpur', 'Nagpur', 'indianbank.nagpur@indianbank.com', 'IB0000013', 'Nagpur Main', 13000000),
('IDBI Bank', '1111 Maple St, Bhopal', 'Bhopal', 'idbi.bhopal@idbi.com', 'IDBI0000014', 'Bhopal Main', 14000000),
('Kotak Mahindra Bank', '1212 Oak St, Indore', 'Indore', 'kotak.indore@kotak.com', 'KMB0000015', 'Indore Main', 15000000),
('Yes Bank', '1313 Pine St, Coimbatore', 'Coimbatore', 'yesbank.coimbatore@yesbank.com', 'YESB0000016', 'Coimbatore Main', 16000000),
('Bandhan Bank', '1414 Cedar St, Patna', 'Patna', 'bandhan.patna@bandhan.com', 'BDBL0000017', 'Patna Main', 17000000),
('Federal Bank', '1515 Birch St, Vadodara', 'Vadodara', 'federal.vadodara@federal.com', 'FB0000018', 'Vadodara Main', 18000000),
('South Indian Bank', '1616 Ash St, Mysore', 'Mysore', 'southindian.mysore@southindian.com', 'SIB0000019', 'Mysore Main', 19000000),
('Tamilnad Mercantile Bank', '1717 Palm St, Trichy', 'Trichy', 'tamilnad.trichy@tamilnad.com', 'TMB0000020', 'Trichy Main', 20000000),
('Karur Vysya Bank', '1818 Cherry St, Salem', 'Salem', 'karur.salem@karur.com', 'KVBL0000021', 'Salem Main', 21000000),
('Dhanlaxmi Bank', '1919 Peach St, Kozhikode', 'Kozhikode', 'dhanlaxmi.kozhikode@dhanlaxmi.com', 'DBL0000022', 'Kozhikode Main', 22000000),
('Jammu and Kashmir Bank', '2020 Maple St, Srinagar', 'Srinagar', 'jammu.srinagar@jammu.com', 'JKBL0000023', 'Srinagar Main', 23000000),
('UCO Bank', '2121 Oak St, Ranchi', 'Ranchi', 'uco.ranchi@uco.com', 'UCO0000024', 'Ranchi Main', 24000000),
('Bank of India', '2222 Pine St, Bhubaneswar', 'Bhubaneswar', 'bankofindia.bhubaneswar@bankofindia.com', 'BOI0000025', 'Bhubaneswar Main', 25000000),
('Punjab National Bank', '2323 Cedar St, Chandigarh', 'Chandigarh', 'pnb.chandigarh@pnb.com', 'PNB0000026', 'Chandigarh Main', 26000000),
('Bank of Baroda', '2424 Birch St, Dehradun', 'Dehradun', 'bankofbaroda.dehradun@bankofbaroda.com', 'BDBL0000027', 'Dehradun Main', 27000000),
('Central Bank of India', '2525 Ash St, Agra', 'Agra', 'centralbank.agra@central.com', 'CBIN0000028', 'Agra Main', 28000000),
('Indian Bank', '2626 Palm St, Varanasi', 'Varanasi', 'indianbank.varanasi@indianbank.com', 'IB0000029', 'Varanasi Main', 29000000),
('IDBI Bank', '2727 Cherry St, Aurangabad', 'Aurangabad', 'idbi.aurangabad@idbi.com', 'IDBI0000030', 'Aurangabad Main', 30000000),
('Kotak Mahindra Bank', '2828 Peach St, Nashik', 'Nashik', 'kotak.nashik@kotak.com', 'KMB0000031', 'Nashik Main', 31000000);


select * from bank;
 
 INSERT INTO Bank (id, name, address, email, ifsc_code, city, fund) VALUES
(9, 'State Bank of India', '123 Main St, Nagpur', 'sbi.nagpur@sbi.com', 'SBIN0000001', 'Nagpur Main', 15000000)

CREATE TYPE account_type_enum AS ENUM ('Savings', 'Checking', 'Credit', 'Loan');


CREATE TABLE customer (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    zip_code VARCHAR(20),
    bank_id INT REFERENCES bank(id),
    account_type account_type_enum not null,-- Assuming you want to use the enum
    account_number VARCHAR(20) UNIQUE,
    opening_date DATE DEFAULT CURRENT_DATE,
    CONSTRAINT fk_bank FOREIGN KEY (bank_id) REFERENCES bank (id)
);

select * from customer;

CREATE TYPE job_title_enum AS ENUM ('Loan Officer', 'Branch Manager', 'Customer Service Representative', 'Operations Manager');


CREATE TABLE employe (
    id SERIAL PRIMARY KEY,
    bank_id INT REFERENCES bank(id),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    zip_code VARCHAR(20),
    job_title VARCHAR(100),
    department VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10, 2),
    manager_id INT REFERENCES employe(id),  --Self-referencing for manager hierarchy
    CONSTRAINT fk_bank FOREIGN KEY (bank_id) REFERENCES bank(id),
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employe(id)
);

INSERT INTO employe (bank_id, first_name, last_name, email, phone_number, address, city, state, zip_code, job_title, department, hire_date, salary, manager_id)
SELECT 
    (random() * 2 + 1)::int,  -- Random bank_id between 1 and 3 (adjust as needed)
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 10) || '@example.com',
    substring(md5(random()::text) for 12),
    substring(md5(random()::text) for 20),
    substring(md5(random()::text) for 10),
    'State' || (random() * 5 + 1)::int,  -- Example state
    substring(md5(random()::text) for 5),
    (ARRAY['Loan Officer', 'Branch Manager', 'Customer Service Representative', 'Operations Manager'])[floor(random() * 4) + 1],
    'Department' || (random() * 3 + 1)::int,  -- Example department
    '2020-01-01'::date + (random() * 365 * 3)::int,  -- Random hire date in the last 3 years
    (random() * 50000 + 50000)::decimal(10, 2),  -- Random salary between 50k and 100k
    NULL  -- manager_id (initially set to NULL, can be updated later)
FROM generate_series(1, 100);

INSERT INTO employe (bank_id, first_name, last_name, email, phone_number, address, city, state, zip_code, job_title, department, hire_date, salary, manager_id)
SELECT 
    (random() * 2 + 1)::int,  -- Random bank_id between 1 and 3 (adjust as needed)
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 10) || '@example.com',
    substring(md5(random()::text) for 12),
    substring(md5(random()::text) for 20),
    substring(md5(random()::text) for 10),
    'State' || (random() * 5 + 1)::int,  -- Example state
    substring(md5(random()::text) for 5),
    (ARRAY['Loan Officer', 'Branch Manager', 'Customer Service Representative', 'Operations Manager'])[floor(random() * 4) + 1],
    'Department' || ((random() * 3 + 1)::int),  -- Example department
    '2020-01-01'::date + (random() * 365 * 3)::int,  -- Random hire date in the last 3 years
    (random() * 50000 + 50000)::decimal(10, 2),  -- Random salary between 50k and 100k
    NULL  -- manager_id (initially set to NULL, can be updated later)
FROM generate_series(1, 400);

select * from employe;
--------------------------------------------------------------------------------------------
INSERT INTO customer (first_name, last_name, email, phone_number, address, city, zip_code, bank_id, account_type, account_number) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', '555-123-4567', '123 Main St', 'Anytown', '12345', 1, 'Savings', '1234567890'),
('Bob', 'Smith', 'bob.smith@example.com', '555-987-6543', '456 Oak Ave', 'Anytown', '12345', 2, 'Checking', '9876543210'),
('Charlie', 'Brown', 'charlie.brown@example.com', '555-111-2222', '789 Pine Ln', 'Otherville', '54321', 1, 'Credit', '1112223333'),
('David', 'Davis', 'david.davis@example.com', '555-333-4444', '1011 Maple Dr', 'Otherville', '54321', 3, 'Loan', '4445556666'),
('Eve', 'Williams', 'eve.williams@example.com', '555-555-6666', '1213 Cedar Ct', 'Smalltown', '67890', 1, 'Savings', '7778889999'),
('Frank', 'Miller', 'frank.miller@example.com', '555-777-8888', '1415 Birch Rd', 'Smalltown', '67890', 2, 'Checking', '2223334444'),
('Grace', 'Wilson', 'grace.wilson@example.com', '555-999-0000', '1617 Willow Ln', 'Bigcity', '90123', 3, 'Credit', '5556667777'),
('Henry', 'Moore', 'henry.moore@example.com', '555-222-1111', '1819 Oak St', 'Bigcity', '90123', 1, 'Loan', '8889990000'),
('Ivy', 'Taylor', 'ivy.taylor@example.com', '555-444-3333', '2021 Pine Ave', 'Anytown', '12345', 2, 'Savings', '3334445555'),
('Jack', 'Anderson', 'jack.anderson@example.com', '555-666-5555', '2223 Maple Ln', 'Otherville', '54321', 3, 'Checking', '6667778888');
UPDATE customer
SET first_name = 'John', last_name = 'Doe', phone_number = '555-123-4567' -- Update all fields from your intended insert
WHERE email = 'john.doe@example.com'; 



insert into customer(first_name, last_name, email, phone_number, address, city, zip_code, bank_id, account_type, account_number)
SELECT
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 10) || '@example.com',
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 20),
    substring(md5(random()::text) for 10),
    substring(md5(random()::text) for 5),
    (random() * 2 + 1)::int, -- Random bank_id between 1 and 3
    (ARRAY['Savings', 'Checking', 'Credit', 'Loan'])[floor(random() * 4) + 1]::account_type_enum,  -- Explicit cast to account_type_enum
    substring(md5(random()::text) for 10)
FROM generate_series(1, 1000);

--------------------------

CREATE TABLE transaction (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    transaction_type VARCHAR(20) NOT NULL,  -- e.g., 'Deposit', 'Withdrawal', 'Transfer'
    amount DECIMAL(10, 2) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(255),
    FOREIGN KEY (account_number) REFERENCES customer(account_number)  -- Assuming account_number is unique in customer
);


select * from transaction;

WITH SampleCustomers AS (
    SELECT c.account_number
    FROM customer c
    ORDER BY random()  -- Or some other criteria, or none to take them in whatever order
    -- No LIMIT here!
)
INSERT INTO transaction (account_number, transaction_type, amount, description)
SELECT
  sc.account_number,
  CASE WHEN random() < 0.5 THEN 'Deposit' ELSE 'Withdrawal' END,  -- Randomly choose transaction type
  (random() * 1000 + 100)::DECIMAL(10, 2),  -- Random amount between 100 and 1100
  'Generated transaction'
FROM generate_series(1, 10)  -- Generate 10 rows
CROSS JOIN (SELECT account_number FROM SampleCustomers LIMIT 1) sc;  -- Use one customer as a base, but repeat for each row from generate_series



-- Assuming you have a 'customer' table with 'account_number' and a 'bank' table with 'id'
-- and that some customers exist linked to banks via customer.bank_id

-- Sample data (replace with actual logic to fetch account numbers if needed)
WITH SampleCustomers AS (
  SELECT 
    c.account_number,
    b.id AS bank_id
  FROM customer c
  JOIN bank b ON c.bank_id = b.id
  LIMIT 100  -- Get 100 customers, adjust as needed
)
INSERT INTO transaction (account_number, transaction_type, amount, description)
SELECT
  sc.account_number,
  CASE WHEN random() < 0.5 THEN 'Deposit' ELSE 'Withdrawal' END,  -- Randomly choose transaction type
  (random() * 1000 + 100)::DECIMAL(10, 2),  -- Random amount between 100 and 1100
  'Generated transaction'
FROM SampleCustomers sc;

-- Assuming you have a 'customer' table with 'account_number' and a 'bank' table with 'id'
-- and that some customers exist linked to banks via customer.bank_id

-- Sample data (replace with actual logic to fetch account numbers if needed)
WITH SampleCustomers AS (
  SELECT 
    c.account_number,
    b.id AS bank_id
  FROM customer c
  JOIN bank b ON c.bank_id = b.id
  LIMIT 100  -- Get 100 customers, adjust as needed
)
INSERT INTO transaction (account_number, transaction_type, amount, description)
SELECT
  sc.account_number,
  CASE WHEN random() < 0.5 THEN 'Deposit' ELSE 'Withdrawal' END,  -- Randomly choose transaction type
  (random() * 1000 + 100)::DECIMAL(10, 2),  -- Random amount between 100 and 1100
  'Generated transaction'
FROM SampleCustomers sc;


select * from transaction ;
--------------------

SELECT
    tc.table_name,
    kcu.column_name,
    ccu.table_name AS foreign_table_name,
    ccu.column_name AS foreign_column_name
FROM
    information_schema.table_constraints AS tc
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
    AND tc.table_schema = kcu.table_schemaINSERT
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
    AND ccu.table_schema = tc.table_schema
WHERE
    tc.constraint_type = 'FOREIGN KEY' AND tc.table_name = 'customer';
select * from transaction;
---------------

SELECT
    c.first_name,
    c.last_name,
    c.email,
    b.name AS bank_name,
    b.city AS bank_city
FROM
    customer AS c
left join
    bank AS b ON c.bank_id = b.id;

----
----table loan ---

-- It is best practice to define custom types for columns with a fixed set of values.
-- This improves data integrity, readability, and prevents incorrect data entry.
CREATE TYPE loan_type_enum AS ENUM ('Personal', 'Home', 'Auto', 'Business', 'Education');
-- Create sequence for generating unique loan numbers
CREATE table loan11(
    id SERIAL PRIMARY KEY,
    loan_account_number VARCHAR(20) UNIQUE NOT NULL,
    customer_id INT REFERENCES customer(id),
    bank_id INT REFERENCES bank(id),
    loan_type loan_type_enum NOT NULL,
    principal_amount DECIMAL(15, 2) NOT NULL,
    remaining_balance DECIMAL(15, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

select * from loan11;

INSERT INTO loan11 (loan_account_number, customer_id, bank_id, loan_type, principal_amount, remaining_balance)
VALUES('LN1234567890', 1, 1, 'Personal', 50000.00, 50000.00),
('LN0987654321', 2, 2, 'Home', 200000.00, 200000.00),
('LN1122334455', 3, 3, 'Auto', 15000.00, 15000.00),
('LN5566778899', 4, 4, 'Business', 100000.00, 100000.00),
('LN2233445566', 5, 5, 'Education', 30000.00, 30000.00);


select * from loan11;

UPDATE loan11
SET remaining_balance = remaining_balance - 1000.00
WHERE loan_account_number = 'LN1234567890';

select * from bank;

SELECT
    l.loan_account_number,
    l.loan_type,
    l.principal_amount,
    b.name AS bank_name,
    b.city AS bank_city
FROM
    loan11 AS l
INNER JOIN
    bank AS b ON l.bank_id = b.id;

----

SELECT
    l.loan_account_number,
    l.loan_type,
    l.principal_amount,
    b.name AS bank_name,
    b.city AS bank_city
FROM
    loan11 AS l
RIGHT JOIN
    bank AS b ON l.bank_id = b.id;

select * from bank;
select * from employe;
 select * from customer;

 select * from transaction;
 select * from loan11;

 ------------------

---PolicyTypes Table

CREATE TABLE PolicyTypes (
    PolicyTypeID SERIAL PRIMARY KEY,
    PolicyTypeName VARCHAR(50),
    Description TEXT
);

----3. Policies Table

CREATE TABLE Policies (
    PolicyID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    PolicyTypeID INT REFERENCES PolicyTypes(PolicyTypeID),
    PolicyStartDate DATE,
    PolicyEndDate DATE,
    Premium DECIMAL(10,2)
);

----------
INSERT INTO PolicyTypes (PolicyTypeName, Description) VALUES
('Auto', 'Insurance coverage for automobiles'),
('Home', 'Insurance coverage for homes and property'),
('Health', 'Insurance coverage for health-related expenses'),
('Life', 'Insurance coverage for life and death benefits');
 select * from policytypes;

INSERT INTO Policies (CustomerID, PolicyTypeID, PolicyStartDate, PolicyEndDate, Premium) VALUES
(1, 1, '2021-01-01', '2022-01-01', 1200.00),
(2, 2, '2021-02-01', '2022-02-01', 1500.00),
(2, 3, '2021-03-01', '2022-03-01', 2000.00),
(4, 4, '2021-04-01', '2022-04-01', 2500.00),
(5, 1, '2021-05-01', '2022-05-01', 1300.00),
(6, 2, '2021-06-01', '2022-06-01', 1800.00),
(6, 3, '2021-07-01', '2022-07-01', 2100.00),
(8, 4, '2021-08-01', '2022-08-01', 2600.00),
(9, 1, '2021-09-01', '2022-09-01', 1400.00),
(10, 2, '2021-10-01', '2022-10-01', 1600.00),
(11, 3, '2021-11-01', '2022-11-01', 2200.00),
(12, 4, '2021-12-01', '2022-12-01', 2700.00),
(12, 1, '2022-01-01', '2023-01-01', 1250.00),
(14, 2, '2022-02-01', '2023-02-01', 1550.00),
(15, 3, '2022-03-01', '2023-03-01', 2050.00),
(16, 4, '2022-04-01', '2023-04-01', 2550.00),
(17, 1, '2022-05-01', '2023-05-01', 1350.00),
(18, 2, '2022-06-01', '2023-06-01', 1850.00),
(19, 3, '2022-07-01', '2023-07-01', 2150.00),
(1, 4, '2022-08-01', '2023-08-01', 2650.00),
(1, 1, '2022-09-01', '2023-09-01', 1400.00),
(3, 2, '2022-10-01', '2023-10-01', 1700.00),
(3, 3, '2022-11-01', '2023-11-01', 2300.00),
(4, 4, '2022-12-01', '2023-12-01', 2800.00),
(5, 1, '2023-01-01', '2024-01-01', 1500.00),
(6, 2, '2023-02-01', '2024-02-01', 1900.00),
(7, 3, '2023-03-01', '2024-03-01', 2400.00),
(8, 4, '2023-04-01', '2024-04-01', 2900.00),
(9, 1, '2023-05-01', '2024-05-01', 1550.00),
(10, 2, '2023-06-01', '2024-06-01', 1950.00),
(11, 3, '2023-07-01', '2024-07-01', 2450.00),
(12, 4, '2023-08-01', '2024-08-01', 2950.00),
(13, 1, '2023-09-01', '2024-09-01', 1600.00),
(14, 2, '2023-10-01', '2024-10-01', 2000.00),
(15, 3, '2023-11-01', '2024-11-01', 2500.00),
(16, 4, '2023-12-01', '2024-12-01', 3000.00),
(17, 1, '2024-01-01', '2025-01-01', 1650.00),
(18, 2, '2024-02-01', '2025-02-01', 2050.00),
(19, 3, '2024-03-01', '2025-03-01', 2550.00),
(20, 4, '2024-04-01', '2025-04-01', 3050.00),
(1, 2, '2024-05-01', '2025-05-01', 2500.00),
(2, 1, '2024-06-01', '2025-06-01', 1300.00),
(3, 3, '2024-07-01', '2025-07-01', 1700.00),
(4, 1, '2024-08-01', '2025-08-01', 1600.00),
(5, 2, '2024-09-01', '2025-09-01', 2100.00),
(6, 3, '2024-10-01', '2025-10-01', 1900.00),
(7, 1, '2024-11-01', '2025-11-01', 1400.00),
(8, 2, '2024-12-01', '2025-12-01', 2200.00);

select * from policies;
------------


select * from policies;
------------

-- =================================================================
-- INSURANCE TABLE
-- =================================================================

-- Define ENUM types for controlled, specific values to ensure data integrity.
CREATE TYPE insurance_type_enum AS ENUM ('Life', 'Health', 'Auto', 'Home', 'Travel');
CREATE TYPE insurance_status_enum AS ENUM ('Active', 'Lapsed', 'Expired', 'Cancelled', 'Pending');
CREATE TYPE premium_frequency_enum AS ENUM ('Monthly', 'Quarterly', 'Annually');

-- Create the insurance table to store policy details.
CREATE TABLE insurance (
    id SERIAL PRIMARY KEY,
    policy_number VARCHAR(30) UNIQUE NOT NULL,
    customer_id INT NOT NULL,
    bank_id INT NOT NULL,
    provider VARCHAR(100) NOT NULL,
    insurance_type insurance_type_enum NOT NULL,
    status insurance_status_enum NOT NULL DEFAULT 'Pending',
    coverage_amount DECIMAL(18, 2) NOT NULL CHECK (coverage_amount > 0),
    premium_amount DECIMAL(10, 2) NOT NULL CHECK (premium_amount > 0),
    premium_frequency premium_frequency_enum NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,

    CONSTRAINT fk_insurance_customer FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE,
    CONSTRAINT fk_insurance_bank FOREIGN KEY (bank_id) REFERENCES bank(id) ON DELETE RESTRICT,
    CONSTRAINT chk_insurance_dates CHECK (end_date > start_date)
);

select * from insurance;

);

select * from insurance;

-- Create a sequence to generate unique policy numbers if it doesn't already exist.
CREATE SEQUENCE IF NOT EXISTS insurance_policy_seq START WITH 1;

-- Use a Common Table Expression (CTE) to generate base random data,
-- which helps correctly create a start_date and a dependent end_date.
WITH random_policies AS (
    SELECT
        s.id,
        (CURRENT_DATE - (floor(random() * 730) * interval '1 day')) as generated_start_date
    FROM generate_series(1, 50) AS s(id)
)
INSERT INTO insurance (
    policy_number,
    customer_id,
    bank_id,
    provider,
    insurance_type,
    status,
    coverage_amount,
    premium_amount,
    premium_frequency,
    start_date,
    end_date
)
SELECT
    'POL' || LPAD((nextval('insurance_policy_seq'))::text, 10, '0'),
    (SELECT id FROM customer ORDER BY random() LIMIT 1),
    (SELECT id FROM bank ORDER BY random() LIMIT 1),
    (ARRAY['LIC', 'New India Assurance', 'Bajaj Allianz', 'HDFC ERGO'])[floor(random() * 4) + 1],
    (ARRAY['Life', 'Health', 'Auto', 'Home', 'Travel'])[floor(random() * 5) + 1]::insurance_type_enum,
    (ARRAY['Active', 'Lapsed', 'Expired', 'Cancelled', 'Pending'])[floor(random() * 5) + 1]::insurance_status_enum,
    (random() * 490000 + 10000)::DECIMAL(18, 2),
    (random() * 900 + 100)::DECIMAL(10, 2),
    (ARRAY['Monthly', 'Quarterly', 'Annually'])[floor(random() * 3) + 1]::premium_frequency_enum,
    rp.generated_start_date,
    rp.generated_start_date + interval '1 year' -- End date is one year after the start date
FROM random_policies rp;

select * from insurance;

----------------
SELECT
    i.policy_number,
    i.insurance_type,
    i.coverage_amount,
    b.name AS bank_name,
    b.city AS bank_city
FROM
    insurance AS i
INNER JOIN
    bank AS b ON i.bank_id = b.id;

select * from insurance;

-------------END TASK-------------