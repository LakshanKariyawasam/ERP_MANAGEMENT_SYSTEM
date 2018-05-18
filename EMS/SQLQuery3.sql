create database Chemwood_Export 

use Chemwood_Export 


create table Customer
(
 Customer_ID varchar(10) primary key,
 Custermor_name varchar(120) not null,
 Customer_tele int,
 Customer_Address varchar(20),
 Customer_type varchar(20)
)
insert into Customer
values
('C101','Gunawardana W S ',0775254985,'18/6, Pannipitiya','Temporary'),
('C102','Damro',0112247829,'Main Road, Kottawa','Permanent'),
('C103','Arpico',0112254784,'Nawinna','Permanent'),
('C104','Binod H V A',0775002322,'20/2, Angoda','Temporary'),
('C105','Kanthi M M',0781330054,'99/A, Ratnapura','Temporary')


create table Payment
(
 Pay_NO int primary key,
 Payment_date int not null,
 Payment_type varchar(50) not null,
 Customer_ID varchar(10) foreign key references Customer(Customer_ID)
)
insert into Payment
values

(56,2016/2/24,'Check','C103'),
(57,2016/7/24,'Ckeck','C102'),
(58,2016/8/14,'Cash','C101'),
(59,2016/12/02,'Ckeck','C103')


create table Employee
(Employee_ID int primary key,
 NIC_No varchar(20) not null,
 Employee_Name varchar(50) not null,
 Date_of_Birth int not null,
 Employee_Tele int,
 Address varchar(200) not null,
 Civil_Status varchar(10),
 Gender varchar(10),
 )
 
insert into Employee(Employee_Id,Employee_Name,NIC_No,Date_of_Birth,Gender,Civil_Status,Address,Employee_Tele) 
values
(088,'Wanniarachchi I S','867494531v',1986-11-26,'Male','Maried','8/3 Kaudana,Palala para,Dehiwala',077-2852500),
(005,'Wikramasingha W D M D','687640241v',1968-09-20,'FeMale','Maried','180/6 Brahmanagama,Pannipitiya',077-5684974),
(079,'Wijewardana C K','804256890v',1980-08-13,'FeMale','Maried','200 Btawala,Padukka',075-3453729),
(090,'Mayura P','724556942v',1972-04-26,'Male','Maried','22/B/1 Hatton RD,Kandy',076-6295721),
(004,'Priyantha D','604596912v',1960-10-29,'Male','Maried','32/A/1 Walawwa Para,Homagama',076-4569871),
(045,'Chaminda p','703452452v',1970-11-22,'Male','Maried','25 Pitipana South,Pitipana',071-2258874),
(085,'Priyangani N G','802032119v',1980-04-30,'FeMale','Maried','49/b 7th Post,Megoda',071-5598744),
(026,'Tulion M','752341444v',1975-12-28,'FeMale','Maried','79/1 Railway Road,Padukka ',077-7899451),
(064,'Priyadarshani N','884421527v',1988-01-16,'FeMale','Maried','29 Meegoda',070-1554487),
(086,'Sriyalatha M A V','552389112v',1955-06-33,'FeMale','Maried','72/B Batatleeya,Kosgama',071-5241597),
(091,'Ranasignha N','645589552v',1964-05-12,'FeMale','Maried','242 Jaya Mawatha,Meegoda',075-7789562),
(037,'Wimalawathi R','875875023v',1987-07-21,'FeMale','Maried','72 Padukka',072-7711952),
(027,'Roopasingha T','734253372v',1973-08-02,'Male','Maried','29/72/B Hiraipitiya,Homagama',071-7661952),
(040,'Amarasekara S','842241725v',1984-07-28,'FeMale','Maried','27 Kanaththa Road,Padukka',072-7651978),
(007,'Sankhapala M T','493452732v',1949-08-20,'Male','Maried','180/8/2B Aviisawella',076-3325478),
(058,'Lakmal D P S','804522153v',1980-05-10,'Male','Maried','72/8 Homgama',071-5546378),
(078,'Alwis S K J','654154215v',1965-04-14,'Male','Maried','29 Jayagath Mawatha,Meegoda',070-3895478)

create table Employee_Skill
(Employee_ID int primary key,
 Skill_Type varchar(200) not null) 

 insert into Employee_Skill
 values
(088,'CIM Degree-Marketing'),
(005,'23 years working experience in Chemwood Export'),
(079,'CMA Student'),
(090,'Electrition'),
(004,'25 years working experience in Timber Section'),
(045,'Machine Operator(Section Head)'),
(085,'5 years working experience in Chemwood Export'),
(026,'15 years Machine Operator'),
(064,'5 years working experience in Chemwood Export'),
(086,'20 years working experience in Chemwood Export'),
(091,'2 years working experience in Chemwood Export'),
(037,'25 years working experience in Chemwood Export'),
(027,'20 years working experience in Chemwood Export'),
(040,'8 years working experience in Chemwood Export'),
(007,'19 years working experience in Chemwood Export'),
(058,'6 years working experience in Chemwood Export'),
(078,'Store keeper/Handling Tamil Coustomer')


create table Supplier
(
 Supplier_ID varchar(12) primary key,
 Supplier_name varchar(60) not null,
 Supplier_Tel int not null,
 Supplier_address varchar(120) not null,
 Distributers_name varchar(120) not null,
 Distributers_tel int
)
insert into Supplier
values
('SM1','Multilac',0112245784,'Keselwatta,Panadura','M Kariyawasam',0775589984),
('SJ1','Jat Holdings',0112248777,'Pannipitiya,RD,Thalawathugoda','P Gunasena',0712256649),
('SN1','Nipon',0113325447,'Nugegoda RD Peliyagoda','Sampath Waragoda',0779889454),
('SH1','TEC Hardware',0112235545,'Kottawa','TEC Hardware',0714548877)

