SELECT a.ProductName, b.CategoryName
FROM Product a
LEFT JOIN ProductCategory ab
ON a.Id = ab.ProductId
LEFT JOIN Category b
ON ab.CategoryId = b.Id