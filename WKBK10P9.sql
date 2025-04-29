/**Use the SALES ORDER (SalesOrders) database: List all the vendor names,
 vendor ID with the names of the products they sell. (hint 3 table: vendors, product_vendors, products)
 Note: this is querying across a bridge (Product_Vendors) a very common 3 table query type.**/
 SELECT V.VendorID,V.VendName,P.ProductName
 FROM (SalesOrders.Products P
 INNER JOIN SalesOrders.Product_Vendors PV
 ON P.ProductNumber =PV.ProductNumber)
 INNER JOIN SalesOrders.Vendors V
 ON V.VendorID = PV.VendorID
 ORDER BY V.VendorID;

