USE APRILPYTHON;
-- 1. DDL(DATA DEFINITION LANGUAGE)
-- 1. CREATE
CREATE TABLE SCHOOL(ROLLNO INT, NAME CHAR(20), CITY CHAR(20), EMAIL CHAR(20));

-- 2. ALTER
ALTER TABLE SCHOOL ADD ADHARNO INT;

-- 3. TRUNCATE
TRUNCATE TABLE SCHOOL;
-- 4. DROP
DROP TABLE SCHOOL;

-- 2. DML(DATA MANIPULATION LANGUAGE)
-- 1. INSERT
INSERT INTO SCHOOL(ROLLNO, NAME, CITY, EMAIL, ADHARNO) VALUES (1, 'AISHU', 'SOLAPUR', 'AISHU@GMAIL.COM', 1234),
(2, 'SONA', 'SOLAPUR', 'SONA@GMAIL.COM', 6443),
(3, 'RAM', 'PUNE', 'RAM@GMAIL.COM', 7890),
(4, 'SHYAM', 'MUMBAI', 'SHYAM@GMAIL.COM', 5678);


-- 2. UPDATE
UPDATE SCHOOL SET NAME="ATHARVA" WHERE ROLLNO=2;
-- 3. DELETE
DELETE FROM SCHOOL;

-- 3. DQL(DATA QUERY LANGUAGE)
SELECT * FROM SCHOOL;


CREATE TABLE STUDENT(SRNO INT, NAME CHAR(20), AGE INT, COURSE CHAR(20), CITY CHAR(20));
INSERT INTO STUDENT(SRNO, NAME, AGE, COURSE, CITY) VALUES (1, "RAHUL",20,"BCA","PUNE"),
(2, "ANITA",21,"BBA","MUMBAI"),(3, "VIKAS",19,"BSC","DELHI"),(4, "PRIYA",22,"BCA","CHENNAI"),(5, "AMIT",20,"BCOM","NAGPUR"),
(6, "SNEHA",21,"BCA","PUNE"),(7, "ROHAN",23,"MBA","MUMBAI"),(8, "KAVITA",20,"BSC","DELHI"),(9, "ARJUN",22,"BBA","HYDERABAD"),
(10, "NEHA",19,"BCA","BANGALORE");

SELECT * FROM STUDENT;

CREATE TABLE TEACHER(SRNO INT, NAME CHAR(20), AGE INT, COURSE CHAR(20), CITY CHAR(20));
INSERT INTO TEACHER(SRNO, NAME, AGE, COURSE, CITY) VALUES (1, "RAHUL",20,"BCA","PUNE"),
(2, "ANITA",21,"BBA","MUMBAI"),(3, "VIKAS",19,"BSC","DELHI"),(4, "PRIYA",22,"BCA","CHENNAI"),(5, "AMIT",20,"BCOM","NAGPUR"),
(6, "SNEHA",21,"BCA","PUNE"),(7, "ROHAN",23,"MBA","MUMBAI"),(8, "KAVITA",20,"BSC","DELHI"),(9, "ARJUN",22,"BBA","HYDERABAD"),
(10, "NEHA",19,"BCA","BANGALORE");

SELECT * FROM TEACHER;

CREATE TABLE Product (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
QuantityInStock INT,
    Price DECIMAL(10, 2),
    Manufacturer VARCHAR(100)
);

INSERT INTO Product (ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)
VALUES
(1, 'Wireless Mouse', 'Electronics', 150, 599.99, 'Logitech'),
(2, 'Bluetooth Speaker', 'Electronics', 80, 1299.50, 'Sony'),
(3, 'Running Shoes', 'Footwear', 60, 3499.00, 'Nike'),
(4, 'T-Shirt', 'Clothing', 200, 499.00, 'Puma'),
(5, 'Washing Machine', 'Appliances', 20, 23999.99, 'Samsung'),
(6, 'Smartphone', 'Electronics', 100, 18999.00, 'Realme'),
(7, 'Backpack', 'Accessories', 75, 1199.00, 'Wildcraft'),
(8, 'LED Bulb Pack', 'Home Essentials', 300, 299.00, 'Philips'),
(9, 'Keyboard', 'Electronics', 95, 999.00, 'HP'),
(10, 'Water Bottle', 'Kitchenware', 180, 249.00, 'Milton'),
(11, 'Wrist Watch', 'Accessories', 40, 2099.00, 'Fastrack'),
(12, 'Laptop Stand', 'Office Supplies', 50, 1499.00, 'AmazonBasics'),
(13, 'Hair Dryer', 'Personal Care', 25, 1799.00, 'Panasonic'),
(14, 'Microwave Oven', 'Appliances', 15, 10999.00, 'IFB'),
(15, 'Jeans', 'Clothing', 90, 1599.00, 'Levis');

