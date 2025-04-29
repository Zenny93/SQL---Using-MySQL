/**9.	How many classes does each subject area get within the curriculum of the school?
 Order most to least.**/
SELECT SubjectName, COUNT(ClassID) 
FROM SchoolScheduling.Classes AS C 
INNER JOIN SchoolScheduling.Subjects AS S
ON C.SubjectID = S.SubjectID 
GROUP BY SubjectName 
ORDER BY COUNT(ClassID) DESC; 