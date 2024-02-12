USE [RestaurantDB]
GO

-- Müþteri Sipariþleri:
SELECT o.order_id, o.order_time, o.total_amount, c.cust_name
FROM Orders o
INNER JOIN Customers c ON o.cust_id = c.cust_id
ORDER BY o.order_time DESC;

-- Bir Müþterinin Tüm Sipariþleri:
SELECT o.order_id, o.order_time, o.total_amount, mi.item_name, oi.quantity
FROM Orders o
INNER JOIN OrderItems oi ON o.order_id = oi.order_id
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
WHERE o.cust_id = 3
ORDER BY o.order_time DESC;

--Bir Sipariþin Detaylarý:
SELECT oi.order_item_id, mi.item_name, mi.category, oi.quantity, mi.price
FROM OrderItems oi
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
WHERE oi.order_id = 1; -- Sorgulamak istediðiniz sipariþin ID'sini belirtin

-- Menüdeki Ürünlerin Listesi:
SELECT item_id, item_name, category, price
FROM MenuItems
ORDER BY category, item_name;

-- Bir Müþterinin Toplam Harcamasý:
SELECT o.cust_id, c.cust_name, SUM(o.total_amount) AS total_spent
FROM Orders o
INNER JOIN Customers c ON o.cust_id = c.cust_id
GROUP BY o.cust_id, c.cust_name;

-- Bir Müþterinin En Son Sipariþi:
SELECT TOP 1 o.order_id, o.order_time, o.total_amount, c.cust_name
FROM Orders o
INNER JOIN Customers c ON o.cust_id = c.cust_id
WHERE o.cust_id = 3
ORDER BY o.order_time DESC; -- Müþteri kimlik numarasýný belirtin

-- En Çok Sipariþ Edilen Kategoriler:
SELECT mi.category, COUNT(oi.order_item_id) AS order_count
FROM OrderItems oi
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
GROUP BY mi.category
ORDER BY order_count DESC;
