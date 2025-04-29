/**5.	List all owners and payment amounts, include owners who have made no payments (if applicable)**/
SELECT OWN_FNAME, OWN_LNAME, PAYMENT_AMOUNT, o.OWN_ID, p.OWN_ID
FROM VetBilling.PAYMENT p
RIGHT OUTER JOIN VetBilling.OWNER o
ON o.OWN_ID=p.OWN_ID;