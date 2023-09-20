-- Creating the database
CREATE DATABASE tv_channel_broadcast_system;
use tv_channel_Broadcast_System;

-- Creating Tables

-- Table 01 - customer
CREATE TABLE customer 
(
C_ID varchar(10),
C_NIC varchar(10) NOT NULL,
C_Name varchar(25),
C_Birth_Day date,
C_Age int(20),
C_Street varchar(40),
C_City varchar(40),
C_District varchar(40),
PRIMARY KEY(C_ID)
);

-- Table 02 - Customer_PNum
CREATE TABLE customer_pnum
(
C_ID varchar(10),
C_PhoneNumber int(10),
PRIMARY KEY(C_ID)
);

-- Table 03 - Customer_District 
CREATE TABLE customer_district
(
C_Name varchar(10),
C_District  varchar(20),
C_ID varchar(10),
PRIMARY KEY(C_Name)
);

-- Table 04 - Programmes
CREATE TABLE programmes
(
P_Name varchar(20)  NOT NULL,
P_Language varchar(10),
P_StartTime time NOT NULL,
P_EndTime time NOT NULL,
C_ID int(10),
PRIMARY KEY(P_Name, C_ID)
);

-- Table 05 - Payment
CREATE TABLE payment
(
P_Method varchar(20) NOT NULL,
Amount_Paid varchar(15),
Payed_Date date NOT NULL,
Due_Date date NOT NULL,
S_Index int(10),
PRIMARY KEY(S_Index, Payed_Date)
);

-- Table 06 - Network
CREATE TABLE network
(
Network_ID varchar(40),
Network_Name varchar(40)  NOT NULL,
Network_Frequency varchar(40) NOT NULL,
Network_Bandwidth int(10),
C_ID int(10) UNIQUE,
PRIMARY KEY(Network_ID)
);

-- Table 07 - Channels
CREATE TABLE channels
(
C_ID int(10),
C_Name varchar(40)  NOT NULL,
C_Language varchar(20),
S_Index int(10),
PRIMARY KEY(C_ID)
);

-- Table 08 - Devices
CREATE TABLE devices
(
D_Number int(10),
D_Name varchar(40) NOT NULL,
D_Type varchar(10),
PRIMARY KEY(D_Number),
C_ID varchar(10)
);

-- Table 09 - Genre
CREATE TABLE genre
(
Genre_ID varchar(10),
Genre_Name  varchar(20) NOT NULL,
Genre_Discription varchar(60),
Channel_Count int(10),
PRIMARY KEY(Genre_ID)
);

-- Table 10 - Subscription
CREATE TABLE subscription
(
S_Index int(10),
S_Name varchar(20) NOT NULL,
Subscribed_Date date,
C_ID varchar(10),
PRIMARY KEY(S_Index)
);

-- Table 11 - Subscription_Price
CREATE TABLE subscription_Price
(
S_Name varchar(20),
S_Price varchar(10),
S_Index int(10),
PRIMARY KEY(S_Name)
);

-- Table 12 - Advertisement
CREATE TABLE advertisement
(
A_Name varchar(35) NOT NULL,
A_Company varchar(35),
A_Duration varchar(25) NOT NULL,
A_Price varchar(35),
C_ID int(10),
PRIMARY KEY(A_Name, A_Company)
);

-- Inserting Values Into Tables

-- Table 01 - customer
INSERT INTO customer VALUES('C209456','983576191V','Hansani','1998-09-28',24,'98/2','Minneriya','Pollonnaruwa');
INSERT INTO customer VALUES('C213957','973576191V','Prabhani','1997-09-10',25,'No.199/A','Wakwella','Galle');
INSERT INTO customer VALUES('C195858','20003991V','Rohan','2000-03-07',21,'PO Box: 130','Hanthana','Kandy');
INSERT INTO customer VALUES('C207909','200176191V','Chamika','1998-09-28',26,'34/B','Malsiripura','Kandy');
INSERT INTO customer VALUES('C223446','973576191V','Kaushy','2000-03-07',22,'34/A','Buuwalikada','Hambanthota');
INSERT INTO customer VALUES('C211461','993576191V','Prabhani','1999-02-25',23,'No.19, Jayabima Place','Hapugala','Pollonnaruwa');

