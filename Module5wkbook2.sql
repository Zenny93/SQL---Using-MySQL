UPDATE my_contacts
SET Con_state = RIGHT(Con_location, 2);
/*it means take two characters from the far right of the location 
column and set in con_state column*/