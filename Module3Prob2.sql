DROP TABLE IF EXISTS drinks;

CREATE TABLE drinks(
drink_id int(11) NOT NULL auto_increment,
drink_name varchar(16) default NULL,
drink_price decimal(4,2) default NULL,
drink_directions varchar(250) default NULL,
PRIMARY KEY (drink_id)
);
CREATE TABLE ingredients(
ingd_id int(11) NOT NULL auto_increment,
ingd_name varchar(20) default NULL,
ingd_amount decimal(4,2) default NULL,
drink_id int(11),
PRIMARY KEY (ingd_id)
);