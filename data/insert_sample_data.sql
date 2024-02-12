-- Customers tablosuna örnek veriler ekle
INSERT INTO Customers (cust_id, cust_name, phone_number, email)
VALUES 
  (1, 'John Doe', '1234567890', 'john.doe@example.com'),
  (2, 'Jane Smith', '9876543210', 'jane.smith@example.com'),
  (3, 'Michael Johnson', '5551234567', 'michael.johnson@example.com'),
  (4, 'Emily Wilson', '9998887777', 'emily.wilson@example.com'),
  (5, 'David Brown', '1112223333', 'david.brown@example.com'),
  (6, 'Emma Davis', '4445556666', 'emma.davis@example.com'),
  (7, 'Daniel Taylor', '7778889999', 'daniel.taylor@example.com'),
  (8, 'Olivia Martinez', '2223334444', 'olivia.martinez@example.com'),
  (9, 'William Anderson', '6667778888', 'william.anderson@example.com'),
  (10, 'Sophia Hernandez', '8889990000', 'sophia.hernandez@example.com');

-- Orders tablosuna örnek veriler ekle
INSERT INTO Orders (order_id, cust_id, order_time, total_amount)
VALUES 
  (1, 1, '2024-02-12 10:00:00', 50.00),
  (2, 2, '2024-02-12 11:30:00', 30.00),
  (3, 3, '2024-02-12 12:45:00', 75.00),
  (4, 4, '2024-02-12 14:00:00', 40.00),
  (5, 5, '2024-02-12 15:15:00', 60.00),
  (6, 6, '2024-02-12 16:30:00', 25.00),
  (7, 7, '2024-02-12 17:45:00', 35.00),
  (8, 8, '2024-02-12 18:30:00', 45.00),
  (9, 9, '2024-02-12 19:15:00', 55.00),
  (10, 10, '2024-02-12 20:00:00', 65.00);

-- OrderItems tablosuna örnek veriler ekle
INSERT INTO OrderItems (order_item_id, order_id, item_id, quantity)
VALUES 
  (1, 1, 101, 2),
  (2, 1, 102, 1),
  (3, 2, 103, 3),
  (4, 3, 104, 1),
  (5, 3, 105, 2),
  (6, 4, 106, 2),
  (7, 4, 107, 1),
  (8, 5, 108, 3),
  (9, 5, 109, 1),
  (10, 6, 110, 2);

-- MenuItems tablosuna örnek veriler ekle
INSERT INTO MenuItems (item_id, item_name, category, price)
VALUES 
  (101, 'Pizza Margherita', 'Main Course', 12.99),
  (102, 'Spaghetti Bolognese', 'Main Course', 10.99),
  (103, 'Caesar Salad', 'Appetizer', 8.99),
  (104, 'Chocolate Cake', 'Dessert', 6.99),
  (105, 'Cheeseburger', 'Main Course', 9.99),
  (106, 'Chicken Alfredo', 'Main Course', 13.99),
  (107, 'Vegetable Soup', 'Appetizer', 7.99),
  (108, 'Steak', 'Main Course', 15.99),
  (109, 'Fruit Salad', 'Appetizer', 5.99),
  (110, 'Ice Cream', 'Dessert', 4.99);
