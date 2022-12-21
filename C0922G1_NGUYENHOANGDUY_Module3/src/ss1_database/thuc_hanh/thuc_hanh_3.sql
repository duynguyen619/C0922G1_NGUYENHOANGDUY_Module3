create database if not exists class;
use class;

create table student(
id int not null primary key ,
`name` varchar(50) not null
);

insert student(id, `name`) values(1,'Duy');
select * from student;