CREATE VIEW v_price_with_discount AS (
    SELECT p.name, pizza_name, price, (price * 0.9)::INT AS discount_price
    FROM person_order po
    JOIN menu m ON po.menu_id = m.id 
    JOIN person p ON p.id = po.person_id
    ORDER BY p.name, pizza_name
)
