INSERT INTO menu
VALUES ((SELECT MAX(id)+1 FROM menu), (SELECT pizzeria.id FROM pizzeria WHERE pizzeria.name = 'Dominos'), 'sicilian pizza', 900)