USE animals;

SELECT * FROM customers c RIGHT JOIN persons p ON c.persons_id = p.id;

SELECT c.name, p.first_name,p.last_name FROM countries c
INNER JOIN persons p ON p.countries_id = c.id;

SELECT * FROM persons p RIGHT JOIN employees e ON e.persons_id = p.id;

SELECT *  FROM persons p LEFT OUTER JOIN employees e ON e.persons_id = p.id
LEFT OUTER JOIN position po ON po.id = e.persons_id;

SELECT * FROM employees e RIGHT OUTER JOIN persons p ON e.persons_id = p.id;