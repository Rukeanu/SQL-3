SELECT pizza_name, price, pizzeria.name AS pizzeria_name
FROM (SELECT menu.id AS menu_id FROM menu EXCEPT SELECT person_order.menu_id FROM person_order) AS subq
INNER JOIN menu
ON subq.menu_id = menu.id
INNER JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
ORDER BY 1, 2;