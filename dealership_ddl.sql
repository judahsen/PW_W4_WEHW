CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    customer_address VARCHAR(200),
    phone INTEGER,
    email VARCHAR NOT NULL
) CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    year INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    price NUMERIC(10, 2),
    color VARCHAR(50),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
) CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    store INTEGER,
    salesperson_name VARCHAR(60),
    email VARCHAR NOT NULL,
    phone BIGINT,
    status VARCHAR(5)
) CREATE TABLE sale(
    sale_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id)
) CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    store INTEGER,
    mechanic_name VARCHAR(60),
    phone BIGINT,
    email VARCHAR NOT NULL,
    status VARCHAR(5)
) CREATE TABLE carservice(
    carservice_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER NOT NULL,
    cost NUMERIC(8, 2),
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
) CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    car_id INTEGER NOT NULL,
    sale_id INTEGER NOT NULL,
    carservice_id INTEGER NOT NULL,
    date TIMESTAMP,
    price NUMERIC(10, 2),
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (sale_id) REFERENCES sale(sale_id),
    FOREIGN KEY (carservice_id) REFERENCES carservice(carservice_id)
)