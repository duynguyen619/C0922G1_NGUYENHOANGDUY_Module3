create database furama_resort;
use furama_resort;

create table employee(
id int primary key,
`name` varchar(45),
date_of_birth date,
id_card varchar(45),
salary double,
phone_number varchar(45),
email varchar(45),
address varchar(45),
position_id int,
foreign key(position_id) references positions(id),
education_degree_id int,
foreign key (education_degree_id) references education_degree(id),
division_id int,
foreign key(division_id) references division(id),
username varchar(255)
);

create table positions(
id int primary key,
`name` varchar(45)
);

create table education_degree(
id int primary key,
`name` varchar(45)
);

create table division(
id int primary key,
`name` varchar(45)
);

create table roles(
role_id int primary key,
role_name varchar(225)
);

create table users(
username varchar(225) primary key,
passwrod varchar(225)
);

create table user_role(
role_id int,
foreign key(role_id) references roles(role_id),
username varchar(225),
foreign key (username) references users(username)
);

create table customer(
id int primary key,
customer_type_id int,
foreign key(customer_type_id) references customer_type(id),
`name` varchar(45),
date_of_birth date,
gender bit(1),
id_card varchar(45),
phone_number varchar(45),
email varchar(45),
address varchar(45)
);

create table customer_type(
id int primary key,
`name` varchar(45)
);

create table facility(
id int primary key,
`name` varchar(45),
area int,
cost double,
max_people int,
rent_type_id int,
foreign key(rent_type_id) references rent_type(id),
facility_type_id int,
foreign key (facility_type_id) references facility_type(id),
standard_other_conveniece varchar(45),
pool_area double,
number_of_foors int,
facility_free text
);

create table facility_type(
id int primary key,
`name` varchar(45)
);

create table rent_type(
id int primary key,
`name` varchar(45)
);

create table contract(
id int primary key,
start_date datetime,
end_date datetime,
depost double,
employee_id int,
foreign key(employee_id) references employee(id),
customer_id int,
foreign key(customer_id) references customer(id),
facility_id int,
foreign key(facility_id) references facility(id)
);

create table attach_facility(
id int primary key,
`name` varchar(45),
cost double,
unit varchar(10),
status varchar(45)
);

create table contract_detall(
id int primary key,
contract_id int,
foreign key(contract_id) references contract(id),
attach_facility_id int,
foreign key(attach_facility_id) references attach_facility(id)
);
