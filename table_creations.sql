USE BEAUTYBASE;

-- Insert clients
INSERT INTO clients (client_id, client_name, gender) VALUES
                                                         (1, 'Alice Johnson', 'Female'),
                                                         (2, 'Bob Smith', 'Male'),
                                                         (3, 'Clara Brown', 'Female'),
                                                         (4, 'David Wilson', 'Male'),
                                                         (5, 'Eva Green', 'Female');

-- Insert beauty creators
INSERT INTO beauty_creators (master_id, master_name, works_since) VALUES
                                                                      (1, 'Sophia Lee', '2015-06-10'),
                                                                      (2, 'Michael White', '2018-09-01'),
                                                                      (3, 'Olivia Taylor', '2012-03-20'),
                                                                      (4, 'James King', '2020-01-15'),
                                                                      (5, 'Emma Davis', '2017-11-05');

-- Insert inventory items
INSERT INTO inventory (item_id, item_name, quantity) VALUES
                                                         (1, 'Shampoo', 50),
                                                         (2, 'Hair Dye', 30),
                                                         (3, 'Conditioner', 40),
                                                         (4, 'Nail Polish', 60),
                                                         (5, 'Facial Cream', 25);

-- Insert price list (services)
INSERT INTO price_list (service_id, service_price, service_name, item_id) VALUES
                                                                              (1, 50, 'Haircut', 1),
                                                                              (2, 70, 'Hair Coloring', 2),
                                                                              (3, 40, 'Conditioning', 3),
                                                                              (4, 30, 'Manicure', 4),
                                                                              (5, 60, 'Facial', 5);

-- Insert schedule
INSERT INTO schedule (date, client_id, service_id, master_id) VALUES
                                        ('2025-10-10 10:00:00', 1, 1, 1),
                                        ('2025-10-10 11:30:00', 2, 2, 2),
                                        ('2025-10-11 09:00:00', 3, 3, 3),
                                        ('2025-10-11 14:00:00', 4, 4, 4),
                                        ('2025-10-12 13:00:00', 5, 5, 5),
                                        ('2025-10-12 15:00:00', 1, 2, 2),
                                        ('2025-10-13 10:30:00', 2, 3, 3),
                                        ('2025-10-13 12:00:00', 3, 4, 4);

SELECT * FROM schedule;
