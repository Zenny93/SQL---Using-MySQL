/** 4.	List only the owners with animals (do not repeat the same name).
we use inner join for this**/
SELECT DISTINCT OWN_FNAME, OWN_LNAME, O.OWN_ID
FROM VetBilling.OWNER O
INNER JOIN VetBilling.ANIMAL A
ON O.OWN_ID=A.OWN_ID

