/**List Customers and the musical styles they prefer. **/
SELECT C.CustomerID, C.CustFirstName,C.CustLastName,M.StyleID,M.StyleName
FROM EntertainmentAgency.Customers C
INNER JOIN EntertainmentAgency.Musical_Preferences MP
ON C.CustomerID = MP.CustomerID
INNER JOIN EntertainmentAgency.Musical_Styles M
ON M.StyleID = MP.StyleID
ORDER BY M.StyleID