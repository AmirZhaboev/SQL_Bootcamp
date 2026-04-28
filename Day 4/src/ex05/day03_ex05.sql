SELECT DISTINCT pz.name AS pizzeria_name
FROM person_visits pv
JOIN person p ON p.id = pv.person_id
JOIN pizzeria pz ON pv.pizzeria_id = pz.id
LEFT JOIN person_order po ON po.person_id = p.id
LEFT JOIN menu m ON po.menu_id = m.id AND m.pizzeria_id = pz.id
WHERE p.name = 'Andrey' AND m.id IS NULL
ORDER BY pizzeria_name;
