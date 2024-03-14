CREATE TABLE Product(
ProductID int,
ProductName varchar(100),
Quantity int,
UnitPrice float
); 

INSERT into Product
VALUES(1, 'Aquarapha', 40, 100),
(2, 'Pinpop', 55, 120),
(3, 'Purebliss', 20, 200),
(4, 'Goldenpenny', 15, 220)
;
-- TO ALTER
ALTER TABLE product
ADD COLUMN CustomerID int;

SET sql_mode = ' ';
UPDATE Product
SET CustomerID = 2
WHERE ProductID = 4;



