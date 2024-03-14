CREATE TABLE Customer (
CustomerID int, 
CustomerName varchar(100),
Email varchar(100),
SalesPersonID int
);

INSERT into Customer
VALUES(1, 'Robinson&Sons', 'info@robinson.com', 2),
(2, 'Harris Enterprise', 'harrisent@gmail.com', 1),
(3, 'Obed Limited', 'obedltd@yahoo.com', 4),
(4, 'Sammy breweries', 'sambrew@gmail.com', 6);

SELECT * FROM sqltutorial.Customer;

