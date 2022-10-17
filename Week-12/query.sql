 create table CITIES(CITY CHAR(20),STATE CHAR(20));

/*
+-------+----------+------+-----+---------+-------+
| Field | Type     | Null | Key | Default | Extra |
+-------+----------+------+-----+---------+-------+
| CITY  | char(20) | YES  |     | NULL    |       |
| STATE | char(20) | YES  |     | NULL    |       |
+-------+----------+------+-----+---------+-------+
*/

insert into cities values("NAGPUR","MAHARASHTRA");
insert into cities values("PUNE","MAHARASHTRA");
insert into cities values("MUMBAI","MAHARASHTRA");
insert into cities values("CHENNAI","TAMIL NADU");
insert into cities values("BANGLORE","KARNATAKA");
insert into cities values("MYSORE","KARNATAKA");
insert into cities values("LUCKNOW","UTTAR PRADESH");
insert into cities values("KANPUR","UTTAR PRADESH")

/*
+----------+---------------+
| CITY     | STATE         |
+----------+---------------+
| NAGPUR   | MAHARASHTRA   |
| PUNE     | MAHARASHTRA   |
| MUMBAI   | MAHARASHTRA   |
| CHENNAI  | TAMIL NADU    |
| BANGLORE | KARNATAKA     |
| MYSORE   | KARNATAKA     |
| LUCKNOW  | UTTAR PRADESH |
| KANPUR   | UTTAR PRADESH |
+----------+---------------+
*/

 create table WAREHOUSES(WID INTEGER PRIMARY KEY,WNAME CHAR(30),LOCATION CHAR(20),EXTRA_CONTEXT varchar(100));

/*
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| WID           | int          | NO   | PRI | NULL    |       |
| WNAME         | char(30)     | YES  |     | NULL    |       |
| LOCATION      | char(20)     | YES  |     | NULL    |       |
| EXTRA_CONTEXT | varchar(100) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
*/


INSERT INTO WAREHOUSES VALUES(2010,'NAGPUR DIAMOND','NAGPUR','NAGPUR DIAMOND is the key to the overall warehouse distribution in nagpur');
INSERT INTO WAREHOUSES VALUES(2003,'MAHADEV STORAGE','PUNE','it has distribution in mumbai and nashik also');
INSERT INTO WAREHOUSES VALUES(2002,'KGN STORAGE','PUNE','THE LEADING DISTRIBUTOR OF PUNE');
INSERT INTO WAREHOUSES VALUES(2000,'DIRECT Logistics','MUMBAI','DIRECT is a well-known logistics and freight forwarding firm in India.');
INSERT INTO WAREHOUSES VALUES(2006,' Logistics Solutions','MYSORE','They offer end-to-end, tailor-made solutions to our clients and transportation services');
INSERT INTO WAREHOUSES VALUES(2005,'Fly High Logistics','KANPUR','Fly High Logistics is diversifying its provide world-class logistics services');
INSERT INTO WAREHOUSES VALUES(2008,'SOUT Logistics','BANGLORE','SOUTH is a well-known in SOUTHERN parts of India.');

/*
+------+----------------------+----------+-----------------------------------------------------------------------------------------+
| WID  | WNAME                | LOCATION | EXTRA_CONTEXT                                                                           |
+------+----------------------+----------+-----------------------------------------------------------------------------------------+
| 2000 | DIRECT Logistics     | MUMBAI   | DIRECT is a well-known logistics and freight forwarding firm in India.                  |
| 2002 | KGN STORAGE          | PUNE     | THE LEADING DISTRIBUTOR OF PUNE                                                         |
| 2003 | MAHADEV STORAGE      | PUNE     | it has distribution in mumbai and nashik also                                           |
| 2005 | Fly High Logistics   | KANPUR   | Fly High Logistics is diversifying its provide world-class logistics services           |
| 2006 |  Logistics Solutions | MYSORE   | They offer end-to-end, tailor-made solutions to our clients and transportation services |
| 2008 | SOUTH Logistics      | BANGLORE | SOUTH is a well-known in SOUTHERN parts of India.                                       |
| 2010 | NAGPUR DIAMOND       | NAGPUR   | NAGPUR DIAMOND is the key to the overall warehouse distribution in nagpur               |
+------+----------------------+----------+-----------------------------------------------------------------------------------------+
*/

create table  STORES(SID INTEGER,STORE_NAME CHAR(20), WID INTEGER,LOCATION_CITY CHAR(20) ,FOREIGN KEY (WID) REFERENCES WAREHOUSES(WID));

/*
+---------------+----------+------+-----+---------+-------+
| Field         | Type     | Null | Key | Default | Extra |
+---------------+----------+------+-----+---------+-------+
| SID           | int      | YES  |     | NULL    |       |
| STORE_NAME    | char(20) | YES  |     | NULL    |       |
| WID           | int      | YES  | MUL | NULL    |       |
| LOCATION_CITY | char(20) | YES  |     | NULL    |       |
+---------------+----------+------+-----+---------+-------+
*/

INSERT INTO STORES VALUES(210,'KGN Shops',2002,'PUNE');
INSERT INTO STORES VALUES(211,'EMPERIAL Mall',2006,'MYSORE');
INSERT INTO STORES VALUES(212,'CENTRAL MALL',2008,'BANGLORE');
INSERT INTO STORES VALUES(214,'HIGER MALL',2005,'KANPUR');
INSERT INTO STORES VALUES(215,'Order Online',2010,'NAGPUR');
INSERT INTO STORES VALUES(216,'SUPER SAVER STORE',2000,'MUMBAI');
INSERT INTO STORES VALUES(217,'KGN Shops',2002,'MYSORE');