SELECT * FROM Product;
-- INSERT Questions
-- 1.	Insert a new product: "Electric Kettle" in category "Appliances" with 30 units, price ₹999.00, manufactured by "Prestige".
INSERT INTO Product ( ProductName, Category, QuantityInStock, Price, Manufacturer)VALUES("Electric kettle","Appliances",30,990.00,"Prestige");
-- Ans: Record is not inserted bacause of primary key on product ID.

-- 2.	Add a product: "Yoga Mat" under "Fitness" category with stock 50, price ₹599.00, and manufacturer "Decathlon".
INSERT INTO Product (ProductName, Category, QuantityInStock, Price, Manufacturer)VALUES( "Yoga Mat","Fitness",50,599,"Decathlon");
-- Ans: Record is not inserted bacause of primary key on product ID.

-- 3.	Add a new clothing item "Jacket", category "Clothing", stock 45, price ₹2499.00, manufacturer "Woodland".
INSERT INTO Product( ProductName, Category, QuantityInStock, Price, Manufacturer)VALUES("Jacket","Clothing",45,2499,"Woodland");
-- Ans: Record is not inserted bacause of primary key on product ID.

-- 4.	Try inserting a product with a duplicate ProductID. What happens?
INSERT INTO Product (ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)VALUES(10, "Cloth","Wear",20,3000,"Wooden");
-- Ans: Duplicate Value is not inserted bacause of primary key

-- 5.	Insert a product with NULL as Category for a generic item called "Multi-Purpose Cleaner".
INSERT INTO Product (ProductID, ProductName, Category)VALUES(16, NULL,"Multi-Purpose Cleaner");
-- Ans: Column product name cannot be Null

-- 6.	Insert a record with a negative QuantityInStock. What does SQL do?
INSERT INTO Product (ProductID, ProductName, QuantityInStock)VALUES(17, "Cleaner",-50);
-- Ans: Record is inserted because integer datatype accept positive and negative value.

-- 7.	Add a new product “Wireless Charger” with NULL in Manufacturer, is it allowed?
INSERT INTO Product (ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)VALUES(18, "Wireless Charger","ELectric",-30,400,NULL);
-- Ans: Record is inserted because no constraint is used of manufacturer.

-- 8.	Insert multiple new products in a single INSERT statement.
INSERT INTO Product (ProductID, ProductName, Category, QuantityInStock, Price, Manufacturer)
VALUES
(19, 'USB Cable', 'Electronics', 120, 199.00, 'Boat'),
(20, 'Notebook', 'Stationery', 300, 49.00, 'Classmate'),
(21, 'Ceiling Fan', 'Appliances', 25, 2499.00, 'Havells'),
(22, 'Coffee Mug', 'Kitchenware', 100, 149.00, 'Cello');

-- UPDATE Questions
-- 1.	Update the price of “Smartphone” to ₹17999.00.
	UPDATE Product SET Price = 17999.00 WHERE ProductName="Smartphone";
    
-- 2.	Increase the stock of “LED Bulb Pack” by 50 units.
   UPDATE Product SET QuantityInStock=QuantityInStock+50 WHERE ProductName="LED Bulb Pack";
   
-- 3.	Change the Manufacturer of all “Clothing” products to “Zara”.
  UPDATE Product SET Manufacturer="Zara" WHERE Category="Clothing";
  
-- 4.	Apply a 10% discount on all “Electronics” category products.
 UPDATE Product SET Price=Price-(Price*0.10) WHERE Category="Electronics";
 
-- 5.	Set QuantityInStock to 0 for “Hair Dryer”.
 UPDATE Product SET QuantityInStock=0 WHERE ProductName="Hair Dryer";
 
-- 6.	Update the Category of "Water Bottle" from "Kitchenware" to "Travel Essentials".
UPDATE Product SET Category="Travel Essentials" Where ProductName="Water Bottle";

-- 7.	Rename the product “Washing Machine” to “Front Load Washing Machine”.
UPDATE Product SET ProductName="Front Load Washing Machine" WHERE ProductName="Washing Machine";

-- 8.	Update the Price of all products above ₹10,000 by reducing ₹500.
UPDATE Product SET Price=Price-500 WHERE Price>10000;

-- DELETE Questions
-- 1. Delete the product with ProductID = 13.
Delete from Product Where ProductId=13;

-- 2. Delete all products with stock less than 20 units
Delete from Product WHERE QuantityInSTock < 20;