create table Metirial 
(
 M_ID varchar(20) primary key,
 M_Name varchar(50) not null,
 M_Type varchar(50) not null,
 Value int not null, 
 Quntity int not null,
 Supplier_ID varchar(12) foreign key references Supplier(Supplier_ID)
 )


insert into Metirial(M_ID ,M_Name ,M_Type ,Value ,Quntity )
values
('CESP001','Sanding Sealer','Paint',1990,55),
('CESP002','Stain','Paint',1935,65),
('CESP003','Thinner','Paint',155,1000),
('CESP004','Brilliant white','Paint',2748,48),
('CESP005','Chemifex','Paint',1860,4),
('CESC001','Borax','Chemical',116,200),
('CESC002','Boric','Chemical',183,50),
('CESN001','JCBC 100','Nuts and Bolt',7,75),
('CESN002','JCBC 50-2','Nuts and Bolt',6,200),
('CESN003','JCBC 60-2','Nuts and Bolt',7,500),
('CESN004','JCBC 40','Nuts and Bolt',6,150),
('CESN005','JCBC 80-4','Nuts and Bolt',9,100),
('CESN006','Bushing','Nuts and Bolt',7,500),
('CESN007','Hingers-3','Nuts and Bolt',13,240),
('CESN008','Gum Tape','Nuts and Bolt',67,25),
('CESN009','Caster Wheel','Nuts and Bolt',325,625),
('CESN010','Suction caps','Nuts and Bolt',4,60),
('CESB001','G Bolt-2','Nuts and Bolt',4,144),
('CESB002','G Bolt-3','Nuts and Bolt',6,144),
('CESN011','Butterfly nut','Nuts and Bolt',12,100),
('CESB003','Black crew ','Nuts and Bolt',1,400),
('CESN012','Gum','Nuts and Bolt',956,1),
('CESN013','Cks','Nuts and Bolt',1,1500)


create table SOrder
(
 Order_ID varchar(12) primary key,
 Order_Type varchar(20) not null,
 Order_date int not null,
 Order_Quntity int not null,
 Delivery_Type varchar(25),
 Delivery_Date varchar(25) not null,
 Customer_ID varchar(10) foreign key references Customer(Customer_ID),
 Pay_NO int foreign key references Payment(Pay_NO)
)

insert into SOrder
values
('O1001','Bunk Bed',2016/2/24,25,'Non Delivery','2016/3/10','C101',56),
('O1002','Baby Bed Small',2016/7/24,15,'Delivery','2016/8/17','C102',57),
('O1003','Bunk Bed',2016/8/14,2,'Non Delivery','2016/10/10','C103',58),
('O1004','Dining Table',2016/12/2,25,'Delivery','2016/12/30','C104',59)


create table made
(
 Made_NO int primary key,
 Order_ID varchar (12) foreign key references SOrder(Order_ID),
 Employee_Id int foreign key references Employee(Employee_Id) 
)

insert into made
values
(001,'O1001',088),
(002,'O1002',085),
(003,'O1003',026),
(004,'O1003',091),
(005,'O1004',037),
(006,'O1001',040),
(007,'O1002',078),
(008,'O1001',057),
(009,'O1004',007),
(010,'O1004',086),
(011,'O1004',064),
(012,'O1001',058),
(013,'O1001',004),
(014,'O1003',079)

create table SUse
(
 Use_NO int primary key,
 M_ID varchar(20) foreign key references Metirial(M_ID),
 Order_ID varchar (12) foreign key references SOrder(Order_ID) 
)

insert into SUse
values
(001,'CESP001','O1001'),
(002,'CESP002','O1001'),
(003,'CESB003','O1001'),
(004,'CESP003','O1001'),
(005,'CESP004','O1002'),
(006,'CESP005','O1002'),
(007,'CESP002','O1002'),
(008,'CESN001','O1003'),
(009,'CESN004','O1003'),
(011,'CESN003','O1003'),
(012,'CESN002','O1004'),
(013,'CESP005','O1004'),
(014,'CESC001','O1004'),
(015,'CESP001','O1004')

create table Item_Design 
(I_NO int  primary key,I_Type varchar(100) not null,I_Name varchar(50) not null,I_Quantity int not null,I_Value int not null,I_Color varchar(20) not null)

insert into Item_Design
values
(1,'Table','Dining Table',06,4200,'White'),
(2,'Table','Dining Table',36,4200,'White'),
(3,'Bed','Baby Bed Small',14,11975,'White'),
(4,'Chair','Varandha chair',28,5200,'Light colour'),
(5,'Bed','Bunk Bed',12,3475,'Light')


create table Has
(
 Has_ID int primary key,
 I_NO int foreign key references Item_Design(I_NO),
 Order_ID varchar(12) foreign key references SOrder(Order_ID)
)

insert into Has
values
(001,1,'O1001'),
(002,2,'O1002'),
(003,3,'O1003'),
(004,4,'O1004'),
(005,1,'O1001'),
(006,5,'O1002')


create table Selectt
(
 Se_NO int primary key,
 Customer_ID varchar(10) foreign key references Customer(Customer_ID),
 I_NO int foreign key references Item_Design(I_NO)
)

insert into Selectt
values
(001,'C101',1),
(002,'C101',2),
(003,'C102',1),
(004,'C102',2),
(005,'C102',3),
(006,'C102',4),
(007,'C102',5),
(008,'C103',1),
(009,'C103',2),
(010,'C103',3),
(011,'C103',4),
(012,'C104',1),
(013,'C104',3),
(014,'C105',1),
(015,'C105',5)


