SELECT menu1.pizza_name, p1.name AS pizzeria_name_1, p2.name AS pizzeria_name_2, menu1.price
FROM menu menu1
INNER JOIN menu menu2
ON menu1.id != menu2.id
AND menu1.pizzeria_id > menu2.pizzeria_id
AND menu1.price = menu2.price
AND menu1.pizza_name = menu2.pizza_name
INNER JOIN pizzeria p1 ON p1.id = menu1.pizzeria_id
INNER JOIN pizzeria p2 ON p2.id = menu2.pizzeria_id
ORDER BY 1;