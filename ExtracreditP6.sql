/**Find the entertainers who played engagements for the customer whose last name is Callahan. **/
SELECT EN.EntertainerID, EN.EntStageName
FROM EntertainmentAgency.Entertainers EN
INNER JOIN EntertainmentAgency.Engagements EG
ON EN.EntertainerID = EG.EntertainerID
INNER JOIN EntertainmentAgency.Customers C
ON C.CustomerID = EG.CustomerID
WHERE C.CustLastName ='Callahan'