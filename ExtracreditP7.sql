/**List customers and the entertainers they booked. Do not repeat the same
 pair of customer and entertainer in the result. 
Sort the result by customer names and then entertainer names**/
SELECT DISTINCT C.CustomerID, C.CustFirstName,C.CustLastName,EN.EntertainerID, EN.EntStageName
FROM EntertainmentAgency.Customers C
INNER JOIN EntertainmentAgency.Engagements EG
ON C.CustomerID = EG.CustomerID
INNER JOIN EntertainmentAgency.Entertainers EN
ON EN.EntertainerID = EG.EntertainerID 
ORDER BY C.CustFirstName ASC,
		 C.CustLastName DESC,
		EN.EntStageName DESC;