/**6.	Bowler-bowler team List every bowlers name and their average score (raw score) from all their listed games.  Order from highest to lowest average score. **/

SELECT T.TeamID, T.TeamName, BW.BowlerLastName, BW.BowlerFirstName,avg(RawScore)
FROM BowlingLeague.Teams T
INNER JOIN BowlingLeague.Bowlers BW
ON T.TeamID=BW.TeamID;
GROUP_BY T.TeamID
ORDER BY avg(RawScore)DESC;
