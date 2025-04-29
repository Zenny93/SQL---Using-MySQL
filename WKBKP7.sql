/**7.	Class-subject List every class and its subject name (not just the subject ID!) 
 Then delimit to only the list to the following subject areas (Design, Introduction to Art, Drawing, Painting, and Art History)
 (not a group by problem)**/
SELECT ClassID, SubjectName  
FROM SchoolScheduling.Classes AS C 
INNER JOIN SchoolScheduling.Subjects AS S  
ON C.SubjectID=S.SubjectID 
WHERE  SubjectName IN ('Design','Introduction to Art', 'Drawing', 'Painting', 'Art History') 