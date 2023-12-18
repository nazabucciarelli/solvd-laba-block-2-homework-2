USE animals;

SELECT p.first_name,p.last_name, FLOOR(DATEDIFF(CURRENT_DATE, p.birth_date) / 365) AS age FROM persons p
GROUP BY p.id HAVING Age > 18; # To get all the persons over 18 years old

SELECT g.name AS Gender, AVG(FLOOR(DATEDIFF(CURRENT_DATE, p.birth_date) / 365))
 AS age FROM persons p INNER JOIN genders g ON p.genders_id = g.id 
 GROUP BY p.id HAVING g.name="Female"; # To get the average age of women.
 
 SELECT COUNT(a.id) AS Amount, ar.name FROM animal_rooms ar INNER JOIN animals a ON a.animal_rooms_id = ar.id
 GROUP BY a.animal_rooms_id HAVING Amount < 3;  # To get the animal's rooms with less than 3 animals.
 
 SELECT COUNT(d.id) AS Amount, z.name FROM departments d 
 INNER JOIN zoos z ON d.zoos_id = z.id GROUP BY d.id HAVING Amount >= 1;
 # To get the zoos with at least 1 department.
 
 SELECT SUM(cz.spent_money) as Spent,p.first_name,p.last_name FROM customers c 
 INNER JOIN customer_zoos cz ON cz.customers_id = c.id INNER JOIN persons p ON c.persons_id = p.id
 GROUP BY c.id HAVING Spent > 1000; # To get the customers that spent more than 1000 in total.
 
 SELECT COUNT(e.id) AS Amount, p.name FROM employees e INNER JOIN employees_identifiers ei
 ON e.employees_identifiers_id = ei.id INNER JOIN position p ON
 ei.position_id = p.id GROUP BY ei.position_id HAVING Amount < 5;
 # To get the positions with less than 5 employees
 
 SELECT LENGTH(p.first_name) AS name_length,p.first_name,p.id
 FROM persons p GROUP BY p.id HAVING name_length > 6;
 #To get the persons with their name's length over 6 characters.