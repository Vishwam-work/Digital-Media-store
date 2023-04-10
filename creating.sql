use MusicStore

---Create table port-----
create table Artist(
	ArtistID  Int  IDENTITY(1, 1) primary key,
	Name varchar(25)
)

create table Album(
	AlbumId Int   IDENTITY(1, 1) primary key,
	Title varchar(50),
	ArtistID int ,
	FOREIGN KEY (ArtistID) REFERENCES Artist(ArtistID)
)

create table playlist(
	playid int Identity(1,1) primary key,
	playname varchar(200)
)
create table mediatype(
	mediatypeid int Identity(1,1) primary key,
	mediatypeName varchar(200)
)

create table genre(
	genreid int Identity(1,1) primary key,
	genreName varchar(200)
)




 create table track(
	trackid int Identity(1,1) primary key,
	trackname varchar(100),
	AlbumId int,
	mediatypeid int,
	genreid int,
	Composer varchar(100),
	millseconds int,
	Bytes int,
	unitprice int
	FOREIGN KEY (mediatypeid) REFERENCES mediatype(mediatypeid),
	FOREIGN KEY (genreid) REFERENCES genre(genreid)
 
 
 )

create table playlisttrack(
	trackid int ,
	playid int,
	FOREIGN KEY (trackid) REFERENCES track(trackid),
	FOREIGN KEY (playid) REFERENCES playlist(playid)

)

create table invoiceLine(
	InvoiceLineID int Identity(1,1) primary key,
	invoiceid int,
	trackid int,
	unitprice int,
	qunatity int,
	FOREIGN KEY (trackid) REFERENCES track(trackid),
	FOREIGN KEY (invoiceid) REFERENCES invoice(invoiceid)

)

create table invoice(
	invoiceid int Identity(1,1) primary key,
	custid int,
	invoicedate date,
	billingAdd varchar(100),
	billcity varchar(100),
	billstate varchar(100),
	billcountry varchar(100),
	billPostalcode int,
	total int,
	FOREIGN KEY (custid) REFERENCES customer(custid)


)

create table employe(
	employeid int Identity(1,1) primary key,
	firstname varchar(100),
	lastname varchar(100),
	Title varchar(100),
	ReoprtsTo varchar(100),
	dob date,
	hiredate date,
	Address varchar(200),
	city varchar(100),
	state varchar(100),
	country varchar(100),
	Postalcode int,
	phone bigint,
	fax int,
	email varchar(100),

)

create table customer(
	custid int Identity(1,1) primary key,
	firstname varchar(100),
	lastname varchar(100),
	company varchar(100),
	Address varchar(200),
	city varchar(100),
	state varchar(100),
	country varchar(100),
	Postalcode int,
	phone bigint,
	fax int,
	email varchar(100),

)




--- view port------
select * from Artist
select * from Album
select * from playlist
select * from mediatype
select * from genre
select * from track
select * from playlisttrack


-- insert port---
insert into Artist values('pritm')
insert into Artist values('Vishal-Shekhar')
insert into Artist values('A. R. Rahman')
insert into Artist values('Badshah')
insert into Artist values('Anirudh Ravichander')
insert into Artist values('Shreya Ghoshal')
insert into Artist values('Alka Yagnik')
insert into Artist values('Shaarib-Toshi')
insert into Artist values('Arijit Singh')
insert into Artist values('Justin ')


insert into Album values ('Starting Over',2)
insert into Album values ('Hear my cry.',1)
insert into Album values ('The pain will dim',4)
insert into Album values ('Starting Over',9)
insert into Album values ('Why now',1)
insert into Album values ('Beyond repair',5)
insert into Album values ('Meri_jaan',3)
insert into Album values ('Its never easy.',7)
insert into Album values ('Sliver Bird',8)
insert into Album values ('Shunshine',10)

insert into playlist values('My Happy Melodies')
insert into playlist values('Hello Summer')
insert into playlist values('An Overture To Happiness')
insert into playlist values('Sunny Days')
insert into playlist values('Every One Need Adventure')
insert into playlist values('Happy, Chill Radio')
insert into playlist values('I Found My Way')
insert into playlist values('Music that Heals')	
insert into playlist values('Dont Listen Unless Stable')
insert into playlist values('Feelings and Other Stupid Things')

insert into mediatype values('MP3')
insert into mediatype values('PCM')
insert into mediatype values('DSD')


insert into genre values('Rock')
insert into genre values('Hip-hop')
insert into genre values('Rythm')
insert into genre values('Jazz')
insert into genre values('Disco')

insert into track values('Surgeon',5,1,3,'Truid Aagesen',3200,230,2500)
insert into track values('Legowelt',2,2,4,'Ludwig Abel',6200,210,1500)
insert into track values('Aphex Twin',1,3,1,'Mark Abel ',7200,220,2400)
insert into track values('Evolution',9,1,2,'Julian Anderso',4200,230,7500)
insert into track values('Thomas Grinder',4,2,5,'Salim-sulmeman',2200,240,4500)
insert into track values('Kallisti',7,3,5,'payrelal',1200,250,3500)
insert into track values('Loose Joints ',6,1,1,'Himaesh reshmanya',9200,260,9500)
insert into track values('The Martian',5,2,3,'Vishal',4200,270,500)
insert into track values('Helix',10,3,4,'Shekhar',1200,280,1500)
insert into track values('Venus',8,1,1,'Ram',5200,290,1700)


