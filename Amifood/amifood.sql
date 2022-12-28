CREATE TABLE Student (
    Student_id int(3) PRIMARY KEY,
    Name varchar(50),
    Email varchar(50),
    Department varchar(50)
);
--@block
show tables;
--@block
DESCRIBE Cafeteria;
--@block
CREATE TABLE Cafeteria (
    Cafeteria_id int(3) PRIMARY KEY,
    Cafeteria_Name char(50),
    Location varchar(50)
);
--@block
DESCRIBE Food_item;
--@block

CREATE TABLE Food_item (
    Food_id int(3) PRIMARY KEY,
    Name char(50),
    Unit_Price float(),    
);
--@block
Drop TABLE student;
Drop TABLE Cafeteria;

--@block
CREATE TABLE Student (
    Student_id varchar(12) PRIMARY KEY,
    Name char(50),
    Email varchar(50),
    Department varchar(50)
);

CREATE TABLE Menu (
    Menu_id int(3) PRIMARY KEY,
    Meal_type char(50)
);
CREATE TABLE Food_item (
    Food_id int(3) PRIMARY KEY,
    Name char(50),
    Unit_Price float(5,2),
    Category char(50)
);
--@block
CREATE TABLE Payment (
    Payment_id varchar(10) PRIMARY KEY,
    Amount float(10,2), 
    Payment_Time Time,
    Payment_Date Date,
    Mode char(50)
);
--@block
CREATE TABLE Orders (
    Order_id int(3) PRIMARY KEY,
    Pick_up_ETA Time,
    Food_quantity int(5)
);
--@block
USE amifood;
--@block
INSERT INTO Food_item
VALUES (1,'Idli Wada Combo',45.00, 'South Indian Combo');
--@block
INSERT INTO Food_item
VALUES 
        (2,'Breakfast Combo',80.00, 'South Indian Combo'),
        (3,'Set Dosa Combo',75.00, 'South Indian Combo');
 --@block
 SELECT * from food_item;

 --@block
 INSERT INTO Food_item (Food_id, Name, Unit_Price, Category)
VALUES (41, "Veg Sweet Corn Soup", 60.00, "Soup"),
(42, "Veg Manchow Soup", 50.00, "Soup"),
(43, "Tomato Soup", 50.00, "Soup"),
(44, "Veg Hot & Sour Soup", 50.00, "Soup"),
(45, "Veg Mushroom Soup", 60.00, "Soup"),
(46, "Veg Noodles Soup", 50.00, "Soup"),
(47, "Cream of Tomato Soup", 60.00, "Soup"),
(48, "Cream of Veg Soup", 60.00, "Soup");
 --@block
 INSERT INTO Food_item (Food_id, Name, Unit_Price, Category)
VALUES (49, "Veg Manchurian Combo", 110.00, "Quick Chinese Combo"),
(50, "Veg Schezwan Combo", 120.00, "Quick Chinese Combo"),
(51, "Egg Fried Rice Combo", 130.00, "Quick Chinese Combo"),
(52, "Paneer Chilly Combo", 140.00, "Quick Chinese Combo"),
(53, "Mushroom 65 Combo", 140.00, "Quick Chinese Combo"),
(54, "Chilli Garlic Potato Combo", 140.00, "Quick Chinese Combo");
 --@block
 INSERT INTO Food_item (Food_id, Name, Unit_Price, Category)
VALUES (55, "Egg Fried Rice/Noodles", 90.00, "Egg Rice"),
(56, "Egg Schezwan Rice/Noodles", 100.00, "Egg Rice"),
(57, "Egg Hongkong Rice/Noodles", 100.00, "Egg Rice"),
(58, "Egg Triple Rice/Noodles", 140.00, "Egg Rice"),
(59, "Egg Manchurian Rice/Noodles", 130.00, "Egg Rice"),
(60, "Veg Biryani", 100.00, "Pulav & Biryani"),
(61, "Paneer Biryani", 120.00, "Pulav & Biryani"),
(62, "Veg Hyderabadi Biryani", 120.00, "Pulav & Biryani"),
(63, "Veg Pulav", 100.00, "Pulav & Biryani"),
(64, "Paneer Pulav", 120.00, "Pulav & Biryani"),
(65, "Egg Biyani", 120.00, "Pulav & Biryani"),
(66, "Veg Fried Rice", 80.00, "Rice"),
(67, "Veg Schezwan Fried Rice", 90.00, "Rice"),
(68, "Veg Hongkong Fried Rice", 90.00, "Rice"),
(69, "Veg Singapore Fried Rice", 90.00, "Rice"),
(70, "Veg Mix Fried Rice", 100.00, "Rice"),
(71, "Veg Mushroom Fried Rice", 90.00, "Rice"),
(72, "Veg Paneer Fried Rice", 90.00, "Rice"),
(73, "Veg Combination Fried Rice", 90.00, "Rice"),
(74, "Veg Manchurian Fried Rice", 120.00, "Rice"),
(75, "Veg Triple Rice", 130.00, "Rice"),
(76, "Veg Hakka Noodles", 80.00, "Noodles"),
(77, "Veg Schezwan Noodles", 90.00, "Noodles"),
(78, "Veg Hongkong Noodles", 90.00, "Noodles"),
(79, "Veg Singapore Noodles", 90.00, "Noodles"),
(80, "Veg Mix Noodles", 100.00, "Noodles"),
(81, "Veg Manchurian Noodles", 120.00, "Noodles"),
(82, "Veg Triple Noodles", 130.00, "Noodles"),
(83, "Veg American Choupsey Noodles", 100.00, "Noodles");


 --@block
 -- A Query to sort food items by price
 SELECT Food_id, Name, Unit_Price, Category
  from (
select *,
row_number() over (partition by Unit_Price ) as rn
from Food_item) x
where x.rn >1 ;

 --@block
 -- A Query that fetch food of same categories but different prices.
