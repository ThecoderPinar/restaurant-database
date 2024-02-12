-- Müþteri Listesi:
----Bu sorgu, tüm müþterilerin isimlerini ve iletiþim bilgilerini listeler.

SELECT cust_id, cust_name, phone_number, email FROM Customers;

-- Müþteri Bilgileri:
----Bu sorgu, belirli bir müþterinin ayrýntýlarýný gösterir

SELECT * FROM Customers WHERE cust_id = 1; 

INSERT INTO Customers (cust_id, cust_name, phone_number, email)
VALUES (11, 'Emily Johnson', '5554443333', 'emily.johnson@example.com');

SELECT * FROM Customers WHERE phone_number = '1234567890';

SELECT * FROM Customers WHERE email = 'john.doe@example.com';

SELECT COUNT(*) AS total_customers FROM Customers;

SELECT TOP 10 c.cust_id, c.cust_name, COUNT(o.order_id) AS total_orders
FROM Customers c
JOIN Orders o ON c.cust_id = o.cust_id
GROUP BY c.cust_id, c.cust_name
ORDER BY total_orders DESC;


SELECT c.cust_id, c.cust_name, COUNT(ccu.update_id) AS contact_updates
FROM Customers c
LEFT JOIN CustomerContactUpdates ccu ON c.cust_id = ccu.cust_id
WHERE ccu.update_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY c.cust_id, c.cust_name
ORDER BY contact_updates DESC;
