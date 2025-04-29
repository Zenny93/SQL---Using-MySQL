/**1.	List the bowling team name and the names of all the members. **/
SELECT T.TeamName, BW.BowlerLastName, BW.BowlerFirstName
FROM BowlingLeague.Teams T
INNER JOIN BowlingLeague.Bowlers BW
ON T.TeamID=BW.TeamID;

/**SELECT..some set of attributes you want to see in the results...
FROM..table 1...
INNER JOIN ..table 2....
ON...pktable1=fktable2 (matched pair)**/