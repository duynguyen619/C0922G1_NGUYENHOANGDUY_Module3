create database store_manageement;
use store_manageement;

create table customers(
cid int primary key,
cname varchar(50),
cage int
);

create table orders(
oid int primary key,
cid int,
foreign key(cid) references customers(cid),
odate date,
ototalprice double
);

create table product(
pid int primary key,
pname varchar(50),
pprice double
);

create table orderdetail(
oid int,
foreign key(oid) references orders(oid),
pid int,
foreign key(pid) references product(pid),
odqty int
);