-- Table 02 - Customer_PNum
INSERT INTO customer_pnum VALUES('C209456','765939700');
INSERT INTO customer_pnum VALUES('C213957','770487770');
INSERT INTO customer_pnum VALUES('C195858','716868110');
INSERT INTO customer_pnum VALUES('C207909','779863458');
INSERT INTO customer_pnum VALUES('C223446','716597344');
INSERT INTO customer_pnum VALUES('C211461','769884301');

-- Table 03 - Customer_District
INSERT INTO customer_district VALUES('Hansani','Pollonnaruwa','C209456') ;
INSERT INTO customer_district VALUES('Prabhani','Galle','C213957') ;
INSERT INTO customer_district VALUES('Rohan','Kandy','C195858') ;
INSERT INTO customer_district VALUES('Chamika','Kandy','C207909') ;
INSERT INTO customer_district VALUES('Kaushy','Hambanthota','C223446') ;

-- Table 04 - Programmes
INSERT INTO programmes VALUES('Pinochchio','Korean', '07:00:00', '08:30:00','1');
INSERT INTO programmes VALUES('Dennis','English', '08:00:00', '08:30:00','14');
INSERT INTO programmes VALUES('Ada derana','Sinhala', '10:30:00', '11:00:00','19');
INSERT INTO programmes VALUES('Dream star','Sinhala', '09:00:00', '09:30:00','52');
INSERT INTO programmes VALUES('Ada derana','English', '07:00:00', '07:30:00','47');
INSERT INTO programmes VALUES('Untamed','Chinese', '11:00:00', '13:30:00','50');

-- Table 05 - Payment
INSERT INTO payment VALUES('Cash Payment','RS.1600','2022-01-01','2022-01-19',1001);
INSERT INTO payment VALUES('Cash Payment','RS.2560','2022-01-31','2022-03-22',1002);
INSERT INTO payment VALUES('Card Payment','RS.1780','2022-03-01','2022-03-22',1003);
INSERT INTO payment VALUES('Card Payment','RS.2100','2022-03-31','2022-04-02',1004);
INSERT INTO payment VALUES('Card Payment','RS.1600','2022-05-01','2022-05-31',1005);
INSERT INTO payment VALUES('Card Payment','RS.1360','2022-01-31','2022-06-25',1006);

-- Table 06 - Network
INSERT INTO network VALUES('255.255.5.5','Independent Television Network-itn','UHF 52 / 719.25 (V)724.75 (S)CH-52','100','1');
INSERT INTO network VALUES('192.455.0.9','Voice of Asia Network-siyatha','VHF 10 / 210.25 (V)215.75 (S)CH-10','98','14');
INSERT INTO network VALUES('324.168.0.2','Sri Lanka Rupavahini Corporation','UHF 21 / 487.25 (V)492.75 (S)CH-23','56','19');
INSERT INTO network VALUES('255.255.0.3','Power House-dERANA','VHF 08 / 196.25 (V)201.75 (S)CH-8','135','52'); 
INSERT INTO network VALUES('196.255.0.4','   EAP Broadcasting Company','UHF 52 / 719.25 (V)724.75 (S)CH-52','257','47');
INSERT INTO network VALUES('674.255.0.5','Asia Broadcasting Corporation','VHF 12 / 224.25 (V)229.75 (S)CH-12','223','50');

-- Table 07 - Channels
INSERT INTO channels VALUES('1','Rupavahini ','Sinhala',1001);
INSERT INTO channels VALUES('14','Fox life','English',1002);
INSERT INTO channels VALUES('19','Sirasa','Sinhala',1003);
INSERT INTO channels VALUES('52','TVN','Korean',1004);
INSERT INTO channels VALUES('47','Hiru TV','Sinhala',1005);
INSERT INTO channels VALUES('50','National Geographic Channel','English',1006);

