USE animals;

UPDATE zoos SET name = "Texas Zoo" WHERE id = 1;

UPDATE position SET name = "Manager", description = "The manager must 
give tasks to their employees" WHERE id = 1;

UPDATE position SET name = "Cleaning", description = "The cleaning personal must
keep the zoo in order and clean." WHERE id = 2;

UPDATE position SET name = "Customer Service", description = "Must give solution to the
customer problems and questions." WHERE id = 3;

UPDATE countries SET name = "Argentina" WHERE id = 1;

UPDATE countries SET name = "United Stares" WHERE id = 2;

UPDATE countries SET name = "United States" WHERE id = 2;

UPDATE persons SET first_name = "John", phone_number = "3584738921" WHERE id = 1;

UPDATE persons SET countries_id = 1, birth_date = "2003-03-12" WHERE id = 1;

UPDATE genders SET name = "Non Binary" WHERE id = 2;

