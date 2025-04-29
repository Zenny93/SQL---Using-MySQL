/**7.	(null search)  List any owners in the database who have made no payments**/
SELECT OWN_FNAME, OWN_LNAME, PAYMENT_AMOUNT, p.OWN_ID, o.OWN_ID
FROM VetBilling.PAYMENT p
RIGHT OUTER JOIN VetBilling.OWNER o
ON o.OWN_ID= p.OWN_ID
WHERE p.OWN_ID IS NULL;