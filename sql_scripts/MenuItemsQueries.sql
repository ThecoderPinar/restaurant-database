USE [RestaurantDB]
GO

-- Kategorilere G�re �r�n Say�s�:
SELECT category, COUNT(item_id) AS item_count
FROM MenuItems
GROUP BY category;

-- En Pahal� ve En Ucuz �r�nler:
SELECT TOP 1 * FROM MenuItems ORDER BY price DESC; -- En pahal� �r�n
SELECT TOP 1 * FROM MenuItems ORDER BY price ASC;  -- En ucuz �r�n

-- Belirli Bir Kategorideki Ortalama Fiyat:
SELECT category, AVG(price) AS avg_price
FROM MenuItems
GROUP BY category;

-- Fiyat Aral���na G�re �r�nler:
DECLARE @min_price DECIMAL(10, 2) = 10.00; -- Minimum fiyat
DECLARE @max_price DECIMAL(10, 2) = 20.00; -- Maksimum fiyat
SELECT *
FROM MenuItems
WHERE price BETWEEN @min_price AND @max_price;

-- Belirli Bir �r�n Kategorisindeki En Pop�ler �r�nler:
SELECT mi.item_id, mi.item_name, mi.category, mi.price
FROM MenuItems mi
JOIN (
    SELECT oi.item_id, COUNT(*) AS order_count
    FROM OrderItems oi
    GROUP BY oi.item_id
) AS PopularItems ON mi.item_id = PopularItems.item_id
WHERE mi.category = 'Se�ilen_Kategori' -- Se�mek istedi�iniz kategori
ORDER BY PopularItems.order_count DESC;

-- Kategoriye G�re S�ral� �r�nler:
SELECT *
FROM MenuItems
ORDER BY category, item_name;

-- Belirli Fiyat�n �zerindeki �r�nler:
DECLARE @selected_price DECIMAL(10, 2) = 15.00; -- Se�ilen fiyat
SELECT *
FROM MenuItems
WHERE price > @selected_price;


