/**8.	Now here’s a similar question going back to owners and animals: List only owners that have no animals.**/
SELECT OWN_FNAME,OWN_LNAME,ANIMAL_NAME, o.OWN_ID, a.OWN_ID
FROM VetBilling.ANIMAL a
RIGHT OUTER JOIN VetBilling.OWNER o
ON o.OWN_ID = a.OWN_ID
WHERE a.OWN_ID IS NULL;

