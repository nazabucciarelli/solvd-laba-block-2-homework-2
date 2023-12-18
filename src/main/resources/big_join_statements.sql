USE animals;

SELECT * FROM persons p INNER JOIN employees e ON p.id = e.persons_id
INNER JOIN employees_identifiers ei ON ei.id = e.employees_identifiers_id
INNER JOIN customers c ON p.id = c.persons_id INNER JOIN position po ON
po.id = ei.position_id INNER JOIN departments d ON ei.departments_id = d.id
INNER JOIN zoos z ON d.zoos_id = z.id INNER JOIN animal_rooms ar ON ar.zoos_id =
z.id INNER JOIN animals a ON a.animal_rooms_id = ar.id INNER JOIN genders g ON
g.id = a.genders_id INNER JOIN feeding f ON f.id = a.feeding_id INNER JOIN habitat h
ON h.id = a.habitat_id INNER JOIN countries co ON co.id = p.countries_id INNER JOIN
customer_zoos cz ON cz.zoos_id = z.id;