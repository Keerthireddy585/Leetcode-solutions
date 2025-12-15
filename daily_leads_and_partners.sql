-- LeetCode 1693: Daily Leads and Partners
-- Concept: COUNT DISTINCT + GROUP BY

SELECT
    date_id,
    make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name;
