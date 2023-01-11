<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 11/01/2023
  Time: 8:54 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/customer?action=add">
  <input name="customerTypeId" placeholder="Kiểu khách hàng">
  <input name="name" placeholder="Họ và tên">
  <input name="dateOfBirth" placeholder="Ngày sinh">
  <input  type="radio" name="gender" placeholder="Giới tính">
  <input name="idCard" placeholder="CMND">
  <input name="phoneNumber" placeholder="Số điện thoại">
  <input name="email" placeholder="Email">
  <input name="address" placeholder="Địa chỉ">
  <button type="submit">Save</button>
</form>
</body>
</html>
