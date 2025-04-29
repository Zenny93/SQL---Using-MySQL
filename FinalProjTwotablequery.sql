/*** Two table query, List the team name and all of its players**/
SELECT T.Team_name, PL.Player_fname, PL.Player_lname
FROM Teams T
INNER JOIN Players PL
ON T.Team_ID=PL.Team_ID;
