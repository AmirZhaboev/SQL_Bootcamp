WITH 
    cte_orders AS 
    (
        SELECT name, COUNT(*) AS count, 'order' AS action_type
        FROM person_order po 
        JOIN menu m ON m.id = po.menu_id
        JOIN pizzeria pz ON pz.id = m.pizzeria_id
        GROUP BY name
        ORDER BY count DESC
        LIMIT 3
    ),
    cte_visits AS
    (
        SELECT name, COUNT(*) AS count, 'visit' AS action_type
        FROM person_visits pv 
        JOIN pizzeria pz ON pz.id = pv.pizzeria_id
        GROUP BY name
        ORDER BY count DESC
        LIMIT 3
    )

(SELECT * FROM cte_orders)
UNION
(SELECT * FROM cte_visits)
ORDER BY action_type, count DESC