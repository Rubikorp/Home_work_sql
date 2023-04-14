/*
1. Создайте таблицу с мобильными телефонами, 
используя графический интерфейс. Заполните БД данными
2. Выведите название, производителя и цену для товаров, 
количество которых превышает 2
3. Выведите весь ассортимент товаров марки “Samsung”
*/

CREATE DATABASE smartphone; # создание базы данных

USE smartphone; 

CREATE TABLE phone
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacture VARCHAR(30) NOT NULL,
ProductCount VARCHAR(30) NOT NULL,
Price VARCHAR(30) NOT NULL
);

INSERT phone (ProductName, Manufacture, ProductCount, Price)
VALUES
("iPhone X", "Apple", "3", "76000"),
("iPhone8", "Apple", "2", "51000"),
("Galsxy S9", "Samsung", "2", "56000"),
("Galsxy S8", "Samsung", "1", "41000"),
("P 20 Pro", "Huawei", "5", "36000");

# Телефоны больше двух
SELECT ProductName, Manufacture, Price 
FROM phone where ProductCount > 2;

# Телефоны марки Samsung
SELECT * FROM phone where Manufacture = "Samsung";