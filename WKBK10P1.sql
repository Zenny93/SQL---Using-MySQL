/**In any OUTER JOIN, we will see all rows from one of the tables (whether or not there are matches in the other table).
 From the other table, we will see NULL values in the results. The trick is figuring out which table we want all of,
 and which table will produce NULLs.
In this case, we want our results to include all the ANIMALs, and some of the OWNERs will be null (because strays don't have owners).
we have right or left outer join
HERE IS THE TRICK: the direction ("right" or "left") on the OUTER JOIN in the query should "point at" the table you want all of! **/
SELECT ANIMAL_NAME, OWN_FNAME, OWN_LNAME, a.OWN_NUM, o.OWN_NUM
FROM owner o
RIGHT OUTER JOIN animal a
ON o.OWN_NUM=a.OWN_NUM;