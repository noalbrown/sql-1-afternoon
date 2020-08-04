-- Section 1

-- Question 1
CREATE TABLE person
(
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT,
  height INT,
  city TEXT,
  favorite_color TEXT
);

-- Question 2
INSERT INTO person
  (name, age, height, city, favorite_color)
VALUES
  ('Bob', 50, 72, 'Kansas City', 'blue'),
  ('Bill', 40, 70, 'Salt Lake', 'yellow'),
  ('Ted', 35, 71, 'Dallas', 'red'),
  ('Laura', 30, 65, 'Pittsburgh', 'pink'),
  ('Nicole', 45, 62, 'Atlanta', 'black');

-- Question 3
SELECT *
FROM person
ORDER BY height DESC;

-- Question 4
SELECT *
FROM person
ORDER BY height ASC;

-- Question 5
SELECT *
FROM person
ORDER BY age DESC;

-- Question 6
SELECT *
FROM person
WHERE age > 20;

-- Question 7
SELECT *
FROM person
WHERE age = 18;

-- Question 8
SELECT *
FROM person
WHERE age <20 OR age >30;

-- Question 9
SELECT *
FROM person
WHERE age !=27;

-- Question 10
SELECT *
FROM person
WHERE favorite_color !='red';

-- Question 11
SELECT *
FROM person
WHERE favorite_color !='red' AND favorite_color !='blue';

-- Question 12
SELECT *
FROM person
WHERE favorite_color ='orange' OR favorite_color ='green';

-- Question 13
SELECT *
FROM person
WHERE favorite_color IN('orange', 'green', 'blue');

-- Question 14
SELECT *
FROM person
WHERE favorite_color IN('yellow', 'purple');

-- Section 2

-- Question 1
CREATE TABLE orders
(
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name TEXT,
  product_price NUMERIC,
  quantity INT
);

-- Question 2
INSERT INTO orders
  (person_id, product_name, product_price, quantity)
VALUES
  (66, 'Kyber Crystal', 900000000, 2),
  (1, 'Synthetic Crystal', 250000, 1);

-- Question 3
SELECT *
FROM orders;

-- Question 4
SELECT SUM(quantity)
FROM orders;

-- Question 5
SELECT SUM(product_price)
FROM orders;

-- Question 6
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id=66;

-- Section 3

-- Question 1
INSERT INTO artist
  (name, artist_id)
VALUES
  ('In This Moment', 276),
  ('Metallica', 277),
  ('Mudvayne', 278);

-- Question 2
SELECT *
FROM artist
ORDER BY name DESC LIMIT 10;

-- Question 3
SELECT * 
FROM artist
ORDER BY name ASC LIMIT 5;

-- Question 4
SELECT *
FROM artist
WHERE name LIKE 'Black%';

-- Question 5
SELECT *
FROM artist
WHERE name LIKE '%Black%';

-- Section 4

-- Question 1
SELECT first_name, last_name
FROM employee
WHERE city ='Calgary';

-- Question 2
SELECT MAX(birth_date)
FROM employee;

-- Question 3
SELECT MIN(birth_date)
FROM employee;

-- Question 4
SELECT *
FROM employee
WHERE first_name IN('Nancy');

SELECT *
FROM employee
WHERE reports_to = 2;

-- Question 5
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-- Section 5

-- Question 1
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

-- Question 2
SELECT MAX(total)
FROM invoice;

-- Question 3
SELECT MIN(total)
FROM invoice;

-- Question 4
SELECT *
FROM invoice
WHERE total > 5;

-- Question 5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

-- Question 6
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ');

-- Question 7
SELECT AVG(total)
FROM invoice;

-- Question 8
SELECT SUM(total)
FROM invoice;