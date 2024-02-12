-- Customers tablosunu oluþtur
CREATE TABLE Customers (
  cust_id INT PRIMARY KEY,
  cust_name VARCHAR(255),
  phone_number VARCHAR(15),
  email VARCHAR(255)
);

-- Orders tablosunu oluþtur
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  cust_id INT,
  order_time DATETIME,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);

-- OrderItems tablosunu oluþtur
CREATE TABLE OrderItems (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  item_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- MenuItems tablosunu oluþtur
CREATE TABLE MenuItems (
  item_id INT PRIMARY KEY,
  item_name VARCHAR(255),
  category VARCHAR(100),
  price DECIMAL(10, 2)
);

