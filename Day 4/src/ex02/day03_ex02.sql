SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM menu m 
JOIN pizzeria ON m.pizzeria_id = pizzeria.id
WHERE NOT EXISTS
    (SELECT menu_id FROM person_order po WHERE po.menu_id = m.id)
ORDER BY pizza_name, price;