/*
+------+-------------------+------+---------------+
| SID  | STORE_NAME        | WID  | LOCATION_CITY |
+------+-------------------+------+---------------+
|  210 | KGN Shops         | 2002 | PUNE          |
|  211 | EMPERIAL Mall     | 2006 | MYSORE        |
|  212 | CENTRAL MALL      | 2008 | BANGLORE      |
|  214 | HIGER MALL        | 2005 | KANPUR        |
|  215 | Order Online      | 2010 | NAGPUR        |
|  216 | SUPER SAVER STORE | 2000 | MUMBAI        |
|  217 | KGN Shops         | 2002 | MYSORE        |
+------+-------------------+------+---------------+
*/

create table  CUSTOMER(CNO INTEGER, CNAME CHAR(50),ADDR VARCHAR(50),CU_CITY CHAR(20));

/*
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| CNO     | int         | YES  |     | NULL    |       |
| CNAME   | char(50)    | YES  |     | NULL    |       |
| ADDR    | varchar(50) | YES  |     | NULL    |       |
| CU_CITY | char(20)    | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
*/


insert into CUSTOMER  values(1,"YASH","new diamond nagar ","NAGPUR");
insert into CUSTOMER  values(2,"PATEL","red hill road ","MYSORE");
insert into CUSTOMER  values(3,"AJAY","Iris Watson P.O. Box 2021","MUMBAI");
insert into CUSTOMER  values(4,"RAJ","Calista Wise 7292 Dictum Av. San Antonio ","KANPUR");
insert into CUSTOMER  values(5,"HARSH","Theodore road ","BANGLORE");
insert into CUSTOMER  values(6,"SHAHID","Kyla Olsen Ap Sodales Av. Tamuning 4","CHENNAI");

/*
+------+--------+-------------------------------------------+----------+
| CNO  | CNAME  | ADDR                                      | CU_CITY  |
+------+--------+-------------------------------------------+----------+
|    1 | YASH   | new diamond nagar                         | NAGPUR   |
|    2 | PATEL  | red hill road                             | MYSORE   |
|    3 | AJAY   | Iris Watson P.O. Box 2021                 | MUMBAI   |
|    4 | RAJ    | Calista Wise 7292 Dictum Av. San Antonio  | KANPUR   |
|    5 | HARSH  | Theodore road                             | BANGLORE |
|    6 | SHAHID | Kyla Olsen Ap Sodales Av. Tamuning 4      | CHENNAI  |
+------+--------+-------------------------------------------+----------+
*/

create table  ITEMS(ONO INT PRIMARY KEY,ITEMNO INTEGER,DESCRIPTION TEXT,WEIGHT DECIMAL(5,2),COST DECIMAL(5,2) );

/*
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| ONO         | int          | NO   | PRI | NULL    |       |
| ITEMNO      | int          | YES  |     | NULL    |       |
| DESCRIPTION | text         | YES  |     | NULL    |       |
| WEIGHT      | decimal(5,2) | YES  |     | NULL    |       |
| COST        | decimal(5,2) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
*/

insert into items values (124,101,"BOTTLES",0.7,300.23);
insert into items values (126,102,"BOOKS",1.02,150.00);
insert into items values (221,103,"CURTAINS",1.13,599.99);
insert into items values (657,104,"BEDSHEETS",2.13,420.50);
insert into items values (989,105,"FRAMES",1.23,300.00);

/*
+-----+--------+-------------+--------+--------+
| ONO | ITEMNO | DESCRIPTION | WEIGHT | COST   |
+-----+--------+-------------+--------+--------+
| 124 |    101 | BOTTLES     |   0.70 | 300.23 |
| 126 |    102 | BOOKS       |   1.02 | 150.00 |
| 221 |    103 | CURTAINS    |   1.13 | 599.99 |
| 657 |    104 | BEDSHEETS   |   2.13 | 420.50 |
| 989 |    105 | FRAMES      |   1.23 | 300.00 |
+-----+--------+-------------+--------+--------+
*/

create table  ORDERS(ONO INT,ODATE DATE,CNO INTEGER ,FOREIGN KEY (ono) REFERENCES ITEMS(ono) );

/*
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| ONO   | int  | YES  | MUL | NULL    |       |
| ODATE | date | YES  |     | NULL    |       |
| CNO   | int  | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
*/

INSERT INTO ORDERS VALUES(124,'2021-11-24',1);
INSERT INTO ORDERS VALUES(124,'2022-01-12',2);
INSERT INTO ORDERS VALUES(221,'2021-3-1',3);
INSERT INTO ORDERS VALUES(657,'2022-7-23',4);
INSERT INTO ORDERS VALUES(989,'2022-1-17',5);
INSERT INTO ORDERS VALUES(126,'2022-2-14',6);
INSERT INTO ORDERS VALUES(126,'2022-2-4',4);
INSERT INTO ORDERS VALUES(989,'2021-1-4',1);
INSERT INTO ORDERS VALUES(657,'2021-2-2',5);
/*
+------+------------+------+
| ONO  | ODATE      | CNO  |
+------+------------+------+
|  124 | 2021-11-24 |    1 |
|  124 | 2022-01-12 |    2 |
|  221 | 2021-03-01 |    3 |
|  657 | 2022-07-23 |    4 |
|  989 | 2022-01-17 |    5 |
|  126 | 2022-02-14 |    6 |
|  126 | 2022-02-14 |    6 |
|  126 | 2022-02-04 |    4 |
|  989 | 2021-01-04 |    1 |
|  657 | 2021-02-02 |    5 |
+------+------------+------+
*/