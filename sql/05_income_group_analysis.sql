-- =====================================================
-- Income Group Spending Analysis
-- =====================================================
-- Business Question:
-- Do higher-income customers generate higher spending?
-------------------------------------------------------

-- Objective:
-- Analyze the relationship between customer
-- income levels and spending behavior.
-- =====================================================

WITH customer_spending AS (
SELECT
client_id,
ROUND(SUM(amount), 2) AS total_spending
FROM transactions_data
GROUP BY client_id
)

SELECT
CASE
WHEN ud.yearly_income < 50000 THEN '< 50K'
WHEN ud.yearly_income < 100000 THEN '50K - 100K'
WHEN ud.yearly_income < 150000 THEN '100K - 150K'
ELSE '150K+'
END AS income_group,
COUNT(*) AS customer_count,
ROUND(SUM(cs.total_spending), 2) AS total_spending,
ROUND(AVG(cs.total_spending), 2) AS avg_spending_per_customer
FROM customer_spending AS cs
JOIN users_data AS ud
ON cs.client_id = ud.id
GROUP BY income_group
ORDER BY MIN(ud.yearly_income);
