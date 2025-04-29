/**3.	(null search) List only animals that have no owners (are strays)**/
SELECT ANIMAL_NAME, OWN_FNAME, OWN_LNAME, a.OWN_ID, o.OWN_ID
FROM VetBilling.OWNER o
RIGHT OUTER JOIN VetBilling.ANIMAL a
ON o.OWN_ID= a.OWN_ID
WHERE a.OWN_ID IS NULL;
