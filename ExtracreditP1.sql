/**Show me entertainers, the start and end dates of their contracts, and the contract price**/
SELECT E.EntertainerID, E.EntStageName, EN.StartDate, EN.EndDate, EN.ContractPrice
FROM EntertainmentAgency.Entertainers E
INNER JOIN EntertainmentAgency.Engagements EN
ON E.EntertainerID=EN.EntertainerID;