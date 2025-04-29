/**4.	Sales order database:  “List all products and their categories”**/
SELECT P.ProductNumber, P.ProductName, CY.CategoryID, CY.CategoryDescription
FROM SalesOrders.Products P
INNER JOIN SalesOrders.Categories CY
ON CY.CategoryID=P.CategoryID;