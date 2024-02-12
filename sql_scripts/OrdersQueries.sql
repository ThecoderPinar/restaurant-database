USE [RestaurantDB]
GO

-- M��teri Sipari�leri:
SELECT o.order_id, o.order_time, o.total_amount, c.cust_name
FROM Orders o
INNER JOIN Customers c ON o.cust_id = c.cust_id
ORDER BY o.order_time DESC;

-- Bir M��terinin T�m Sipari�leri:
SELECT o.order_id, o.order_time, o.total_amount, mi.item_name, oi.quantity
FROM Orders o
INNER JOIN OrderItems oi ON o.order_id = oi.order_id
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
WHERE o.cust_id = 3
ORDER BY o.order_time DESC;

--Bir Sipari�in Detaylar�:
SELECT oi.order_item_id, mi.item_name, mi.category, oi.quantity, mi.price
FROM OrderItems oi
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
WHERE oi.order_id = 1; -- Sorgulamak istedi�iniz sipari�in ID'sini belirtin

-- Men�deki �r�nlerin Listesi:
SELECT item_id, item_name, category, price
FROM MenuItems
ORDER BY category, item_name;

-- Bir M��terinin Toplam Harcamas�:
SELECT o.cust_id, c.cust_name, SUM(o.total_amount) AS total_spent
FROM Orders o
INNER JOIN Customers c ON o.cust_id = c.cust_id
GROUP BY o.cust_id, c.cust_name;

-- Bir M��terinin En Son Sipari�i:
SELECT TOP 1 o.order_id, o.order_time, o.total_amount, c.cust_name
FROM Orders o
INNER JOIN Customers c ON o.cust_id = c.cust_id
WHERE o.cust_id = 3
ORDER BY o.order_time DESC; -- M��teri kimlik numaras�n� belirtin

-- En �ok Sipari� Edilen Kategoriler:
SELECT mi.category, COUNT(oi.order_item_id) AS order_count
FROM OrderItems oi
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
GROUP BY mi.category
ORDER BY order_count DESC;
