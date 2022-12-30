<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 30/12/2022
  Time: 3:15 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <h1>Danh sách khách hàng</h1>
    <table>
        <tr>
            <th>Số thứ tự</th>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Dịa chỉ</th>
            <th>Ảnh</th>
        </tr>
        <c:forEach items="${CustomerList}" var="customer" varStatus="status" >
            <tr>
                <td>${status.count}</td>
                <td>${customer.name}</td>
                <td>${customer.dateBirth}</td>
                <td>${customer.address}</td>
                <td><img src="${customer.img}" alt="ảnh không đúng" height="100px" width="90px"></td>
            </tr>
        </c:forEach>
    </table>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
