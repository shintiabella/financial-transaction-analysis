-- =====================================================
-- Card Type Performance Analysis
-- =====================================================
-- Business Question:
-- Which card types generate the highest transaction
-- volume and spending?
-----------------------

-- Objective:
-- Compare transaction count, spending contribution,
-- and average transaction value across card types.
-- =====================================================

SELECT
cd.card_type,
COUNT(*) AS total_transactions,
ROUND(SUM(td.amount), 2) AS total_spending,
ROUND(AVG(td.amount), 2) AS avg_transaction_value
FROM cards_data AS cd
JOIN transactions_data AS td
ON cd.id = td.card_id
GROUP BY cd.card_type
ORDER BY total_spending DESC;
