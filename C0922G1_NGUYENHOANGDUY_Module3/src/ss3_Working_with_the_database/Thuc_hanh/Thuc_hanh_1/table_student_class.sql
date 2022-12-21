create database if not exists students_class;
use students_class;
drop database if exists students_class;

create table class(
class_id int primary key,
class_name varchar(50),
stardate date,
`status` bit
);

create table student(
student_id int auto_increment primary key,
student_name varchar(50),
address varchar(50),
phone varchar(50),
`status` bit,
class_id int,
foreign key(class_id) references class(class_id)  
);

create table subjects(
sub_id int primary key,
sub_name varchar(50),
credit int,
`status` bit
);

create table mark(
mark_id int auto_increment primary key,
sub_id int,
student_id int,
mark int,
exam_times time,
foreign key( sub_id) references subjects(sub_id),
foreign key( student_id) references student(student_id)
);