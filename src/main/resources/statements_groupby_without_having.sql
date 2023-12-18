USE animals;

SELECT g.name AS "Gender",COUNT(p.genders_id) AS "Amount" FROM persons p INNER JOIN
genders g ON p.genders_id = g.id GROUP BY g.name; # To get the amount of persons regarding gender.

SELECT AVG(e.salary) AS "Average Salary",g.name AS "Gender" FROM persons p 
INNER JOIN employees e ON e.persons_id = p.idINNER JOIN genders g ON 
g.id = p.genders_id GROUP BY g.name; # To get average salaries difference between women and men employees

SELECT COUNT(e.id) AS "Amount", d.name AS "Department" FROM employees e 
INNER JOIN employees_identifiers ei ON e.employees_identifiers_id =
ei.id INNER JOIN departments d ON ei.departments_id = d.id GROUP BY d.name; 
# To get amount of employees in each department

SELECT SUM(spent_money) AS "Money", p.first_name, p.last_name
 FROM customer_zoos cz INNER JOIN customers c ON c.id = cz.customers_id
INNER JOIN persons p ON c.persons_id = p.id GROUP BY c.id ORDER BY Money DESC LIMIT 1; 
# To get the customer who spent the highest amount of money in the zoo

SELECT MIN(a.weight) As Weight,a.name FROM animals a GROUP BY a.id;
# To get the lightest animal

SELECT COUNT(e.id) AS Amount,p.name FROM employees e INNER JOIN employees_identifiers ei
ON e.employees_identifiers_id = ei.id  INNER JOIN position p ON ei.position_id = p.id
GROUP BY ei.position_id; #To get the amount of employees per position.

SELECT COUNT(f.id) AS "Amount of animals", f.name FROM animals a 
INNER JOIN feeding f ON a.feeding_id = f.id
GROUP BY f.id ORDER BY Amount DESC LIMIT 1; # To get the most eaten feeding by animals.