-- =====================================================
-- Merchant Category Performance Analysis
-- =====================================================
-- Business Question:
-- Which merchant categories generate the highest spending?
-----------------------------------------------------------

-- Objective:
-- Analyze transaction volume, spending contribution,
-- and average transaction value by merchant category.
-- =====================================================

SELECT
mcc.merchant_category,
COUNT(*) AS total_transactions,
ROUND(SUM(td.amount), 2) AS total_spending,
ROUND(AVG(td.amount), 2) AS avg_transaction_value
FROM transactions_data AS td
JOIN mcc_codes AS mcc
ON td.mcc = mcc.mcc
GROUP BY mcc.merchant_category
ORDER BY total_spending DESC;
