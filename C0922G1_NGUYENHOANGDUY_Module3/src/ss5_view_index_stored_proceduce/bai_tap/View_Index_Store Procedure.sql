create database if not exists products;
use products;
create table if not exists product(
id int primary key auto_increment,
product_code varchar(50),
product_name varchar(50),
product_price double,
product_amount int,
product_description varchar(50),
product_status bit
);

INSERT INTO products.product (product_code, product_name, product_price, product_amount, product_description, product_status) VALUES ('a1', 'sua', 100, 3, 'tuoi', b'1');
INSERT INTO products.product (product_code, product_name, product_price, product_amount, product_description, product_status) VALUES ('a2', 'banh mi', 200, 4, 'cha', b'0');
INSERT INTO products.product (product_code, product_name, product_price, product_amount, product_description, product_status) VALUES ('b1', 'banh trang tron', 50, 2, 'bo kho', b'1');
select * from product where product_code = 'a2';


create index product_code_index
on product(product_code);

drop index product_code_index
on product;

create index composite_index
on product(product_name, product_price);

explain select * from product;


create view product_view as
select  product_code, product_name, product_price, product_status
from product;

select * from product_view;


set sql_safe_updates = 0;
update product_view set product_name = 'sua bo' where product_code = 'a1';


drop view product_view;
truncate product;


delimiter //
create procedure thong_tin_all_product ()
begin 
select * from product;
end
// delimiter ;

call thong_tin_all_product();


delimiter //
create procedure add_product (product_code varchar(50), product_name varchar(50), product_price double, product_amount int,product_description varchar(50), product_status bit)
begin 
insert into products.product (product_code, product_name, product_price, product_amount, product_description, product_status) 
values (product_code, product_name, product_price, product_amount, product_description, product_status);
end
// delimiter ;


call add_product('b3', 'nem chua ran', 75, 3, 'ha noi', 0);
call thong_tin_all_product();


delimiter //
create procedure update_theo_id (id_edit int, product_code_edit varchar(25), product_name_edit varchar(25), product_price_edit double, product_amount_edit int, product_description_edit varchar(25), product_status_edit bit)
begin
update product set 
    product_code = product_code_edit,
    product_name = product_name_edit,
    product_price= product_price_edit,
    product_amount = product_amount_edit,
    product_description = product_description_edit,
    product_status =product_status_edit
    where id = id_edit;
end
// delimiter ;

call update_theo_id (2, 'a6', 'banh mi sua', 300, 1, 'sua ong tho', 1);
call thong_tin_all_product();


delimiter //
create procedure delete_product (id_delete int)
begin
delete from product where product.id = id_delete;
end
// delimiter ;

call delete_product(3);