-- Table 08 - Devices
INSERT INTO devices VALUES(1,'Dialog Television ViU Mini', 'Dialog','C209456');
INSERT INTO devices VALUES(3,'Dialog TV ViU Hub', 'Dialog','C213957');
INSERT INTO devices VALUES(4,'N8784B', 'Dish TV','C195858');
INSERT INTO devices VALUES(5,'ESM8-IR10', 'Peo TV','C207909');
INSERT INTO devices VALUES(7,'DN8984C', 'Peo TV','C223446');
INSERT INTO devices VALUES(6,'ESM8-IR70', 'Dialog','C211461');

-- Table 09 - Genre
INSERT INTO genre VALUES('G3001','Education','Program related to school',3);
INSERT INTO genre VALUES('G3002','Comedy ','Sitcom,Romcom,Stand-up comedy',5);
INSERT INTO genre VALUES('G3003','Entertainment','Program about entertainment ',8);
INSERT INTO genre VALUES('G3004','Sports','Program about sports ',4);
INSERT INTO genre VALUES('G3005','Music TV','program about music',3);
INSERT INTO genre VALUES('G3006','News','television program depicting real, up-to-date events',2);

-- Table 10 - Subscription
INSERT INTO subscription VALUES('1001','Titanium','2022.02.06','C209456');
INSERT INTO subscription VALUES('1002','Platinum','2022.08.06','C213957');
INSERT INTO subscription VALUES('1003','Gold ','2022.03.21','C195858');
INSERT INTO subscription VALUES('1004','Entertainment ','2022.08.06','C207909');
INSERT INTO subscription VALUES('1005','Family','2022.05.01','C223446');
INSERT INTO subscription VALUES('1006','Silver','2022.01.10','C211461');

-- Table 11 - Subscription_Price
INSERT INTO subscription_price VALUES('Titanium','Rs.2940',1001);
INSERT INTO subscription_price VALUES('Platinum','Rs.2660',1002);
INSERT INTO subscription_price VALUES('Gold ','Rs.2100',1003);
INSERT INTO subscription_price VALUES('Entertainment ','Rs.1875',1004);
INSERT INTO subscription_price VALUES('Family','Rs.1625',1005);
INSERT INTO subscription_price VALUES('Silver','Rs.1200',1006);

-- Table 12 - Advertisement
INSERT INTO advertisement VALUES('Closeup Toothpaste','Closeup','30sec x 10','RS.250,000','1');
INSERT INTO advertisement VALUES('Sunlight','Uniliver','15sec x 15','RS 210,000','14');
INSERT INTO advertisement VALUES('Mac Tiles','MacTiles Lanka','30sec x 10','RRS. 260,000','19');
INSERT INTO advertisement VALUES('Cream Soda','Elephant House','20sec x 12','RS.190,000','52');
INSERT INTO advertisement VALUES('Fair & Lovely','Unilever','10sec x 15','RS.250,000','47');
INSERT INTO advertisement VALUES('Cream Soda','My Cola','20sec x 20','RS. 320,000','50');

-- Making the relationships

-- Channels HAS Programmes = 1:N
ALTER TABLE programmes ADD CONSTRAINT fk_programmes
FOREIGN KEY(C_ID) REFERENCES channels(C_ID);

-- Channel BELONGS_TO Genre = N:N
CREATE TABLE channel_belongs_To_genre
(
C_ID int(10),
Genre_ID varchar(10),
PRIMARY KEY(C_ID, Genre_ID),
CONSTRAINT fk_channel_belongs_to FOREIGN KEY(C_ID) REFERENCES channels(C_ID),
CONSTRAINT fk_belongs_to_genre FOREIGN KEY(Genre_ID) REFERENCES genre(Genre_ID)
);

-- Channel USES Network = 1:1
ALTER TABLE network ADD CONSTRAINT fk_network
FOREIGN KEY(C_ID) REFERENCES channels(C_ID);

-- Channels INCLUDES Advertisement = 1:N
ALTER TABLE advertisement ADD CONSTRAINT fk_advertisement
FOREIGN KEY(C_ID) REFERENCES channels(C_ID);

-- Subscription INCLUDES Channels = 1:N
ALTER TABLE channels ADD CONSTRAINT fk_channels
FOREIGN KEY(S_Index) REFERENCES subscription(S_Index);

