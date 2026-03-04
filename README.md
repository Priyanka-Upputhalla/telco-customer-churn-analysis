Telco Customer Churn Analysis
Project Overview

Customer churn is a critical issue for telecom companies because losing customers directly impacts business revenue. This project analyzes telecom customer data to identify the factors that contribute to customer churn.

Using data analysis and visualization techniques, this project uncovers patterns in customer behavior and provides insights that can help telecom companies improve customer retention strategies.

Objectives

Analyze customer data to understand churn behavior.

Identify key factors influencing customer churn.

Perform data cleaning and preprocessing.

Conduct exploratory data analysis (EDA).

Create visualizations and dashboards to communicate insights.

Tools & Technologies

SQL – Data querying and analysis

Excel – Data cleaning and preprocessing

Power BI – Dashboard creation and visualization

Dataset Description

The dataset contains customer information from a telecom company with the following attributes:

CustomerID

Gender

SeniorCitizen

Partner

Dependents

Tenure

PhoneService

MultipleLines

InternetService

OnlineSecurity

OnlineBackup

DeviceProtection

TechSupport

StreamingTV

StreamingMovies

Contract

PaperlessBilling

PaymentMethod

MonthlyCharges

TotalCharges

Churn

Data Cleaning Steps

The following steps were performed to prepare the data for analysis:

Removed duplicate records.

Handled missing or null values.

Converted incorrect data types.

Standardized categorical values.

Ensured numerical columns were properly formatted.

Exploratory Data Analysis (EDA)

Key analyses performed include:

Customer churn distribution

Churn by contract type

Churn by payment method

Monthly charges vs churn

Tenure vs churn

Internet service usage patterns

Key Insights

Customers with month-to-month contracts show higher churn rates.

Customers with higher monthly charges are more likely to churn.

Customers with shorter tenure are more likely to leave the service.

Customers using electronic check payment methods have higher churn probability.

Dashboard

An interactive Power BI dashboard was created to visualize key metrics and churn patterns.

Dashboard includes:

Total Customers

Churn Rate

Churn by Contract Type

Churn by Payment Method

Monthly Charges Analysis

Customer Segmentation

Business Recommendations

Encourage customers to switch to long-term contracts.

Provide loyalty benefits for long-term customers.

Improve services for customers with high monthly charges.

Target high-risk customers with retention offers.

Project Structure
Telco-Customer-Churn-Analysis
│
├── Dataset
│   └── telco_customer_churn.csv
│
├── SQL Queries
│   └── churn_analysis.sql
│
├── PowerBI Dashboard
│   └── churn_dashboard.pbix
│
└── README.md
Conclusion

This project demonstrates how data analysis can help telecom companies understand customer churn and take proactive actions to improve customer retention and business performance.

Author

Priyanka Upputhalla
