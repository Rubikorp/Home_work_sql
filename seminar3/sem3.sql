/*create database home_work_3;

CREATE TABLE SALEPEOPLE (
snum INT PRIMARY KEY NOT NULL,
sname VARCHAR(30) NOT NULL,
city VARCHAR(30) NOT NULL,
comn VARCHAR(30) NOT NULL );
*/
USE home_work_3;
INSERT SALEPEOPLE (snum, sname, city, comm)
VALUES
(1001, 'Peel', 'London', '.12'),
(1002, 'Serres', 'San Jose', '.13'),
(1004, 'Motica', 'London', '.11'),
(1007, 'Rifkin', 'Barcelona', '.15'),
(1003, 'Axelrod', 'New York', '.10');

CREATE TABLE CUSTOMERS (
cnum INT PRIMARY KEY NOT NULL,
cname VARCHAR(30) NOT NULL,
city VARCHAR(30) NOT NULL,
rating INT NOT NULL,
snum INT NOT NULL);

INSERT CUSTOMERS (cnum, cname, city, rating, snum)
VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'SanJose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'SanJose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004);

CREATE TABLE ORDERS (
onum INT PRIMARY KEY NOT NULL,
amt DOUBLE NOT NULL,
odate DATE NOT NULL,
cnum VARCHAR(30) NOT NULL,
snum VARCHAR(30) NOT NULL);

INSERT ORDERS (onum, amt, odate, cnum, snum)
VALUES 
(3001, 18.69, str_to_date('10-03-1990', '%m-%d-%Y'), 2008, 1007),
(3003, 767.19, str_to_date('10-03-1990', '%m-%d-%Y'), 2001, 1001),
(3002, 1900.10, str_to_date('10-03-1990', '%m-%d-%Y'), 2007, 1004),
(3005, 5160.45, str_to_date('10-03-1990', '%m-%d-%Y'), 2003, 1002),
(3006, 1098.16, str_to_date('10-03-1990', '%m-%d-%Y'), 2008, 1007),
(3009, 1713.23, str_to_date('10-04-1990', '%m-%d-%Y'), 2002, 1003),
(3007, 75.75, str_to_date('10-04-1990', '%m-%d-%Y'), 2004, 1002),
(3008, 4723.00, str_to_date('10-05-1990', '%m-%d-%Y'), 2006, 1001),
(3010, 1309.95, str_to_date('10-06-1990', '%m-%d-%Y'), 2004, 1002),
(3011, 9891.88, str_to_date('10-06-1990', '%m-%d-%Y'), 2006, 1001);

/* 
Напишите запрос, который вывел бы таблицу со столбцами
в следующем порядке: city, sname, snum, comm)
*/
 
SELECT city, sname, snum, comm FROM SALEPEOPLE;

/*
Напишите команду SELECT, которая вывела бы оценку
rating, сопровождаемую именем каждого заказчика
в городе San Jose.(Заказчики)
*/

SELECT cname, rating FROM CUSTOMERS
WHERE city = "SanJose";

/*
Напишите запрос, который вывел бы значения snum 
всех продавцов из таблицы заказов без повторений
(уникальные значения snum продавцы)
*/
SELECT DISTINCT sname FROM SALEPEOPLE;

/*
Напишите запрос, который бы выбирал заказчиков, чьи имена
начинаются с буквы G. Используете опервтор LIKE:заказчики
*/
SELECT cname FROM CUSTOMERS
WHERE cname LIKE 'G%';

/*
Напишите запрос, который может дат вым все заказы
со значениями суммы выше чем 1000 ("Заказы", "amt"-сумма)
*/
SELECT * FROM ORDERS
WHERE amt > 1000;

/*
Напишите запрос кторой выбрал бы наименьшую сумму заказа
(из поля "amt" - сумму в таблице заказы)
*/
SELECT MIN(amt) FROM ORDERS;

/*
Напишите запрос к таблице заказчики, который может показать
всех заказчиков, у которых рейтинг больше 100
и они находятся не в Риме
*/
SELECT * FROM CUSTOMERS
WHERE rating > 100 AND city != "Rome";
    