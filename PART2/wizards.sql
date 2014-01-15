-- Create a database called wizards. The rest of the assesment all will take place in the wizards db.

CREATE DATABASE wizards;

-- Create a table called wizards with the following columns (name, age).

CREATE TABLE wizards
(
name varchar (255),
age int,
);

-- Write a statement to count the number of rows in the wizards table. How many wizards are there?

SELECT COUNT * FROM wizards;

-- Insert a wizard into the database.

INSERT INTO wizards(name, age)
VALUES ('Jasper', 5);


-- Write a statement to count the number of rows in the wizards table. How many wizards are there now?

SELECT COUNT * FROM wizards;

There is one wizard in the database.

-- Insert another wizard into the database.

INSERT INTO wizards(name, age)
VALUES ('Mabel', 1);

-- Write a statement to change the second wizards age to 21.

UPDATE Wizards
SET age=21
WHERE Name='Mabel';

-- Write a statement to change all wizards ages to 40.

UPDATE Wizards
SET age=40;

-- Write a statement to delete the last wizard.

DELETE FROM Customers
WHERE Name='Mabel';


-- Write a statement to delete the wizards table.

DROP TABLE wizards

-- Create two data models for wizards. The wizards are going to have a name, an age and two powers each. Let's pretend we're in a world where wizards have many powers, but powers belong to one wizard (two wizards cant have the same power) Each power is going to have a name and a damage amount. Write out the sql to create the two schemas and some sample records. What are the costs/benefits of the two approaches? If you only see one way of doing this that's ok. Please explain any potential problems with your approach. What questions can this schema answer easily? What questions can this schema not answer easily?

CREATE DATABASE wizards;
CREATE DATABASE powers;

CREATE TABLE wizards
(
name varchar (255),
age int,
power1 varchar (255),
power2 varchar (255),
);

CREATE TABLE powers
(
name varchar (255),
damage_amount int,
wiard_id,
);

I can only see one way of doing this. This schema can easily answer which wizard has which has which power (when in the power table). On the other hand, I don't think it would do a good job of safegarding the relationship "powers belong to one wizard". Hmm. I'm not sure how to make that happen.

-- Retrieve all the wizards with powers that have the letter "l" in them.

SELECT * FROM wizards 
WHERE Name LIKE 'l';

-- Retrieve all the wizards who have a combined damage of 10 or more.

SELECT * FROM wizards
WHERE SUM(power1, power2) >= 10;

-- Retrieve all the wizards sorted by their total damage. Your returned data should look like so.. wizard_name, total_damage.

SELECT * FROM wizards
ORDER BY SUM(power1, power2);


-- Create a wizard that has no powers.

INSERT INTO wizards(name, age)
VALUES ('Jasper', 5);

-- Retrieve all wizards that have no powers.

SELECT * FROM wizards
WHERE SUM(power1, power2) = 0;

-- Create a data model for wizards for a world where wizards have many powers and multiple wizards can have the same power. Create some sample records.

CREATE DATABASE wizards;
CREATE DATABASE powers;

CREATE TABLE wizards
(
name varchar (255),
age int,
power1 varchar (255),
power2 varchar (255),
);

CREATE TABLE powers
(
name varchar (255),
damage_amount int,
wizard_id,
);

-- Retrieve the first wizard and any powers he/she has with damage greater than 5.

SELECT FIRST * FROM wizards 
WHERE SUM(power1, power2) = 5;

-- What's the difference between an outer and inner join?

-- If I just write JOIN, is that an inner or outer join?

-- When would I want to use an outer join?

Ack i really need to review this. Really.