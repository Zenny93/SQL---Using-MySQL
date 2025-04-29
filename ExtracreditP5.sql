/**Produce a list of customers who like contemporary music. **/
SELECT C.CustomerID, C.CustFirstName,C.CustLastName
FROM EntertainmentAgency.Customers C
INNER JOIN EntertainmentAgency.Musical_Preferences MP
ON C.CustomerID = MP.CustomerID
INNER JOIN EntertainmentAgency.Musical_Styles M
ON M.StyleID = MP.StyleID
WHERE M.StyleName ='contemporary'
