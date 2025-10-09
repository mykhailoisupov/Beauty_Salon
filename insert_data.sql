# clients, beauty_creators, inventory, schedule, price_list

  CREATE DATABASE BEAUTYBASE;
USE BEAUTYBASE;

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(50),
    gender VARCHAR(50)
);


CREATE TABLE beauty_creators (
    master_id INT PRIMARY KEY,
    master_name VARCHAR(50),
    works_since DATE
);

CREATE TABLE inventory (
        item_id INT PRIMARY KEY,
        item_name VARCHAR(50),
        quantity INT

);

CREATE TABLE price_list (
    service_id INT PRIMARY KEY,
    service_price INT,
    service_name VARCHAR(50),
    item_id INT,
    FOREIGN KEY (item_id) REFERENCES inventory(item_id)
);

CREATE TABLE schedule (
        date DATETIME PRIMARY KEY,
        client_id INT,
        service_id INT,
        master_id INT,
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (service_id) REFERENCES price_list(service_id),
        FOREIGN KEY (master_id) REFERENCES beauty_creators(master_id)
);