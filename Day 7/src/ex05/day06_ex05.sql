COMMENT ON TABLE person_discounts IS 'Информация о скидках в соответствии с количеством заказов';
COMMENT ON COLUMN person_discounts.id IS 'Уникальный айди каждой введеной в таблицу записи';
COMMENT ON COLUMN person_discounts.person_id IS 'Уникальный айди каждого заказчика';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Уникальный айди каждой пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'Скидка, которая предоставляется заказчику';