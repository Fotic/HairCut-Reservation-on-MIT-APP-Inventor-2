CREATE DATABASE Mobile_App;
USE Mobile_App;

CREATE TABLE _admins(
	Admin_ID INT auto_increment NOT NULL,
	Username VARCHAR(30) NOT NULL,
	Password VARCHAR(30) NOT NULL,
    HairCutName VARCHAR(30) NOT NULL,
	Fname VARCHAR(30) NOT NULL,
	Sname VARCHAR(30) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	Phone VARCHAR(30) NOT NULL,
	BD VARCHAR(30) NOT NULL,
	Gender VARCHAR(30) NOT NULL,
	PRIMARY KEY (Admin_ID)
);

INSERT INTO _admins VALUES
			(1,'isaak','1234','ΙΣΑΑΚ','Ισαακ','Αβρααμ','isaak@gmail.com','654789123','10/10/1990','Άντρας'),
            (2,'trixa','4321','Τριχοκοπτείον','Φώτης','Παπα','fotis@mail.com','45612378','14/2/1998','Άντρας'),
			(3,'hairpl','54321','hairplayers','Τάκης','Μήχος','takis@gmail.com','6945758013','20/2/1883','Άντρας'),
            (4,'gentlemens','aq1sw2','Gentlemens','Κώστας','Καμπάς','kostas@mail.com','6978549016','14/6/1987','Άντρας');

CREATE TABLE _users(
	User_ID INT auto_increment NOT NULL,
	Username VARCHAR(30) NOT NULL,
	Password VARCHAR(30) NOT NULL,
	Fname VARCHAR(30) NOT NULL,
	Sname VARCHAR(30) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	Phone VARCHAR(30) NOT NULL,
	BD VARCHAR(30) NOT NULL,
	Gender VARCHAR(30) NOT NULL,
	PRIMARY KEY (User_ID)
);

INSERT INTO _users VALUES
			(1,'test','1234','test','test','test@gmail.com','6947849039','10/10/1990','Άντρας'),
            (2,'fotis','1234','fotis','papa','fotis@mail.com','6945359071','14/2/1998','Άντρας');  

CREATE TABLE _orders(
	Order_ID INT auto_increment NOT NULL,
    UserID VARCHAR(30) NOT NULL,
    Dist VARCHAR(30) NOT NULL,
    ShopName VARCHAR(30) NOT NULL,
    Name1 VARCHAR(30) NOT NULL,
    Price1 VARCHAR(30) NOT NULL,
    Name2 VARCHAR(30) NOT NULL,
    Price2 VARCHAR(30) NOT NULL,
    Name3 VARCHAR(30) NOT NULL,
    Price3 VARCHAR(30) NOT NULL,
    Name4 VARCHAR(30) NOT NULL,
    Price4 VARCHAR(30) NOT NULL,
    Name5 VARCHAR(30) NOT NULL,
    Price5 VARCHAR(30) NOT NULL,
	Name6 VARCHAR(30) NOT NULL,
    Price6 VARCHAR(30) NOT NULL,
    Ora VARCHAR(30) NOT NULL,
    OraParagelias VARCHAR(30) NOT NULL,
    HmerominiaParagelias VARCHAR(30) NOT NULL,
	PaymentType VARCHAR(30) NOT NULL,
    FinalPrice VARCHAR(30) NOT NULL,
	PRIMARY KEY (Order_ID)
);

INSERT INTO _orders VALUES
			(1,'test','Kabala','ISAAK','Kourema Aplo','8','Ksirisma Aplo','2','Lousimo-Stegnoma','2','','','','','','','9:00','10:20:10','12/12/2018','Metrita','10'),
            (2,'test','Kabala','ISAAK','Kourema Aplo','8','Ksirisma Aplo','2','Lousimo-Stegnoma','2','','','','','','','11:00','12:12:12','13/12/2018','Metrita','20'),
            (3,'fotis','kabala','ISAAK','Special','8','Faltseta','7','','','','','','','','','10:00','11:12:12','13/12/2018','Metrita','30'),
            (4,'fotis','kabala','ISAAK','Special','8','Faltseta','7','','','','','','','','','9:30','13:12:12','13/12/2018','Metrita','40');
  
CREATE TABLE _ores(
	Time_ID INT auto_increment NOT NULL,
    Ora VARCHAR(10) NOT NULL,
	PRIMARY KEY (Time_ID)
);

INSERT INTO _ores VALUES
			(1,'9:00'),
            (2,'9:30'),
            (3,'10:00'),
            (4,'10:30'),
            (5,'11:00'),
            (6,'11:30'),
            (7,'12:00'),
            (8,'12:30'),
            (9,'13:00'),
            (10,'13:30'),
            (11,'14:00'),
            (12,'14:30');
            
ALTER TABLE _orders add constraint _orders_ibfk_1 FOREIGN KEY (Order_ID) REFERENCES _ores (User_ID);          
ALTER TABLE _orders add constraint _orders_ibfk_2 FOREIGN KEY (Order_ID) REFERENCES _ores (Time_ID);

-- Emfanizei tis ores pou den exoun piasti apo allo xristi-pelti
SELECT _ores.Ora FROM _ores left JOIN _orders ON _ores.Ora=_orders.Ora WHERE _orders.Ora IS NULL;

SELECT Ora FROM _ores WHERE Ora NOT IN (SELECT Ora FROM _orders WHERE ShopName='ISAAK');

-- show orders
SELECT _o.Ora,_u.Fname,_u.Sname,_u.Phone,_o.Name1,_o.Name2,_o.Name3,_o.Name4,_o.Name5,_o.Name6,_o.PaymentType,_o.FinalPrice 
FROM _orders _o,_users _u WHERE _o.ShopName='ISAAK' AND _o.HmerominiaParagelias='13/12/2018' AND _o.UserID=_u.Username 
GROUP BY OraParagelias IN (SELECT MAX(OraParagelias) FROM _orders) ORDER BY _o.Ora desc;

Create View _show_orders AS 
SELECT *  FROM _orders as _o,_users as _u WHERE _o.ShopName='ShopName' AND _o.HmerominiaParagelias='HmerominiaParagelias' AND _o.UserID=_u.Username 
GROUP BY _o.OraParagelias IN (SELECT MAX(OraParagelias) FROM _orders) ORDER BY _o.Ora DESC;

SELECT * FROM _show_orders;

select * from _orders;
select * from _ores;
show tables;