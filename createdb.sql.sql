
CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    item_price NUMERIC(6,2) NOT NULL,
    item_manufacturer VARCHAR(100) NOT NULL
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_address TEXT NOT NULL
);

CREATE TABLE rating (
    item_id INT NOT NULL REFERENCES item(item_id),
    customer_id INT NOT NULL REFERENCES customer(customer_id),
    rating_date DATE NOT NULL,
    rating_stars INT NOT NULL,
    PRIMARY KEY (item_id, customer_id, rating_date)
);

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    item_id INT NOT NULL REFERENCES item(item_id),
    customer_id INT NOT NULL REFERENCES customer(customer_id),
    item_quantity INT NOT NULL,
    total_cost NUMERIC(6,2) NOT NULL
);
