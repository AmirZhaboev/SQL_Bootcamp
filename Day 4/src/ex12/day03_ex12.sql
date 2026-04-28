INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
    gs AS id,
    p.id AS person_id,
    m.id AS menu_id,
    DATE '2022-02-25' AS order_date
FROM generate_series(
         (SELECT MAX(id) FROM person_order) + 1,
         (SELECT MAX(id) FROM person_order) + (SELECT COUNT(*) FROM person),
         1
     ) gs
JOIN person p ON p.id = (
    SELECT MIN(id) FROM person
) + (gs - ((SELECT MAX(id) FROM person_order) + 1))
JOIN menu m ON m.pizza_name = 'greek pizza';

