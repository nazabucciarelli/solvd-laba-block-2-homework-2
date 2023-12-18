USE animals;

ALTER TABLE zoos ADD countries_id BIGINT UNSIGNED NOT NULL;

ALTER TABLE zoos ADD CONSTRAINT fk_zoo_countries FOREIGN KEY (countries_id) REFERENCES countries(id);

ALTER TABLE zoos DROP COLUMN countries_id;

ALTER TABLE genders RENAME COLUMN name TO gender_name;

ALTER TABLE departments ADD COLUMN description TEXT(200) NOT NULL;
