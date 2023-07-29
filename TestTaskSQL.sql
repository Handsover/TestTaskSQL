CREATE TABLE Category
(
	Id int NOT NULL PRIMARY KEY,
	CategoryName nvarchar(100)
)

CREATE TABLE Product
(
	Id int NOT NULL PRIMARY KEY,
	ProductName nvarchar(100)
)

CREATE TABLE ProductCategory
(
	ProductId int NOT NULL FOREIGN KEY REFERENCES Product(Id),
	CategoryId int NOT NULL FOREIGN KEY REFERENCES Category(Id),
	PRIMARY KEY (ProductId, CategoryId)
)

-- Выбрать все пары продукт-категория для всех продуктов
select a.ProductName, b.CategoryName
from Product a
left join ProductCategory ab
on a.Id = ab.ProductId
left join Category b
on ab.CategoryId = b.Id