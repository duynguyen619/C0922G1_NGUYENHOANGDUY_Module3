create database products_class;
use products_class;

create table customers(
cid int auto_increment primary key,
cname varchar(50),
cage int
);

create table orders(
oid int auto_increment primary key,
cid int,
foreign key(cid) references customers(cid),
odate date,
ototalprice double
);

create table product(
pid int auto_increment primary key,
pname varchar(50),
pprice double
);

create table orderdetail(
oid int auto_increment,
foreign key(oid) references orders(oid),
pid int,
foreign key(pid) references product(pid),
odqty int
);
-- them du lieu
insert into customers(cname,cage) values 
('Minh Quan',10),
('Ngoc Oanh',20),
('Hong Ha',50);
insert into customers(cname,cage) values('Hoàng Duy', 22);

insert into orders(odate,cid) values
('2006-3-21',1),
('2006-3-23',2),
('2006-3-16',1);

insert into product(pname,pprice) values
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien',2);

insert into orderdetail(oid,pid,odqty) values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

set SQL_SAFE_UPDATE=0;

select orders.oid, date_format(`order`.odate, "%m/%d/%Y") as odate, ototalprice
from orders 
join orderdetail on orderdetail.oid = `order`.oid
join product on orderdetail.pid = product.pid
group by oid
;

select * from customer
join `order` on `order`.cid = customer.cid
order by  customer.cid
;

select * from customers
left join orders on orders.cid = customer.cid
group by orders.cid having count(orders.cid) = 0
;

select orders.oid, date_format(orders.odate, "%m/%d/%Y") as odate, 
sum((product.pprice) * (orderdetail.orderdetail_qty)) as oprice
from orders 
join orderdetail on orderdetail.oid = orders.oid
join product on orderdetail.pid = product.pid
group by oid
;