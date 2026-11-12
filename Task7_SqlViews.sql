use playstoredb;
show tables;
select * from Apps;
select * from Categories;
select * from Developers;
select * from Publishers;


create view Apps_records as select * from Apps;
select AppID,AppName from Apps_records;
create view Apps_cols as select AppID,AppName,Rating,Price from Apps;
select  * from Apps_cols;
create view Rating_Based as select AppName from Apps where Rating>=7.5;
select * from Rating_Based;
create view Free as select AppName as FreeApps from Apps where Price=0;
select * from Free;

show full tables where Table_type="VIEW";

#LEVEL 2
create view ADView as select A.AppName,D.DeveloperName from Apps A inner join Developers D
 on A.DeveloperID=D.DeveloperID;
 select * from ADView;
 create view APview as select A.AppName,P.PublisherName from Apps A inner join Publishers P
 on A.PublisherID=P.PublisherID;
 select * from APview;
 
 create view CView as select A.AppName,C.CategoryName from Apps A inner join Categories C
 on A.CategoryID=C.CAtegoryID;
  select * from CView;
  
  
 create view ADC as select A.AppName,D.DeveloperName,D.Country from Apps A inner join Developers D
 on A.DeveloperID=D.DeveloperID;
 select * from ADC;
 
 create view TotalApp as select CategoryID,count(*) as Total_Applications from Apps group by CategoryID;
 select * from TotalApp;
 
 create view TAppsDev as select DeveloperID,count(*) as Total_Applications from Apps group by DeveloperID;
 select * from TAppsDev;

create view AvgRat as select CategoryID,avg(Rating) as AvgRating from Apps group by CategoryID;
select * from AvgRat;

create view HighRat as select AppName,DeveloperName from Apps A inner join Developers D on A.DeveloperID=D.DeveloperID
 where A.Rating>4.6;
 select * from HighRat;
 
 #LEVEL 3
 create view Catview as select C.CategoryName,count(*) as Total_Applicatons from Categories C inner join 
 Apps A on C.CategoryID=A.CategoryID group by C.CategoryName;
 select * from Catview;
 
 create view DevView as select D.DeveloperName,count(*) as Developers_greaterthen_one_App from Developers D 
 inner join 
 Apps A on D.DeveloperID=A.DeveloperID group by D.DeveloperName having count(*)>1;
 select * from DevView;
 
 create view MaxMin as select C.CategoryName,MAx(Rating),MIN(Rating) from CAtegories C inner join 
 Apps A on C.CategoryID=A.CategoryID group by C.CategoryName;
 select * from MaxMin;
 
 create view DView as select D.DeveloperName,count(*) as Total_Apps from Developers D inner join
 Apps A on D.DeveloperID=A.DeveloperID group by D.DeveloperName;
 select * from DView;
 
 create view AllView as select A.AppName,D.DeveloperName,C.CategoryName,P.PublisherName from Apps A inner join 
 Developers D on A.DeveloperID=D.DeveloperID inner join Categories C on A.CategoryID=C.CategoryID inner join 
 Publishers P on A.PublisherID=P.PublisherID;
 select * from AllView;
 
 
 create view NewView as select A.AppName,D.DeveloperName,C.CategoryName from Apps A inner join
 Developers D on A.DeveloperID=D.DeveloperID inner join  Categories C on A.CategoryID=C.CategoryID;
 select * from NewView limit 3;
 
 create view PuView as select P.PublisherName,count(A.AppID) AS TApps,coalesce(sum(A.Downloads),0) as
 Total_Downloads from Publishers P left join Apps A
 on A.PublisherID=P.PublisherID group by P.PublisherName;
 
 select * from PuView;
 select * from PView;