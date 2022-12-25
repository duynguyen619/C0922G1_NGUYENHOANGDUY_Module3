use furama_resort;

insert into positions(id,`name`) values 
(1,'Quản lý'),
(2,'Nhân viên');

insert into education_degree(id,`name`) values
(1,'Trung cấp'),
(2,'Cao đẳng'),
(3,'Đại học'),
(4,'Sau đại học');

insert into division(id,`name`) values
(1,'Sale-Marketing'),
(2,'Hành chính'),
(3,'Phục vụ'),
(4,'Quản lý');

insert into employee (id, `name`, date_of_birth, id_card, salary, phone_number,
 email, address, position_id, education_degree_id, division_id) values
(1, 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', '1', '3', '1'),
(2, 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2'),
(3, 'Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', '1', '3', '2'),
(4, 'Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4'),
(5, 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1'),
(6, 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3'),
(7, 'Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', '2', '3', '2'),
(8, 'Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', '2', '4', '4'),
(9, 'Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', '2', '4', '4'),
(10, 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', '2', '3', '2');

insert into customer_type(id,`name`) values
(1,'Diamond'),
(2,'Platinium'),
(3,'Gold'),
(4,'Sliver'),
(5,'Member');

insert into customer(id,customer_type_id,`name`,date_of_birth,gender,id_card,phone_number,email,address) values
(1,'5', 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng' ),
(2,'3', 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị'),
(3,'1', 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh'),
(4,'1', 'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng'),
(5,'4', 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai'),
(6,'4', 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng'),
(7,'1', 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh'),
(8,'3', 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum'),
(9,'1', 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi'),
(10,'2', 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng');

insert into rent_type(id,`name`) values
(1,'year'),
(2,'mouth'),
(3,'day'),
(4,'hour');

insert into facility_type(id,`name`) values
(1,'Villa'),
(2,'House'),
(3,'Room');

insert into facility(id,`name`,area,cost,max_people,standard_other_conveniece,pool_area,number_of_foors,facility_free,facility_type_id,rent_type_id) values
(1, 'Villa Beach Front', '25000', '1000000', '10', 'vip', 'Có hồ bơi', '500', '4', null, '3', '1'),
(2, 'House Princess 01', '14000', '5000000', '7', 'vip', 'Có thêm bếp nướng', null, '3', null, '2', '2'),
(3, 'Room Twin 01', '5000', '1000000', '2', 'normal', 'Có tivi', null, null, '1 Xe máy, 1 Xe đạp', '4', '3'),
(4, 'Villa No Beach Front', '22000', '9000000', '8', 'normal', 'Có hồ bơi', '300', '3', null, '3', '1'),
(5, 'House Princess 02', '10000', '4000000', '5', 'normal', 'Có thêm bếp nướng', null, '2', null, '3', '2'),
(6, 'Room Twin 02', '3000', '900000', '2', 'normal', 'Có tivi', null, null, '1 Xe máy', '4', '3');

insert into attach_facility(id,`name`,cost,unit,statuss) values
(1, 'Karaoke', '10000', 'giờ', 'tiện nghi, hiện tại'),
(2, 'Thuê xe máy', '10000', 'chiếc', 'hỏng 1 xe'),
(3, 'Thuê xe đạp', '20000', 'chiếc', 'tốt'),
(4, 'Buffet buổi sáng', '15000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
(5, 'Buffet buổi trưa', '90000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
(6, 'Buffet buổi tối', '16000', 'suất', 'đầy đủ đồ ăn, tráng miệng'); 

