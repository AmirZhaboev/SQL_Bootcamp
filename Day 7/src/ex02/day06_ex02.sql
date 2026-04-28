SELECT p.name, pizza_name, price, (price - price * (pd.discount / 100))AS discount_price, pz.name AS pizzeria_name
FROM person_order po 
JOIN menu m ON po.menu_id = m.id
JOIN person p ON p.id = po.person_id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
JOIN person_discounts pd ON pd.pizzeria_id = pz.id 
ORDER BY p.name, pizza_name