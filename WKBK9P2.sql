/**2.	Class-subject (School_scheduling) List every class and its subject name (not just the subject ID!) **/
SELECT C.ClassRoomID, S.SubjectName, S.SubjectID
FROM SchoolScheduling.Classes C
INNER JOIN SchoolScheduling.Subjects S
ON C.SubjectID=S.SubjectID;