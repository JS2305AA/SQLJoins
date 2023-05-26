/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT P.Name AS ProuductName, C.Name AS CategoryName
 FROM prouducts AS P
 INNER JOIN categories AS C
 ON C.CategoryID = P.CategoryID
 WHERE C.Name = 'Computers';
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT *
 FROM product
 INNER JOIN reviews ON reviews.ProductID = ProuductID
 WHERE reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.Quantity)d AS Total
FROM sales As s
INNER JOIN employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 2;

select * from sales
where EmployeeID = 33809

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Department Name' c.Name, s 'Category Name' FROM department as d
INNER JOIN category as C ON c.DepartmentID = d.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name, Sum(s.Quantity) as 'Total Sold', SUM (s.Quantity * s.PricePerUnit) as 'total Price'
 FROM products s as p
 INNER JOIN sales as s on s.ProductID = p.ProductID
 WHERE p.ProductID = 97
 
 select * from sales where productID = 97
 
 
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
SELECT e.EmployeeID, e.FirstName, e.LastName, p.Name SUM(s.Quantity) as TotalSold
FROM Sales as s
INNER JOIN employees as e on e.EmployeeID = s.EMployeeID
INNER JOIN products as p on p.ProductID = s.ProductID
Group BY e.EmployeeID, p.ProductID;