select f1.*
from Food_item f1
join Food_item f2 on f1.Food_id <> f2.Food_id and f1.Category = f2.Category and f1.Unit_Price <> f2.Unit_Price
;

 --@block
 Drop table Cafeteria;


 --@block
 CREATE TABLE Cafeteria (
    Cafeteria_id varchar(5) PRIMARY KEY,
    Cafeteria_Name char(50)
);

--@block
INSERT INTO Cafeteria
VALUES ('DP','Dosa Plaza'),
       ('WH','Wok Hong'),
       ('GC','Girls Cafeteria');
--@block
ALTER TABLE Food_item
 ADD COLUMN Cafeteria_id varchar(5);
--@block
Alter table
  food_item
add
  FOREIGN KEY (Cafeteria_id) references Cafeteria (Cafeteria_id);

--@block
Select * FROM food_item;

--@block
DESCRIBE food_item;

--@block
INSERT INTO Food_item (Food_id, Name, Unit_Price, Category)
VALUES (4, "Idli", 30.00, "Idli"),
(5, "Butter Idli", 45.00, "Idli"),
(6, "Podi Idli", 55.00, "Idli"),
(7, "Medu Vada", 30.00, "Vada & Snacks"),
(8, "Dal Vada", 30.00, "Vada & Snacks"),
(9, "Sheera", 30.00, "Vada & Snacks"),
(10, "Upma", 25.00, "Vada & Snacks"),
(11, "Pongal", 30.00, "Vada & Snacks"),
(12, "Sabudana Vada", 30.00, "Vada & Snacks"),
(13, "Misal Pav", 45.00, "Vada & Snacks"),
(14, "Poori Bhaji", 45.00, "Vada & Snacks"),
(15, "Chapati Kurma", 45.00, "Vada & Snacks"),
(16, "Parotta with Kurma", 45.00, "Vada & Snacks"),
(17, "Sada Dosa", 40.00, "Sada & Masala Dosa"),
(18, "Butter Sada Dosa", 60.00, "Sada & Masala Dosa"),
(19, "Cheese Sada Dosa", 70.00, "Sada & Masala Dosa"),
(20, "Set Dosa", 40.00, "Sada & Masala Dosa"),
(21, "Masala Dosa", 50.00, "Sada & Masala Dosa"),
(22, "Butter Masala Dosa", 70.00, "Sada & Masala Dosa"),
(23, "Cheese Masala Dosa", 80.00, "Sada & Masala Dosa"),
(24, "Mysore Masala Dosa", 60.00, "Sada & Masala Dosa"),
(25, "Ghee Roast Dosa", 75.00, "Sada & Masala Dosa"),
(26, "Paper Roast Dosa", 75.00, "Sada & Masala Dosa"),
(27, "Ghee Paper Roast Dosa", 100.00, "Sada & Masala Dosa"),
(28, "Rava Dosa", 60.00, "Rava Dosa"),
(29, "Ghee Rava Dosa", 90.00, "Rava Dosa"),
(30, "Onion Rava Dosa", 70.00, "Rava Dosa"),
(31, "Rava Masala Dosa", 70.00, "Rava Dosa"),
(32, "Ghee Rava Masala Dosa", 100.00, "Rava Dosa"),
(33, "Onion Rava Masala Dosa", 130.00, "Rava Dosa"),
(34, "Plain Uttappa", 45.00, "Uttappa"),
(35, "Onion Uttappa", 50.00, "Uttappa"),
(36, "Tomato Uttappa", 50.00, "Uttappa"),
(37, "Tomato Onion Uttappa", 50.00, "Uttappa"),
(38, "Masala Uttappa", 60.00, "Uttappa"),
(39, "Paneer Masala Uttappa", 70.00, "Uttappa"),
(40, "Cheese Masala Uttappa", 80.00,"Uttappa");

