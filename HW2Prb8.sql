SELECT last_name,first_name, email, status FROM my_contacts
WHERE status IS NOT NULL
AND gender = 'M';

