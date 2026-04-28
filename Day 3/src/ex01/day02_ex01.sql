SELECT gs::date AS missing_day
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, interval '1 day') gs
LEFT JOIN (
    SELECT DISTINCT visit_date
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2
) v ON gs::date = v.visit_date
WHERE v.visit_date IS NULL
ORDER BY missing_day;