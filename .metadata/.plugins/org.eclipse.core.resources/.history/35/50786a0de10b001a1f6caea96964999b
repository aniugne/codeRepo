CREATE TABLE 'Customer' (
  'id' int(11) NOT NULL,
  'firstname' varchar(45) DEFAULT NULL,
  'lastname' varchar(45) DEFAULT NULL,
  'dateofbirth' datetime DEFAULT NULL,
  'gender' varchar(1) DEFAULT NULL,
  'title' varchar(15) DEFAULT NULL,
  PRIMARY KEY ('id')
);


CREATE TABLE 'Address' (
  'id' int(11) NOT NULL,
  'customerId' int(11) NOT NULL,
  'addressLine1' varchar(45) DEFAULT NULL,
  'addressLine2' varchar(45) DEFAULT NULL,
  'street' varchar(45) DEFAULT NULL,
  'city' varchar(45) DEFAULT NULL,
  'state' varchar(45) DEFAULT NULL,
  'zipCode' int(10) unsigned DEFAULT NULL,
  PRIMARY KEY ('id'),
  KEY 'contactId_idx' ('customerId'),
  CONSTRAINT 'contactId' FOREIGN KEY ('customerId') REFERENCES 'Customer' ('id')
);

CREATE TABLE 'Communication' (
  'id' int(11) NOT NULL,
  'customerId' int(11) DEFAULT NULL,
  'type' varchar(15) DEFAULT NULL,
  'value' varchar(45) DEFAULT NULL,
  'preferred' tinyint(4) DEFAULT NULL,
  PRIMARY KEY ('id'),
  KEY 'customerId_idx' ('customerId'),
  CONSTRAINT 'customerId' FOREIGN KEY ('customerId') REFERENCES 'Customer' ('id')
);

commit;
