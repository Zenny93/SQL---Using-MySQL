UPDATE my_contacts
SET Con_city = SUBSTRING_INDEX(Con_location,',', 1);
/*it means grabbing the character before the comma into the con_city column*/