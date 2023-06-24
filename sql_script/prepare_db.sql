CREATE DATABASE ecommerce_db;

\c ecommerce_db

CREATE SCHEMA ecommerce_schema;

CREATE TABLE ecommerce_schema.users (
    user_id serial PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    country varchar(255),
    address varchar(255),
    city varchar(255),
    zip varchar(255)
);

CREATE TABLE ecommerce_schema.product (
    product_id serial PRIMARY KEY,
    product_name varchar(255),
    product_price integer
);

CREATE TABLE ecommerce_schema.orders (
    orders_id serial PRIMARY KEY,
    user_id integer,
    product_id integer,
    quantity integer,
    FOREIGN KEY (user_id) REFERENCES ecommerce_schema.users(user_id),
    FOREIGN KEY (product_id) REFERENCES ecommerce_schema.product(product_id)
);
