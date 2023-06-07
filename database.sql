CREATE DATABASE belajar_spring_restful_api;

USE belajar_spring_restful_api;

CREATE TABLE users(
    username VARCHAR(100) NOT NULL ,
    password VARCHAR(100) NOT NULL ,
    name VARCHAR(100) NOT NULL,
    token VARCHAR(100),
    token_expired_at BIGINT,
      PRIMARY KEY(username),
      UNIQUE (token)
) ENGINE InnoDB;

SELECT * FROM users;

DESC users;

CREATE TABLE contacts(
    id VARCHAR(100) NOT NULL ,
    username VARCHAR(100) NOT NULL ,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    phone VARCHAR(100),
    email VARCHAR(100),
    PRIMARY KEY (id),
    FOREIGN KEY fk_users_contacts(username) REFERENCES users(username)
)ENGINE InnoDB;

DESC contacts;

SELECT * FROM contacts;

CREATE TABLE addresses
(
    id VARCHAR(100) NOT NULL,
    contact_id VARCHAR(100) NOT NULL,
    street VARCHAR(200),
    city VARCHAR(100),
    province VARCHAR(100),
    country VARCHAR(100),
    postal_code VARCHAR(100),
    PRIMARY KEY (id),
    FOREIGN KEY fk_contacts_addresses(contact_id) REFERENCES contacts(id)
)ENGINE InnoDB;

DESC addresses;

SELECT * FROM addresses;