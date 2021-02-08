CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  age INTEGER,
  height INTEGER,
  city VARCHAR(20),
  favorite_color VARCHAR(20)
 );
 
INSERT INTO person
( name, age, height, city, favorite_color )
VALUES
( 'Christie', 26, 164, 'Saint George', 'Green' ),
( 'Haylee', 27, 161, 'Enterprise', 'Gold' ),
( 'Jade', 26, 170, 'Saint George', 'Blush' ),
( 'Sarah', 23, 162, 'Saint George', 'Blue' ),
( 'Carter', 4, 106, 'Saint George', 'Orange' );

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * from PERSON
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';


SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

CREATE TABLE orders
(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(100),
  product_price INTEGER,
  quantity INTEGER
 );
 
 INSERT INTO orders
 (person_id, product_name, product_price, quantity)
 VALUES
 (1, 'Black Diamond Harness', 65, 1),
 (2, 'Camalot C2', 75, 5),
 (3, 'Evolv Shaman Climbing Shoes', 170, 1),
 (4, 'Petzl Climbing Rope', 300, 3),
 (5, 'Black Diamond Vision MIPS Helmet', 140, 1);
 
 SELECT * FROM orders;
 
 SELECT sum(quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders
WHERE person_id = 2;

INSERT INTO artist
(name)
VALUES
('Novo Amor'),
('Bach'),
('Chopin');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city IN ('Calgary');

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT count(*) FROM employee
WHERE city = 'Lethbridge';

SELECT count(*) from invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
