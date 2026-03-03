-- ============================================
-- Customer Churn Analysis SQL Queries
-- Dataset: Telco Customer Churn
-- ============================================
-- Data Cleaning Steps Performed:
-- Converted SeniorCitizen to binary (1/0)
-- Verified numeric formatting for MonthlyCharges and TotalCharges
-- Checked for duplicate records
-- ============================================

-- 1. Total Customers
SELECT COUNT(*) AS total_customers
FROM telco_customer_churn;

-- 2. Total Churned Customers
SELECT COUNT(*) AS churned_customers
FROM telco_customer_churn
WHERE ChurnValue = 1;

-- 3. Churn Rate (%)
SELECT 
    (SUM(ChurnValue) / COUNT(*)) * 100 AS churn_rate_percentage
FROM telco_customer_churn;

-- 4. Average Monthly Charges by Churn Status
SELECT 
    ChurnValue,
    AVG(MonthlyCharges) AS avg_monthly_charges
FROM telco_customer_churn
GROUP BY ChurnValue;

-- 5. Churn by Contract Type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(ChurnValue) AS churned_customers,
    (SUM(ChurnValue) / COUNT(*)) * 100 AS churn_rate_percentage
FROM telco_customer_churn
GROUP BY Contract;

-- 6. Churn by Senior Citizen
SELECT 
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(ChurnValue) AS churned_customers,
    (SUM(ChurnValue) / COUNT(*)) * 100 AS churn_rate_percentage
FROM telco_customer_churn
GROUP BY SeniorCitizen;

-- 7. Tenure-Based Churn Analysis
SELECT 
    CASE
        WHEN TenureMonths <= 12 THEN '0-12 Months'
        WHEN TenureMonths <= 24 THEN '13-24 Months'
        WHEN TenureMonths <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(ChurnValue) AS churned_customers
FROM telco_customer_churn
GROUP BY tenure_group;

-- 8. Top 5 Highest Revenue Customers
SELECT 
    CustomerID,
    TotalCharges
FROM telco_customer_churn
ORDER BY TotalCharges DESC
LIMIT 5;