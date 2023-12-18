USE animals;

DELETE FROM persons WHERE countries_id = 1 AND first_name = "John";

DELETE FROM persons WHERE countries_id = 1 AND last_name = "Lopez";

DELETE FROM countries WHERE name = "Argentina";

DELETE FROM countries WHERE id = 2;

DELETE FROM genders WHERE name = "Female";

DELETE FROM genders WHERE id = 2;

DELETE FROM position WHERE length(name) > 10;

DELETE FROM position WHERE id % 2 = 0;

DELETE FROM position WHERE id = 1;

DELETE FROM zoos WHERE customers_capacity >= 40;