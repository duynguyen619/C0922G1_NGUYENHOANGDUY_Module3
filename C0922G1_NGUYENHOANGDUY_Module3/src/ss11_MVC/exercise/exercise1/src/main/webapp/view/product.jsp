<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 03/01/2023
  Time: 1:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h1>Thêm mới danh sách</h1>
<a href="/product">Quay lại danh sách</a>
<p style="color:red">${mess}</p>
<form action="/product" method="post">
    <input name="id" placeholder="Nhập id"><br>
    <input name="name" placeholder="Nhập tên sản phẩm"><br>
    <input name="price" placeholder="Nhập giá tiền"><br>
    <input name="describe" placeholder="Mô tả sản phẩm"><br>
    <input name="producer" placeholder="Nhà sản phẩm">
    <button type="submit">Save</button>
</form>
</body>
</html>
