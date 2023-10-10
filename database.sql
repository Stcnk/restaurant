.open restaurant.db
CREATE TABLE customer (
	customerid INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
	city TEXT,
	email TEXT
);

CREATE TABLE menu (
  menuid INTEGER PRIMARY KEY,
  menuname TEXT NOT NULL,
  price INTEGER NOT NULL
);

CREATE TABLE ingredient (
  ingredientid INTEGER PRIMARY KEY,
  ingredientname TEXT NOT NULL
);

CREATE TABLE menu_ingredient (
  menuid INTEGER NOT NULL,
  ingredientid INTEGER NOT NULL,
  FOREIGN KEY (menuid) REFERENCES menu (menuid),
  FOREIGN KEY (ingredientid) REFERENCES ingredient (ingredientid)
);

CREATE TABLE invoice (
  customerid INTEGER NOT NULL,
  invoicedate TEXT NOT NULL,
  billingcity TEXT NOT NULL,
  total INTEGER NOT NULL,
	FOREIGN KEY (customerid) REFERENCES customer (customerid)
);

INSERT INTO customer VALUES
(1,"John Doe","New York","john.doe@google.com"),
(2,"Jane Doe","Los Angeles","jane.doe@yahoo.com"),
(3,"Peter Smith","Chicago","peter.smith@hotmail.com"),
(4,"Susan Jones","Dallas","Susan.Jones@outlook.com"),
(5,"Michael Brown","Houston","Michael.Brown@google.com"),
(6,"Sarah Green","San Francisco","Sarah.Green@yahoo.com"),
(7,"David Williams","Austin","David.Williams@hotmail.com"),
(8,"Emily White","Seattle","Emily.White@outlook.com"),
(9,"Caroline Black","Portland","Caroline.Black@google.com"),
(10,"Adam Red","Denver","Adam.Red@yahoo.com");

INSERT INTO menu VALUES
(1, "Pad Thai", 40),
(2, "Tom Yum Goong", 60),
(3, "Khao Soi", 60),
(4, "Khao Niaow Mamuang", 50),
(5, "Ice Cream", 25);

INSERT INTO ingredient VALUES
(1, "Noodle"),
(2, "Egg"),
(3, "Fish Sauce"),
(4, "Shrimp"),
(5, "Chili"),
(6, "Onion"),
(7, "Garlic"),
(8, "Coconut Milk"),
(9, "Mango");

INSERT INTO menu_ingredient VALUES
(1,1),
(1,2),
(1,3),
(1,7),
(2,3),
(2,4),
(2,5),
(2,7),
(3,1),
(3,6),
(3,7),
(4,8),
(4,9),
(5,8),
(5,9);

INSERT INTO invoice VALUES
(1,"2023-05-05","Bangkok",100),
(2,"2023-05-12","Chiang Mai",150),
(3,"2023-06-07","Krabi",250),
(4,"2023-06-09","Phuket",200),
(5,"2023-06-09","Phuket",300),
(6,"2023-06-10","Bangkok",175),
(7,"2023-06-11","Krabi",120),
(8,"2023-06-15","Bangkok",50),
(9,"2023-06-15","Phuket",200),
(10,"2023-06-20","Chiang Mai",350);




