SELECT * FROM mortgage;
SELECT * FROM sales;

SELECT DISTINCT mortgage_id FROM sales;
SELECT DISTINCT mortgage_id FROM mortgage;

SELECT s.sales_id, s.payment_id, s.mortgage_id, s.loan_amount, s.loan_date,
m.mortgage_id, m.mortgage_name, m.mortgage_rate
FROM sales AS s
INNER JOIN mortgage AS m ON s.mortgage_id = m.mortgage_id;
- 1,2,3,4 common elements

SELECT s.sales_id, s.payment_id, s.mortgage_id, s.loan_amount, s.loan_date,
m.mortgage_id, m.mortgage_name, m.mortgage_rate
FROM sales AS s
LEFT JOIN mortgage AS m ON s.mortgage_id = m.mortgage_id;

SELECT s.sales_id, s.payment_id, s.mortgage_id, s.loan_amount, s.loan_date,
m.mortgage_id, m.mortgage_name, m.mortgage_rate
FROM sales AS s
RIGHT JOIN mortgage AS m ON s.mortgage_id = m.mortgage_id;

SELECT s.sales_id, s.payment_id, s.mortgage_id, s.loan_amount, s.loan_date,
m.mortgage_id, m.mortgage_name, m.mortgage_rate
FROM sales AS s
FULL OUTER JOIN mortgage AS m ON s.mortgage_id = m.mortgage_id;




-- Perform a CROSS JOIN and return all columns



-- Query challenges 

-- 1. List All Mortgages: Retrieve all columns from the mortgage table.


-- 2. Total Number of Sales: Count the total number of sales records in the sales table.



-- 3. Find Specific Loan Amounts: Select all records from the sales table where the loan_amount is greater than 300,000.



-- Sum of Loans for Each Mortgage Type: Calculate the total sum of loan_amount for each mortgage_id.



--Average Loan Amount per Mortgage Type: Calculate the average loan amount for each type of mortgage.



-- Join Mortgages and Sales: List all sales along with the corresponding mortgage name and rate.



-- Mortgages with Highest Loan Amounts: Find the mortgage names with the top three highest total loan amounts.


