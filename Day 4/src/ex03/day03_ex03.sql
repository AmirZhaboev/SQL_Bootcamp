WITH men_visits AS (
    SELECT pizzeria_id, COUNT(*) AS cnt
    FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    WHERE p.gender = 'male'
    GROUP BY pizzeria_id
),
women_visits AS (
    SELECT pizzeria_id, COUNT(*) AS cnt
    FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    WHERE p.gender = 'female'
    GROUP BY pizzeria_id
),
comparison AS (
    SELECT
        pz.name AS pizzeria_name,
        COALESCE(m.cnt, 0) AS men_cnt,
        COALESCE(w.cnt, 0) AS women_cnt
    FROM pizzeria pz
    LEFT JOIN men_visits m ON pz.id = m.pizzeria_id
    LEFT JOIN women_visits w ON pz.id = w.pizzeria_id
)
SELECT pizzeria_name
FROM comparison
WHERE men_cnt <> women_cnt
ORDER BY pizzeria_name;


