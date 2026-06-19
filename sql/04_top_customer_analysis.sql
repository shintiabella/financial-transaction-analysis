-- =====================================================
-- Top Customer Spending Analysis
-- =====================================================
-- Business Question:
-- Who are the highest-value customers?
---------------------------------------

-- Objective:
-- Identify the top 10 customers ranked by
-- total spending contribution.
-- =====================================================

WITH customer_spending AS (
SELECT
client_id,
COUNT(*) AS total_transactions,
ROUND(SUM(amount), 2) AS total_spending,
ROUND(AVG(amount), 2) AS avg_transaction_value
FROM transactions_data
GROUP BY client_id
)

SELECT
client_id,
total_transactions,
total_spending,
avg_transaction_value,
DENSE_RANK() OVER (
ORDER BY total_spending DESC
) AS spending_rank
FROM customer_spending
ORDER BY total_spending DESC
LIMIT 10;
