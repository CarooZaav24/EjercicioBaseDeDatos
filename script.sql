SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orders;
SELECT * FROM orderdetails;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;
-- -------
SELECT 
    c.customerNumber,
    c.customerName,
    o.orderNumber,
    o.orderDate,
    o.status,
    od.productCode,
    od.quantityOrdered,
    od.priceEach,
    (od.quantityOrdered * od.priceEach) AS total
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber;




