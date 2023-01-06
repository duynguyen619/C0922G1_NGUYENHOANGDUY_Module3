<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 03/01/2023
  Time: 1:35 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h1>Thêm mới danh sách</h1>
<a href="/product">Quay lại danh sách</a>
<p style="color:red">${mess}</p>
<form action="/product?action=save" method="post">
    <input name="id" placeholder="Nhập id"><br>
    <input name="name" placeholder="Nhập tên sản phẩm"><br>
    <input name="price" placeholder="Nhập giá tiền"><br>
    <input name="describe" placeholder="Mô tả sản phẩm"><br>
    <input name="producer" placeholder="Nhà sản phẩm">
    <button type="submit">Save</button>
</form>
<c:forEach var="product" items="${productList}" varStatus="status">
    <table>
        <tr>
            <th scope="row">${status.count}</th>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescribe()}</td>
            <td>${product.getProducer()}</td>
            <td>
                <a href="/product?action=edit&&id=${product.getId()}">
                    <button class="btn btn-sm btn-primary">EDIT</button>
                </a>
                <a href="/product?action=remove&&id=${product.getId()}">
                    <button class="btn btn-sm btn-danger">DELETE</button>
                </a>
            </td>
        </tr>
    </table>
</c:forEach>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
