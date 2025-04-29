SELECT last_name,first_name, email, status FROM my_contacts
WHERE status IN ('single', 'divorced')
AND gender = 'M';