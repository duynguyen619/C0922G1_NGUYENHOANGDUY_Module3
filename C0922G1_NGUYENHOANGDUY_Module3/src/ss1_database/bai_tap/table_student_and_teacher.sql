create database people;
use people;

create table student_class(
id int,
`name` varchar(50)
);

create table teacher_class(
id int,
`name` varchar(50),
age int,
country varchar(50)
);

insert student_class (id,`name`) value (1,'Duy'),(2,'Huy');
insert teacher_class (id,`name`,age,country) value (1,'Thủy',22,'Quảng Nam');

select * from student_class;
select * from teacher_class;