-- Subscription HAS_A Subscription_Price = 1:1
ALTER TABLE Subscription_Price ADD CONSTRAINT fk_subscription_price
FOREIGN KEY(S_Index) REFERENCES subscription(S_Index);

-- Customer HAS Subscription = 1:N
ALTER TABLE subscription ADD CONSTRAINT fk_subscription
FOREIGN KEY(C_ID) REFERENCES customer(C_ID);

-- Customer LIVES_IN Customer_District = 1:1
ALTER TABLE customer_District ADD CONSTRAINT fk_customer_district
FOREIGN KEY(C_ID) REFERENCES customer(C_ID);

-- Customer HAS Customer_PNum = 1:N
ALTER TABLE Customer_pnum ADD CONSTRAINT fk_Customer_pnum
FOREIGN KEY(C_ID) REFERENCES customer(C_ID);

-- Customer RECIEVES Devices = 1:N
ALTER TABLE devices ADD CONSTRAINT fk_recieves_devices
FOREIGN KEY(C_ID) REFERENCES customer(C_ID);

-- Customer BUYS Devices = 1:N
ALTER TABLE devices ADD CONSTRAINT fk_buys_devices
FOREIGN KEY(C_ID) REFERENCES customer(C_ID);

-- Subscription HAS Payment
ALTER TABLE payment ADD CONSTRAINT fk_payment
FOREIGN KEY(S_Index) REFERENCES subscription(S_Index);

-- Device OPERATES Device
-- ALTER TABLE devices ADD CONSTRAINT fk_operates
-- FOREIGN KEY(D_Number) REFERENCES devices(D_Number);


-- SELECT
SELECT * FROM customer WHERE C_ID='C195858' OR C_ID='C223446'; 

-- Project
SELECT C_NIC,C_Age,C_City FROM customer;

-- Update
UPDATE programmes SET P_Language='Chinese',P_StartTime='11:00:00',P_Name='Untamed' WHERE P_Name='k';
UPDATE advertisement SET A_Company='Elephant House',A_Duration='20sec x 12',A_Price='Rs. 190,000' WHERE A_Name='Cream Soda';

-- Delete
DELETE FROM genre WHERE Genre_ID='G3005';

-- Select with Rename
SELECT C_City AS Chiara FROM customer;

-- Rename
ALTER TABLE customer change C_Road C_Street varchar(50);

-- Average
SELECT AVG(C_Age) AS AGE FROM customer;

-- LIKE
SELECT C_Name FROM customer WHERE C_Name LIKE '%i';

-- UNION
SELECT C_ID FROM customer UNION SELECT C_Name FROM channels;
SELECT * FROM customer WHERE C_Age>=25 UNION SELECT * FROM customer WHERE C_District='Kandy';

-- Inersect
-- SELECT * FROM customer WHERE C_Age>=25 AND SELECT * FROM customer WHERE C_District='Kandy';

-- Inner Join-Equi Join
SELECT * FROM subscription AS S
INNER JOIN customer AS C
ON S.C_ID = C.C_ID;

-- Natural Join
SELECT * FROM subscription NATURAL JOIN customer;


-- Left Outer Join
SELECT * FROM subscription AS S
LEFT OUTER JOIN customer AS C
ON S.C_ID = C.C_Name;

-- Right Outer Join
SELECT * FROM subscription AS S
RIGHT OUTER JOIN customer AS C
ON S.C_ID = C.C_Name;

-- Full Outer Join
(SELECT * FROM subscription AS S
LEFT OUTER JOIN devices AS D
ON S.C_ID = D.D_Name)
UNION
(SELECT * FROM subscription AS S
RIGHT OUTER JOIN devices AS D
ON S.C_ID = D.D_Name);

-- Cross product
SELECT * FROM customer CROSS JOIN subscription;

--  Using views
CREATE VIEW cs_view AS
SELECT * FROM customer
NATURAL JOIN subscription;

--  Set Difference
-- SELECT P_Name FROM programmes EXCEPT SELECT P_Name FROM programmes WHERE P_Language='Sinhala';

