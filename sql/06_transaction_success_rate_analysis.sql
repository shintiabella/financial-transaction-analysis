-- =====================================================
-- Transaction Success vs Failure Analysis
-- =====================================================
-- Business Question:
-- How successful are transactions?
-----------------------------------

-- Objective:
-- Measure transaction success and failure rates.
-- =====================================================

SELECT
CASE
WHEN errors IS NULL THEN 'Successful'
ELSE 'Failed'
END AS transaction_status,
COUNT(*) AS total_transactions,
ROUND(
COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
2
) AS percentage
FROM transactions_data
GROUP BY transaction_status
ORDER BY total_transactions DESC;

-- =====================================================
-- Transaction Error Analysis
-- =====================================================
-- Business Question:
-- What are the most common transaction errors?
-----------------------------------------------

-- Objective:
-- Identify the most frequent transaction
-- failure reasons.
-- =====================================================

SELECT
errors AS error_type,
COUNT(*) AS total_occurrences
FROM transactions_data
WHERE errors IS NOT NULL
AND errors NOT LIKE '%,%'
GROUP BY errors
ORDER BY total_occurrences DESC;