insert into playlisttrack values(1,4)
insert into playlisttrack values(2,6)
insert into playlisttrack values(3,7)
insert into playlisttrack values(4,5)
insert into playlisttrack values(5,1)
insert into playlisttrack values(6,9)
insert into playlisttrack values(7,10)
insert into playlisttrack values(8,3)
insert into playlisttrack values(9,8)
insert into playlisttrack values(10,2)



insert into employe values('Vishwam','Solanki','Company CEO' ,'Director','2001-11-30','05-02-2010','85370 Glover Parkway','Olebury','Texas','India',169,1306133,252,'vish@gmail.com')

insert into employe values('Harry','Kate','Manager' ,'Company CEO','2001-01-03','11-12-2015','8844 Robel Orchard','South Mathewbury','Arizona','NewYork',158,003471837,752,'harr@gmail.com')

insert into employe values('Virat','Singh','Assistant developer' ,'Sr Developer','1992-11-30','12-06-2006','220 Collins Row','Harristown','Louisiana','India',179,78544698,272,'virat@gmail.com')

insert into employe values('Flash','Rathore','SR Developer' ,'Manager','2011-01-05','1999-02-15','08762 Erdman Parkway','Olebury','Delhi','Brazil',167,79612856,568,'flash@gmail.com')

insert into employe values('Jagdish','Joshi','Webdeveloper' ,'Sr Developer','1982-03-26','2014-08-30','24257 Viviane Garden','paris','Ohio','USA',162,84486448,525,'jagd@gmail.com')


insert into customer VALUES('John', 'Doe', 'ABC Corp', '123 Main St', 'Los Angeles', 'CA', 'United States', 901, 5551234,252, 'john.doe@example.com');

INSERT INTO customer VALUES ('Maria', 'Garcia', 'XYZ Ltd', '456 Oak Ave', 'Madrid', 'AC', 'Spain', 205, 89458848,625, 'maria.garcia@example.com');

INSERT INTO customer VALUES ('David', 'Lee', '123 Industries', '789 Pine St', 'Toronto', 'ON', 'Canada', 523, 9584846,956, 'david.lee@example.com');
			
INSERT INTO customer VALUES ('Sarah', 'Kim', 'Acme Co', '321 Maple Rd', 'Seoul', 'MM', 'South Korea', 965, 784185156,571, 'sarah.kim@example.com');
			 
INSERT INTO customer VALUES ('Ahmed', 'Hassan', 'PQR Inc', '987 Elm St', 'Cairo', 'KL', 'Egypt', 758, 95478845,121, 'ahmed.hassan@example.com');



INSERT INTO invoice VALUES (2,'2022-03-01', '123 Main St', 'Los Angeles', 'CA', 'United States', 74,1400);
INSERT INTO invoice VALUES (1,'2022-03-02', '456 Oak Ave', 'New York', 'NY', 'United States', 25,9652);
INSERT INTO invoice VALUES (5,'2022-03-03', '789 Pine St', 'Houston', 'TX', 'United States', 72,1420);
INSERT INTO invoice VALUES (4,'2022-03-04', '321 Maple Rd', 'Miami', 'FL', 'United States', 47,7422);
INSERT INTO invoice VALUES (1,'2022-03-05', '987 Elm St', 'Chicago', 'IL', 'United States', 14,5999);
INSERT INTO invoice VALUES (4,'2022-03-06', '123 Main St', 'Madrid', 'JU', 'Spain', 35,7524);
INSERT INTO invoice VALUES (2,'2022-03-07', '456 Oak Ave', 'Paris', 'IO', 'France', 72,8000);
INSERT INTO invoice VALUES (2,'2022-03-08', '789 Pine St', 'Toronto', 'ON', 'Canada', 71,2401);
INSERT INTO invoice VALUES (3,'2022-03-09', '321 Maple Rd', 'London', 'PO', 'United Kingdom', 55,4747);
INSERT INTO invoice VALUES (3,'2022-03-10', '987 Elm St', 'Berlin', 'OL', 'Germany', 43,5000);

select * from invoiceLine
insert into invoiceLine values(2,7,50,3)
insert into invoiceLine values(5,3,40,2)
insert into invoiceLine values(9,4,60,5)
insert into invoiceLine values(4,9,20,6)
insert into invoiceLine values(3,1,80,9)
insert into invoiceLine values(6,10,60,3)
insert into invoiceLine values(1,6,50,3)
insert into invoiceLine values(10,2,70,1)
insert into invoiceLine values(8,3,100,2)
insert into invoiceLine values(5,5,90,7)
