SELECT pizza_name, price, pizzeria.name AS pizzeria_name, visit_date
FROM menu
INNER JOIN pizzeria
ON pizzeria.id = menu.pizzeria_id
INNER JOIN person_visits
ON pizzeria.id = person_visits.pizzeria_id
INNER JOIN person
ON person.id = person_visits.person_id
WHERE menu.price BETWEEN 800 AND 1000 AND person.name = 'Kate'
ORDER BY 1, 2, 3