USE [RestaurantDB]
GO

-- Kategorilere Göre Ürün Sayýsý:
SELECT category, COUNT(item_id) AS item_count
FROM MenuItems
GROUP BY category;

-- En Pahalý ve En Ucuz Ürünler:
SELECT TOP 1 * FROM MenuItems ORDER BY price DESC; -- En pahalý ürün
SELECT TOP 1 * FROM MenuItems ORDER BY price ASC;  -- En ucuz ürün

-- Belirli Bir Kategorideki Ortalama Fiyat:
SELECT category, AVG(price) AS avg_price
FROM MenuItems
GROUP BY category;

-- Fiyat Aralýðýna Göre Ürünler:
DECLARE @min_price DECIMAL(10, 2) = 10.00; -- Minimum fiyat
DECLARE @max_price DECIMAL(10, 2) = 20.00; -- Maksimum fiyat
SELECT *
FROM MenuItems
WHERE price BETWEEN @min_price AND @max_price;

-- Belirli Bir Ürün Kategorisindeki En Popüler Ürünler:
SELECT mi.item_id, mi.item_name, mi.category, mi.price
FROM MenuItems mi
JOIN (
    SELECT oi.item_id, COUNT(*) AS order_count
    FROM OrderItems oi
    GROUP BY oi.item_id
) AS PopularItems ON mi.item_id = PopularItems.item_id
WHERE mi.category = 'Seçilen_Kategori' -- Seçmek istediðiniz kategori
ORDER BY PopularItems.order_count DESC;

-- Kategoriye Göre Sýralý Ürünler:
SELECT *
FROM MenuItems
ORDER BY category, item_name;

-- Belirli Fiyatýn Üzerindeki Ürünler:
DECLARE @selected_price DECIMAL(10, 2) = 15.00; -- Seçilen fiyat
SELECT *
FROM MenuItems
WHERE price > @selected_price;


