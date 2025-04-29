/** How many players does each team have? , order from highest to lowest**/
SELECT Team_name, COUNT(Player_ID) 
FROM Teams AS T
INNER JOIN Players AS P
ON T.Team_ID = P.Team_ID 
GROUP BY Team_name 
ORDER BY COUNT(Player_ID) DESC; 
