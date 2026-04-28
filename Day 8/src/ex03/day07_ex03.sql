WITH 
    cte_orders AS 
    (
        SELECT name, COUNT(*) AS count, 'order' AS action_type
        FROM person_order po 
        JOIN menu m ON m.id = po.menu_id
        JOIN pizzeria pz ON pz.id = m.pizzeria_id
        GROUP BY name
        ORDER BY count DESC
    ),
    cte_visits AS
    (
        SELECT name, COUNT(*) AS count, 'visit' AS action_type
        FROM person_visits pv 
        JOIN pizzeria pz ON pz.id = pv.pizzeria_id
        GROUP BY name
        ORDER BY count DESC
    )

SELECT pz.name, COALESCE(cte_visits.count, 0) + COALESCE(cte_orders.count, 0) AS total_count
FROM pizzeria pz 
JOIN cte_orders ON cte_orders.name = pz.name
JOIN cte_visits ON cte_visits.name = pz.name
ORDER BY total_count DESC, name