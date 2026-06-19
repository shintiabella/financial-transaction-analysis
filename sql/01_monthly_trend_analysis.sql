-- =====================================================
-- Monthly Transaction Performance Analysis
-- =====================================================
-- Business Question:
-- How has transaction performance changed over time?
-----------------------------------------------------

-- Objective:
-- Analyze monthly transaction volume, total spending,
-- and average transaction value to identify trends
-- and seasonality patterns.
-- =====================================================

SELECT
DATE_TRUNC('month', date)::date AS transaction_month,
COUNT(*) AS total_transactions,
ROUND(SUM(amount), 2) AS total_spending,
ROUND(AVG(amount), 2) AS avg_transaction_value
FROM transactions_data
GROUP BY transaction_month
ORDER BY transaction_month;
