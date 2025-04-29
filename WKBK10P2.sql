/**2.	List all owners in the database and their animal’s names.
  Include owners that have no animals.**/
SELECT OWN_FNAME, OWN_LNAME, ANIMAL_NAME, a.OWN_ID, o.OWN_ID
FROM VetBilling.ANIMAL a
RIGHT OUTER JOIN VetBilling.OWNER o
ON o.OWN_ID=a.OWN_ID;