/**Show me entertainers and the start and end dates of their contracts, and the contract price 
for the engagements started in October 2018**/
SELECT E.EntertainerID, EN.StartDate, EN.EndDate, EN.ContractPrice
FROM EntertainmentAgency.Entertainers E
INNER JOIN EntertainmentAgency.Engagements EN
ON E.EntertainerID=EN.EntertainerID
where CONCAT(YEAR(StartDate),'-',MONTH(StartDate)) = '2018-10'
AND CONCAT(YEAR(EndDate),'-',MONTH(EndDate)) = '2018-10'

