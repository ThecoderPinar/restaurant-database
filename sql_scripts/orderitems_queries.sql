USE [RestaurantDB]
GO

--Tüm Sipariþ Kalemlerini Listele:
SELECT *
FROM OrderItems;

--Belirli Bir Sipariþin Tüm Kalemlerini Listele:
SELECT *
FROM OrderItems
WHERE order_id = [order_id];

--Belirli Bir Ürünün Satýldýðý Tüm Sipariþleri Listele:
SELECT *
FROM OrderItems
WHERE item_id = [item_id];

--Belirli Bir Ürünün Toplam Satýþ Adedini Hesapla:
SELECT item_id, SUM(quantity) AS total_quantity_sold
FROM OrderItems
WHERE item_id = [item_id]
GROUP BY item_id;

--Belirli Bir Sipariþteki Toplam Ürün Sayýsý ve Tutarý:
SELECT order_id, COUNT(order_item_id) AS total_items, SUM(quantity) AS total_quantity, SUM(quantity * price) AS total_amount
FROM OrderItems oi
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
WHERE order_id = [order_id]
GROUP BY order_id;

--En Fazla Satýlan Ürünlerin Listesi:
SELECT oi.item_id, mi.item_name, SUM(oi.quantity) AS total_quantity_sold
FROM OrderItems oi
INNER JOIN MenuItems mi ON oi.item_id = mi.item_id
GROUP BY oi.item_id, mi.item_name
ORDER BY total_quantity_sold DESC;

--Belirli Bir Tarihte Yapýlan Tüm Satýþlarý Listele:
SELECT oi.order_item_id, oi.order_id, oi.item_id, oi.quantity
FROM OrderItems oi
INNER JOIN Orders o ON oi.order_id = o.order_id
WHERE CONVERT(date, o.order_time) = '2024-02-12';