--@block
INSERT INTO Food_item (Food_id, Name, Unit_Price, Category)
VALUES
(84, "Tea", 10.00, "Tea & Beverages"),
(85, "Special Tea", 15.00, "Tea & Beverages"),
(86, "Bournvita", 40.00, "Tea & Beverages"),
(87, "Coffee", 15.00, "Tea & Beverages"),
(88, "Milk", 15.00, "Tea & Beverages"),
(89, "Lassi", 35.00, "Tea & Beverages"),
(90, "Fresh Lemon Juice", 15.00, "Tea & Beverages"),
(91, "Cold drinks", 20.00, "Tea & Beverages"),
(92, "Ice cream", 40.00, "Tea & Beverages"),
(93, "Milkshake", 53.00, "Tea & Beverages"),
(94, "Mineral Water", 10.00, "Tea & Beverages"),
(95, "Biscuits", 25.00, "Tea & Beverages"),
(96, "Cakes", 15.00, "Tea & Beverages"),
(97, "Chocolates", 10.00, "Tea & Beverages"),
(98, "Maggi", 25.00, "Maggi"),
(99, "Butter Maggi", 40.00, "Maggi"),
(100, "Cheese Maggi", 40.00, "Maggi"),
(101, "Egg Maggi", 40.00, "Maggi"),
(102, "Veg Maggi", 40.00, "Maggi"),
(103, "Masala Maggi", 30.00,"Maggi"),
(104, "Plain Paratha", 25.00, "Paratha"),
(105, "Aloo Paratha", 45.00, "Paratha"),
(106, "Onion Paratha", 45.00, "Paratha"),
(107, "Egg Paratha", 50.00, "Paratha"),
(108, "Paneer Paratha", 60.00,"Paratha"),
(109, "Dal Fry", 35.00, "Sabji"),
(110, "Dal Fry", 35.00, "Sabji"),
(111, "Dal Tadka", 40.00, "Sabji"),
(112, "Chana Masala", 50.00, "Sabji"),
(113, "Aloo Matar", 50.00, "Sabji"),
(114, "Aloo Shimla", 50.00, "Sabji"),
(115, "Aloo Jeera", 50.00, "Sabji"),
(116, "Aloo Palak", 50.00, "Sabji"),
(117, "Bhindi Masala", 50.00, "Sabji"),
(118, "Matar Paneer", 60.00, "Sabji"),
(119, "Paneer Masala", 70.00, "Sabji"),
(120, "Paneer Butter Masala", 80.00, "Sabji"),
(121, "Palak Paneer", 60.00, "Sabji"),
(122, "Green Peas Masala", 50.00, "Sabji"),
(123, "Sev Bhaji", 60.00, "Sabji"),
(124, "Mushroom Masala", 70.00, "Sabji"),
(125, "Egg Masala", 60.00,"Sabji");

--@block
UPDATE food_item SET Cafeteria_id= 'DP'
WHERE Food_id between 1 and 40;

--@block
UPDATE food_item SET Cafeteria_id= 'WH'
WHERE Food_id between 84 and 125;

--@block
UPDATE food_item SET Cafeteria_id= 'GC'
WHERE Food_id between 41 and 83;

--@block 
Drop table orders;
--@block 
Drop table payment;

--@block 
CREATE TABLE Payment (
    Payment_id int(10) PRIMARY KEY AUTO_INCREMENT,
    Name char(50),
    Unit_Price float(5,2)
);
--@block 
INSERT INTO Payment(Name, Unit_Price)
  SELECT Name, Unit_Price
    FROM Food_item WHERE Name='Paneer Chilly Combo';

    --@block 
INSERT INTO Payment(Name, Unit_Price)
  SELECT Name, Unit_Price
    FROM Food_item WHERE Name='Ice cream';

--@block
SELECT * FROM payment; 

--@block
SELECT Payment.Name, Food_item.Category
FROM Payment
JOIN Food_item ON Payment.Name=Food_item.Name;

--@block
SELECT cafeteria.Cafeteria_id, Food_item.Name
FROM food_item
LEFT JOIN Food_item ON cafeteria.Cafeteria_id=Food_item.Cafeteria_id;

--@block 
INSERT INTO student(Name, Unit_Price)--
  SELECT Name, Unit_Price
    FROM Food_item WHERE Name='Paneer Chilly Combo';

--@block
select avg (unit_price) from food_item;

--@block
select sum(Unit_Price) from payment;