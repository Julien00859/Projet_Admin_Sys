CREATE TABLE product(product_id serial PRIMARY KEY, name varchar(16) UNIQUE, stock int);
INSERT INTO product (name, stock) VALUES ('poupee', 5), ('chateau', 15), ('petite voiture', 50);

