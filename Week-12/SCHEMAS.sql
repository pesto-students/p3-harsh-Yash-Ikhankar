-- Find the item that has minimum weight?

select ITEMNO,DESCRIPTION,COST from items where weight =(select min(weight) from items);
/*
+--------+-------------+--------+
| ITEMNO | DESCRIPTION | COST   |
+--------+-------------+--------+
|    102 | BOTTLES     | 300.23 |
+--------+-------------+--------+
*/

-- Find the different warehouses in “Pune”.

select WID,WNAME from Warehouses where location="pune";
/*
+------+-----------------+
| WID  | WNAME           |
+------+-----------------+
| 2002 | KGN STORAGE     |
| 2003 | MAHADEV STORAGE |
+------+-----------------+
*/

-- Find the details of items ordered by a customer “Mr. Patel”

select ono,itemno,description,weight,cost from items where ono in (select ono from orders where cno=(select cno from customer where cname='PATEL'));

/*
+-----+--------+-------------+--------+--------+
| ono | itemno | description | weight | cost   |
+-----+--------+-------------+--------+--------+
| 124 |    101 | BOTTLES     |   0.70 | 300.23 |
+-----+--------+-------------+--------+--------+
*/

-- Find a Warehouse which has maximum stores.

select * from warehouses where wid =(select wid from stores group by wid order by count(sid)desc limit 1);
/*
+------+-------------+----------+---------------------------------+
| WID  | WNAME       | LOCATION | EXTRA_CONTEXT                   |
+------+-------------+----------+---------------------------------+
| 2002 | KGN STORAGE | PUNE     | THE LEADING DISTRIBUTOR OF PUNE |
+------+-------------+----------+---------------------------------+
*/


-- Find an item which is ordered for a minimum number of times.
select DESCRIPTION ,count(description) from items group by description having count(DESCRIPTION)=(select min(count) from (select count(description) as count from items group by description))
/*
+-------------+
| DESCRIPTION |
+-------------+
| CURTAINS    |
+-------------+
*/

-- Find the detailed orders given by each customer.

select cname , o.ono,odate ,itemno,description from customer c inner join orders o on c.cno=o.cno inner join items i on o.ono=i.ono;

/*
+--------+------+------------+--------+-------------+
| cname  | ono  | odate      | itemno | description |
+--------+------+------------+--------+-------------+
| YASH   |  124 | 2021-11-24 |    102 | BOTTLES     |
| PATEL  |  124 | 2022-01-12 |    102 | BOTTLES     |
| AJAY   |  221 | 2021-03-01 |    103 | CURTAINS    |
| RAJ    |  657 | 2022-07-23 |    104 | BEDSHEETS   |
| HARSH  |  989 | 2022-01-17 |    105 | FRAMES      |
| SHAHID |  126 | 2022-02-14 |    102 | BOTTLES     |
| RAJ    |  126 | 2022-02-04 |    102 | BOTTLES     |
| YASH   |  989 | 2021-01-04 |    105 | FRAMES      |
| HARSH  |  657 | 2021-02-02 |    104 | BEDSHEETS   |
+--------+------+------------+--------+-------------+
*/