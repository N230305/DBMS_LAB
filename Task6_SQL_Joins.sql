USE Playstoredb;
SELECT * FROM APPS;
SELECT * FROM Developer;
SELECT * FROM Publishers;
SELECT * FROM Categories;
SELECT A.AppName,D.DeveloperName FROM Apps A INNER JOIN Developer D ON A.DeveloperID=D.DeveloperID;
SELECT A.AppName,P.PublisherName FROM Apps A INNER JOIN Publishers P ON A.PublisherID= P.publisherID;
SELECT A.AppName,C.CategoryName FROM APPS A INNER JOIN Categories C ON A.CategoryID=C.CategoryID;
SELECT A.AppName,D.DeveloperName,P.PublisherName FROM APPS A INNER JOIN Developer D ON A.DeveloperID=D.DeveloperID INNER JOIN Publishers P ON A.PublisherID=P.PublisherId Limit 5;
SELECT A.AppName,D.DeveloperName,C.CategoryName FROM APPS A INNER JOIN Categories C ON A.CategoryID=C.CategoryID Inner Join Developer D ON A.DeveloperID=D.DeveloperID Limit 5;
SELECT P.PublisherName,A.AppName FROM Publishers P LEFT JOIN Apps A ON P.PublisherID=A.PublisherID Limit 5;
SELECT C.CategoryName,A.AppName FROM Categories C LEFT JOIN Apps A ON C.CategoryID=A.CategoryID;

SELECT P.PublisherName,A.AppName FROM Publishers P LEFT JOIN Apps A ON P.PublisherID=A.PublisherID Limit 5;
SELECT A.AppName,P.PublisherName,P.PublisherId FROM Publishers P RIGHT JOIN Apps A ON P.PublisherId=A.PublisherID limit 5;
SELECT C.CategoryName,A.AppName FROM Categories C LEFT JOIN Apps A ON C.CategoryId=A.CategoryID limit 5;
SELECT A.AppName,D.DeveloperName,D.country FROM Apps A INNER JOIN Developer D ON A.DeveloperId=D.DeveloperID limit 5;
SELECT A.AppName,D.DeveloperName,P.PublisherName,C.CategoryName FROM Apps A INNER JOIN Developer D ON A.DeveloperID=D.DeveloperID INNER JOIN Publishers P ON A.PublisherID=P.PublisherId INNER JOIN Categories C ON A.CategoryID=C.CategoryID limit 5;
SELECT A.AppName,D.DeveloperName,D.Country FROM Apps A INNER JOIN Developer D ON A.DeveloperId=D.DeveloperID WHERE D.Country='USA';
SELECT A.AppName,P.PublisherName,C.CategoryName FROM Apps A INNER JOIN Publishers P ON A.PublisherId=P.PublisherID INNER JOIN Categories C ON A.CategoryID=C.CategoryID WHERE C.CategoryName='Gaming';
SELECT A.AppName,D.DeveloperName,A.Rating FROM Apps A INNER JOIN Developer D ON A.DeveloperID=D.DeveloperID WHERE A.Rating>4.5;

SELECT P.PublisherName,A.AppName FROM Publishers P LEFT JOIN Apps A ON A.PublisherID=P.PublisherID;
SELECT P.PublisherName,A.AppName FROM Publishers P LEFT JOIN Apps A ON A.PublisherID-P.PublisherID WHERE A.AppID IS NULL;
SELECT A.AppName,C.CategoryName FROM Apps A INNER JOIN Categories C ON A.CategoryID=C.CategoryID ORDER BY C.CategoryName;
SELECT A.AppName,D.DeveloperName,P.PublisherName,C.CategoryName,A.Rating FROM Apps A INNER JOIN Developer D ON D.DeveloperId=A.DeveloperId INNER JOIN Publishers P ON A.PublisherId=P.PublisherID INNER JOIN Categories C WHERE A.CategoryID=C.categoryID;
SELECT A.AppName,D.DeveloperName,D.Country,P.PublisherName FROM Apps A INNER JOIN Developer D ON A.DeveloperID=D.DeveloperId INNER JOIN Publishers P ON A.PublisherID=P.PublisherID WHERE D.country='USA' AND P.PublisherName='GooglePlay';
SELECT D.DeveloperName,A.AppName FROM Developer D LEFT JOIN Apps A ON D.DeveloperID=A.DeveloperID;
SELECT D1.DeveloperName AS Developer1,D2.DeveloperName As Developer2 ,D1.Country From Developer D1 INNER JOIN Developer D2 ON D1.Country=D2.Country AND D1.DeveloperId < D2.DeveloperId;
SELECT P.PublisherName,C.CategoryName FROM Publishers P CROSS JOIN Categories C;
SELECT P.PublisherName,A.AppName FROM Publishers P LEFT JOIN Apps A  ON P.PublisherId=A.PublisherID UNION SELECT P.PublisherName,A.AppName FROM Publishers P RIGHT JOIN Apps A  ON P.PublisherId=A.PublisherID;
SELECT A.AppName,C.CategoryName,D.DeveloperName,P.PublisherName FROM Apps A INNER JOIN Categories C ON C.CategoryID=A.CategoryId INNER JOIN Developer D ON D.DeveloperId=A.DeveloperId INNER JOIN Publishers P ON P.PublisherId=A.PublisherId WHERE C.CategoryName IN('Gaming','Social');
SELECT A.AppName,D.DeveloperName,C.CategoryName FROM Apps A INNER JOIN Developer D ON D.DeveloperId=A.DeveloperId INNER JOIN Categories C ON C.CategoryID=A.CategoryID WHERE A.Rating Between 4.3 And 4.7;
SELECT A.AppName,D.DeveloperName,D.Country FROM Developer D INNER JOIN Apps A ON D.DeveloperID=A.DeveloperID WHERE D.Country <> 'India';

