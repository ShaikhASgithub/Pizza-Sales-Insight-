SELECT * FROM pizza_types;


CREATE TABLE orders(
order_id INT NOT NULL PRIMARY KEY,
order_date DATE NOT NULL,
order_time TIME NOT NULL
);



CREATE TABLE order_details(
order_details_id INT NOT NULL PRIMARY KEY,
order_id INT NOT NULL,
pizza_id TEXT NOT NULL,
quantity INT NOT NULL
);