WITH calendar AS (
    SELECT gs::date AS day
    FROM generate_series('2022-01-01'::date, '2022-01-10'::date, interval '1 day') gs
),
visits AS (
    SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id IN (1, 2)
)
SELECT c.day AS missing_day
FROM calendar c
LEFT JOIN visits v ON c.day = v.visit_date
WHERE v.visit_date IS NULL
ORDER BY missing_day;
