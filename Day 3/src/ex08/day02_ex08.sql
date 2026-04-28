SELECT p.name 
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN person p ON p.id = po.person_id
WHERE pizza_name IN ('pepperoni pizza', 'mushroom pizza') AND address IN ('Moscow', 'Samara') AND gender = 'male'
ORDER BY p.name DESC