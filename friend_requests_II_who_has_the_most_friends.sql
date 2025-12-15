-- LeetCode 602: Friend Requests II - Who Has the Most Friends
-- Concept: UNION ALL to combine requester & accepter + GROUP BY + COUNT  + ORDER BY + LIMIT

SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
) t
GROUP BY id
ORDER BY num DESC
LIMIT 1;
