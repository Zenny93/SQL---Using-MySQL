/**Write a GROUP BY query for the database BowlingLeague, table BowlerScores that will answer the following question… 
“What is the average raw score for each BowlerID**/
SELECT BowlerID, avg(RawScore) /** Averaging raw score based on 
bowler ID**/
FROM Bowler_Scores/** This is the table containing
the rawscore and ID data **/
GROUP BY BowlerID /** Grouping together all bowler ID**/
ORDER BY avg(RawScore)DESC;
/** we have to order by the same average we selected with **/
/** DESC is used to display the avg values from high to low **/
/** note that for group by to work, we need to include a 
cummulative function such as count, sum, max, min ,max etc **/