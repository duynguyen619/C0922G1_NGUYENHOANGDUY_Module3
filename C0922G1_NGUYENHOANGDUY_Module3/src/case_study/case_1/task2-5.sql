-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

select * from employee
where substring_index(`name`, " ", -1) like 'H%' 
  or  substring_index(`name`, " ", -1) like 'T%'
  or substring_index(`name`, " ", -1) like 'K%'
  and char_length(`name`)<=15 ;
  
 -- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
 
  select * from customer 
  where (year(curdate())-year(date_of_birth)) between 18 and 50
  and (address like '% Đà Nẵng' or address like '%Quảng Trị')  ;
  
  -- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp xếp tăng dần 
  -- theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
  
  select customer.id, customer.`name`, count(contract.id) as reservations_number, customer_type.`name`
  from customer 
  join contract on customer.id = contract.id
  join customer_type on customer_type.id = customer.id
  where customer_type.`name` = "Diamond"
  group by contract.id
  order by count(contract.id);
  
  -- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, 
  -- ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien
  -- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là 
  -- từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng.
  -- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
  
  select customer.id,customer.`name`, customer_type.`name`, contract.id, facility.`name`, contract.start_date,contract.end_date, sum((facility.depost + ifnull((attach_facility.unit * contract_detall.cost), 0))) as total
  from khach_hang
  left join customer_type on customer.id = customer_type.id
  left join contract on customer.id = contract.id
  left join customer on contract.id = facility.id
  left join contract_detall on contract_detall.id = contract.id
  left join attach_facility on attach_facility.id = contract_detall.id
  group by contract.id, customer.id
  order by customer.id;
  