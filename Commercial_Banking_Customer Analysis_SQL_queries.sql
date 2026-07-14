-- SQL Business Questions
-- 1.	Which bank branches process the highest total transaction amounts?
-- 2.	Which customers are the most active users of digital banking services?
-- 3.	Which customer segments receive the largest average financing amounts?
-- 4.	Which financing products have the highest number of defaulted loans?
-- 5.	Which economic sectors receive the largest financing investments?
-- 6.	Which collateral types are associated with the highest number of loan defaults?
-- 7.	Which withdrawal transactions are unusually large compared to normal customer activity?
-- 8.	Which financed sectors experience the highest average repayment delays?
-- 9.	Which customers generate the highest transaction value for the bank?
-- 10.	How can customers be classified into income groups for targeted banking services?

--Query 1 — Branch Transaction Performance
--1) Which bank branches process the highest total transaction amounts?
SELECT
    branch_name,
    SUM(transaction_amount) AS total_transaction_volume
FROM ethiobank_transactions
GROUP BY branch_name
ORDER BY total_transaction_volume DESC;

--Query 2 — Digital Banking Engagement
-- 2.	Which customers are the most active users of digital banking services?

SELECT customer_id,
monthly_login_frequency
FROM ethiobank_transactions
ORDER BY monthly_login_frequency DESC;

---Query 3 — Financing Analysis by Customer Segment
---3) Which customer segments receive the largest average financing amounts?
SELECT customer_segment,
AVG(loan_amount) as average_loan_amount
FROM ethiobank_transactions
GROUP BY customer_segment
order by average_loan_amount desc ;

--Query 4 Financing Default Risk by Product
--4) Which loan products have the highest default risk?

SELECT
    loan_type,
    COUNT(*) AS defaulted_loans
FROM ethiobank_transactions
WHERE loan_status = 'Defaulted'
GROUP BY loan_type
ORDER BY defaulted_loans DESC;

--Query 5 Financing Portfolio Exposure
--5) Which economic sectors receive the largest financing investments?

SELECT
    sector_financed,
    SUM(loan_amount) AS total_financing
FROM ethiobank_transactions
GROUP BY sector_financed
ORDER BY total_financing DESC;

--Query 6 — Collateral Risk Assessment
--6) Which collateral types are associated with the highest number of loan defaults?

SELECT
    collateral_type,
    COUNT(*) AS default_count
FROM ethiobank_transactions
WHERE loan_status = 'Defaulted'
GROUP BY collateral_type
ORDER BY default_count DESC;

--Query 7 — Suspicious Transaction Detection
--7) Which withdrawal transactions are unusually large compared to normal customer activity?

SELECT *
FROM ethiobank_transactions
WHERE transaction_type = 'Withdrawal'
AND transaction_amount >
(
    SELECT AVG(transaction_amount) * 2
    FROM ethiobank_transactions
);

----Query 8 — Loan Delinquency Analysis
-- 8) Which financed sectors experience the highest average repayment delays?

SELECT
    sector_financed,
    AVG(days_past_due) AS average_days_past_due
FROM ethiobank_transactions
GROUP BY sector_financed
ORDER BY average_days_past_due DESC;


-- --Query 9 —  High-Value Customer Analysis
Which customers generate the highest transaction value for the bank?
SELECT
    customer_id,
    SUM(transaction_amount) AS total_transaction_value
FROM ethiobank_transactions
GROUP BY customer_id
HAVING SUM(transaction_amount) > 100000
ORDER BY total_transaction_value DESC;

-- --Query 10 — Customer Segmentation
--10) How can customers be classified into income groups for targeted banking services?

SELECT
    customer_id,
    CASE
        WHEN monthly_income < 10000 THEN 'Low Income'
        WHEN monthly_income < 30000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS income_segment
FROM ethiobank_transactions;
