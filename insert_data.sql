# clients, beauty_creators, inventory, schedule, price_list
CREATE DATABASE BEAUTYBASE;
USE BEAUTYBASE;


CREATE TABLE inventory (
        item_id INT PRIMARY KEY,
        item_name VARCHAR(50),
        quantity INT

);

CREATE TABLE schedule (
        date DATETIME PRIMARY KEY,
        client_id INT,
        service_id INT,
        master_id INT,
        FOREIGN KEY (client_id) REFERENCES clients(client_id),
        FOREIGN KEY (service_id) REFERENCES price_list(service_id),
        FOREIGN KEY (master_id) REFERENCES price_list(master_id)
);