-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

--CREATE TABLE
CREATE TABLE Category (
    id INT NOT NULL PRIMARY KEY(id) AUTO INCREMENT,
    category_name VARCHAR(100) NOT NULL
);
--CREATE TABLE product
CREATE TABLE product (
    id INT NOT NULL PRIMARY KEY(id) AUTO INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL NOT NULL,
    stock INT NOT NULL SET DEFAULT VALUE(10),
    category_id INT REFERENCE(id)
);
--CREATE TABLE tag
CREATE TABLE tag (
    id INT NOT NULL PRIMARY KEY(id) AUTO INCREMENT,
    tag_name VARCHAR(100)
);
--CREATE TABLE ProductTag
CREATE TABLE ProductTag (
    id INT NOT NULL PRIMARY KEY(id) AUTO INCREMENT,
    product_id INT REFERENCE(id),
    tag_id INT REFERENCE(id)
);