/**Show me for each entertainer their stage name, the count of contracts, the total price 
of all the contracts, the lowest contract price, the highest contract price, and the average
 price of all the contracts**/
 SELECT E.EntStageName,COUNT(EN.ContractPrice),SUM(EN.ContractPrice),MIN(EN.ContractPrice), MAX(EN.ContractPrice),
 AVG(EN.ContractPrice)
FROM EntertainmentAgency.Entertainers E
INNER JOIN EntertainmentAgency.Engagements EN
ON E.EntertainerID=EN.EntertainerID
GROUP BY E.EntertainerID
ORDER BY COUNT(EN.ContractPrice) DESC;