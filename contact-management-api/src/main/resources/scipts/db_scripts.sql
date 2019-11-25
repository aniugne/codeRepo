create schema CONTACT_MANAGEMENT;
commit;
use  CONTACT_MANAGEMENT;

CREATE TABLE Customer (
  id int(11) NOT NULL,
  firstname varchar(45) ,
  lastname varchar(45),
  dateofbirth datetime,
  gender varchar(1),
  title varchar(15),
  PRIMARY KEY (id)
);


CREATE TABLE Address (
  id int(11) NOT NULL,
  customerId int(11) NOT NULL,
  addressLine1 varchar(45),
  addressLine2 varchar(45),
  street varchar(45),
  city varchar(45),
  state varchar(45),
  zipCode int(10) unsigned,
  PRIMARY KEY (id)
);

CREATE TABLE Communication (
  id int(11) NOT NULL,
  customerId int(11),
  type varchar(15),
  value varchar(45),
  preferred tinyint(4),
  PRIMARY KEY (id)
);

commit;
