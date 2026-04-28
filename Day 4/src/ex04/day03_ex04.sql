(
    SELECT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'male'
    EXCEPT
    SELECT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'female'
)

UNION 

(
    SELECT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'female'
    EXCEPT
    SELECT pz.name AS pizzeria_name
    FROM person_order po
    JOIN person p ON p.id = po.person_id
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON pz.id = m.pizzeria_id
    WHERE p.gender = 'male'
)

ORDER BY pizzeria_name;