# Financial Transaction Analysis

## Project Overview

This project analyzes over **13 million financial transactions** using SQL and Power BI to uncover customer spending behavior, merchant performance, payment trends, and transaction success rates.

The objective is to generate actionable business insights that support data-driven decision-making through transaction analytics and interactive dashboard visualization.

---

## Dataset Information

This project uses the **Financial Transactions Dataset: Analytics** from Kaggle.

The dataset contains transaction records, customer demographics, card information, merchant category data, and fraud-related information from a banking environment spanning the 2010s decade.

### Data Source

Financial Transactions Dataset: Analytics (Kaggle)

https://www.kaggle.com/datasets/computingvictor/transactions-fraud-datasets

### Dataset Components

* `transactions_data.csv` – Transaction records including amounts, timestamps, merchant categories, and transaction status.
* `users_data.csv` – Customer demographic and financial information.
* `cards_data.csv` – Card information and payment method details.
* `mcc_codes.json` – Merchant category classifications.
* `train_fraud_labels.json` – Fraud labels for machine learning applications.

---

## Business Objectives

This analysis aims to answer the following business questions:

1. How do transaction volume and spending change over time?
2. Which merchant categories generate the highest transaction volume and spending?
3. How does spending vary across different card types?
4. Who are the highest-value customers based on total spending?
5. How does spending behavior differ across income groups?
6. How successful are transactions, and what are the most common causes of failed transactions?

---

## Tools Used

* PostgreSQL
* SQL
* Power BI
* Microsoft Excel

---

## Dashboard Pages

### 1. Executive Overview

Provides a high-level summary of business performance through:

* Total Transactions
* Total Spending
* Average Transaction Value
* Transaction Success Rate
* Monthly Transaction Trend
* Monthly Spending Trend
* Monthly Average Transaction Value Trend

### 2. Customer Analysis

Focuses on customer spending behavior through:

* Top 10 Customers by Total Spending
* Customer Distribution by Income Group
* Total Spending by Income Group
* Average Spending per Customer by Income Group

### 3. Merchant & Transaction Analysis

Provides insights into merchant and payment performance through:

* Merchant Category Performance
* Total Spending by Card Type
* Transaction Success Rate
* Failed Transaction Error Analysis

---

## Key Insights

### 1. Monthly Transaction & Spending Trend

* Monthly transaction volume remained relatively stable, ranging from approximately **1.0M to 1.16M transactions** per month.
* Monthly spending consistently ranged between **$43M and $50M**.
* February and November recorded noticeable declines in both transaction volume and spending.
* Spending trends closely followed transaction volume trends, indicating that revenue performance was primarily driven by transaction frequency.
* Average transaction value remained stable around **$42–44**, suggesting consistent customer spending behavior over time.

### 2. Merchant Category Performance

* **Money Transfer** generated the highest total spending at **$53.16M**, despite not recording the highest transaction volume.
* **Grocery Stores & Supermarkets** recorded the highest transaction volume with over **1.59M transactions**.
* Utilities and Telecommunication Services generated relatively high spending compared to their transaction counts, indicating higher-value payments.
* Merchant categories exhibited two distinct patterns:

  * High-frequency, lower-value transactions (e.g., Grocery Stores, Restaurants, Service Stations).
  * Lower-frequency, higher-value transactions (e.g., Money Transfer, Utilities, Insurance, Telecommunications).
* Certain niche categories, such as Cruise Lines and Hospitals, showed exceptionally high average transaction values despite relatively low transaction counts.

### 3. Card Type Performance

* Debit cards generated the highest total spending, contributing over **$300M** in transaction value.
* Credit cards ranked second, while prepaid cards accounted for the smallest share of spending.
* Debit cards remained the primary payment method used by customers.
* Credit card transactions generally produced higher average transaction values compared to debit and prepaid cards.

### 4. Top Customer Spending Analysis

* Customer spending was concentrated among a relatively small group of high-value customers.
* The highest-spending customer generated approximately **$2.45M** in total spending.
* Several customers exceeded **$1.5M** in total spending, indicating the presence of a valuable customer segment.
* Retaining these high-value customers could significantly impact overall business performance.

### 5. Income Group Analysis

* Average spending per customer increased consistently as income levels rose.
* Customers earning **$150K+** recorded the highest average spending per customer.
* Customers earning **below $50K** generated the highest total spending due to representing the largest customer segment.
* High-income customers contribute greater value individually, while lower-income customers drive a substantial portion of total revenue through volume.

### 6. Transaction Success Rate & Error Analysis

* The overall transaction success rate reached **98.41%**, indicating a highly reliable payment process.
* Failed transactions accounted for only **1.59%** of all transactions.
* **Insufficient Balance** was the most common failure reason, representing the majority of failed transactions.
* Other common failure causes included Bad PIN, Technical Glitch, Bad Card Number, and Bad Expiration.
* Most failed transactions were related to customer account conditions rather than system-related issues.

---

## Dashboard Preview

### Executive Overview

Insert dashboard screenshot here.

### Customer Analysis

Insert dashboard screenshot here.

### Merchant & Transaction Analysis

Insert dashboard screenshot here.

---

## Files Included

| Folder      | Description                              |
| ----------- | ---------------------------------------- |
| dashboard   | Power BI dashboard (.pbix)               |
| sql         | SQL queries used for business analysis   |
| screenshots | Dashboard screenshots                    |
| data        | Dataset information and source reference |

---

## Project Structure

```text
financial-transaction-analysis/
│
├── dashboard/
│   └── financial_transaction_dashboard.pbix
│
├── sql/
│   ├── 01_monthly_trend_analysis.sql
│   ├── 02_merchant_category_analysis.sql
│   ├── 03_card_type_performance.sql
│   ├── 04_top_customer_analysis.sql
│   ├── 05_income_group_analysis.sql
│   └── 06_transaction_success_rate_analysis.sql
│
├── screenshots/
│   ├── page1_executive_overview.png
│   ├── page2_customer_analysis.png
│   └── page3_merchant_transaction_analysis.png
│
└── README.md
```

## Author

Created as part of a Data Analytics portfolio project demonstrating SQL analysis, business insight generation, and Power BI dashboard development.
