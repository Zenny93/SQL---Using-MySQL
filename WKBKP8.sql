/**8.	Give me the total duration time of all classes, grouped by subject name.
 Sort the result by the total duration (lowest to highest). **/
SELECT SubjectName, SUM(Duration) 
FROM SchoolScheduling.Classes AS C 
INNER JOIN SchoolScheduling.Subjects AS S 
ON C.SubjectID=S.SubjectID 
GROUP BY SubjectName 
ORDER BY SUM(Duration); 