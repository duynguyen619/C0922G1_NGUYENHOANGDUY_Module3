<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 29/12/2022
  Time: 4:31 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
    <style>
        .choice {
            height: 180px;
            width: 230px;
            margin: 0;
            padding: 10px;
        }
    </style>
</head>
<body>
<form action="/display-product" method="post">
    <div class="choice">
        <input type="text" name="name" placeholder="Tên sản phẩm">
        <input tyle="text" name="productdescription" placeholder="Mô tả Sản phẩm">
        <input type="number" name="listprice" placeholder="Bảng giá">
        <input type="number" name="discountpercent" placeholder="Phần trăm giảm giá">
        <input type="submit" value="total">
    </div>
</form>
</body>
</html>
