CREATE DATABASE PlayStoreDB;
USE PlayStoreDB;

CREATE TABLE Developer(
DeveloperID INT PRIMARY KEY,
DeveloperNAME VARCHAR(60) NOT NULL,
Country VARCHAR(30),
FoundedYear INT);
INSERT INTO Developer() VALUES
	(101,'Goole LLC','USA',1998),
	(102,'Meta platforms','USA',2004),
	(103,'Spotify AB','Sweden',2006);
    
INSERT INTO Developer() VALUES
	(104,'Canva Pty Ltd','Australia',2012),
	(105,'BYJUS','India',2011);
    
Insert INTO Developer() VALUES (106,'Open Ai','USA',2015);
SELECT * FROM Developer;

CREATE TABLE Publishers(
PublisherID INT Primary key,
PublisherName VARCHAR(60),
HeadOffice VARCHAR(40),
SupportEmail VARCHAR(60));
INSERT INTO Publishers() VALUES
	(201,'Google Play','California','support@google.com'),
	(202,'Samsung Galaxy Store','Seoul','support@samsung.com'),
	(203,'Huawei AppGallery','Shenzhen','support@huawei.com'),
	(204,'Amazon Appstore','Seattle','support@amazon.com');
UPDATE Publishers
SET SupportEmail='Support@SamSung1234.com'
WHERE PublisherID=202;
SELECT * FROM Publishers;

CREATE TABLE Categories(
CategoryID INT primary Key,
CategoryName VARCHAR(40),
MinimumAge INT);
INSERT INTO Categories() VALUES
	(301,'Education',3),
	(302,'Productivity',3),
	(303,'Music',12),
	(304,'Social',13),
	(305,'Gaming',16);
INSERT INTO Categories() VALUES
	(306,'Artificial Intelligence',12);
DELETE FROM Categories
WHERE CategoryID=303;
SELECT * FROM Categories;

CREATE TABLE Apps(
AppID INT Primary Key,
AppName VARCHAR(60),
DeveloperID INT,
PublisherId INT,
CategoryId INT,
Rating DECIMAl(2,1),
Downloads INT,
Price Decimal(6,2));
INSERT INTO Apps() VALUES
	(1001,'Goole Classroom',101,201,301,4.6,5000000,0),
	(1002,'Goole Keep',101,201,301,4.6,5000000,0),
	(1003,'Instagram',102,201,304,4.4,50000000,0),
	(1004,'Spotify',103,201,303,4.5,1000000,0),
	(1005,'Canva',104,201,302,4.7,5000000,0),
	(1006,'BYJUS Learning',105,201,301,4.3,1000000,299),
	(1007,'Candy Crush',102,204,305,4.6,1000000,0),
	(1008,'Temple Run',104,203,305,4.2,5000000,0);
DESC Apps;
INSERT INTO Apps VALUES (1009,'CharGPT',105,203,305,4.2,50000,123);

INSERT INTO APPS VALUES (1010,'Gemini',110,210,310,4.9,100000,0),  (1011,'Duolingo',111,211,311,4.0,99999,0);

UPDATE Apps SET Rating=4.5 WHERE AppID=1008;

DELETE FROM Apps WHERE AppID=1006;
UPDATE Apps SET Price=199 WHERE APPID=1009;

SELECT * FROM Apps;

SHOW TABLES;
SELECT * FROM Developer;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT * FROM Apps;




