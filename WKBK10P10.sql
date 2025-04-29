/**SALES ORDER: We’ve been having problems with wheels failing.  
List all the wheel product names, the order numbers of orders that contain wheels,
 and the category description for each product.  (hint wheels = categoryID 6). 
This one is a bit harder.  Remember to work in stages…**/
/** First step is a query joining the two tables**/
 SELECT P.ProductName,P.ProductNumber,C.CategoryDescription
 FROM SalesOrders.Products P
 INNER JOIN SalesOrders.Categories C
 ON P.CategoryID =C.CategoryID
 WHERE P.CategoryID = 6;
 
 SELECT P.ProductName,P.ProductNumber, OrderNumber, CategoryDescription
 FROM (SalesOrders.Products P
 INNER JOIN SalesOrders.Categories C
 ON P.CategoryID =C.CategoryID)
 INNER JOIN SalesOrders.Order_Details O
 ON O.ProductNumber = P.ProductNumber
WHERE P.CategoryID = 6
 ORDER BY OrderNumber;
 /** Step 2**/