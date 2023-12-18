USE animals;

INSERT INTO zoos(name,customers_capacity) VALUES ("California Zoo",150);

INSERT INTO position (name,description) VALUES ("Vet","The vet must take care of the animals in their zones
and assist them when there is an accident.");

INSERT INTO position (name,description) VALUES ("Security Guard","The security guard must look after all
the zoo during night time and day time.");

INSERT INTO position (name,description) VALUES ("Guide","A guide must provide information to the customers
about the animals and the differents zones from the zoo");

INSERT INTO genders (name) VALUES ("Female");

INSERT INTO genders (name) VALUES ("Male");

INSERT INTO countries (name) VALUES ("Belarus");

INSERT INTO countries (name) VALUES ("Ukraine");

INSERT INTO persons (first_name,last_name,birth_date,genders_id,countries_id,phone_number) VALUES
("Nazareno","Bucciarelli","2003-03-14",2,2,"3584904231");

INSERT INTO persons (first_name,last_name,birth_date,genders_id,countries_id,phone_number) VALUES
("Sabrina","Lopez","1992-12-14",1,1,"3584593213");