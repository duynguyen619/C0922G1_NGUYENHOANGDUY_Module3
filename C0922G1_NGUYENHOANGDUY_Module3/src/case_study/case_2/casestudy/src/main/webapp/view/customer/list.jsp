<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 09/01/2023
  Time: 10:53 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/view/interface/header.jsp" %>
<div><p id="mess" class="text-center fs-2 text-danger">${mess}</p></div>
<div class="container mt-2">
    <div class="row justify-content-between">
        <div class="col-md-2">
            <button class="btn btn-outline-primary" data-bs-toggle="modal"
                    data-bs-target="#addCustomer">
                ADD CUSTOMER <i class="fas fa-plus"></i>
            </button>
        </div>
    </div>
</div>
<div class="container-fluid">
    <p class="text-center fs-2 fw-bold">All Customer Details</p>
    <table id="tableCustomer" class="table table-striped table-bordered">
        <thead>
        <tr>
            <th class="col">No.</th>
            <th class="col">Name</th>
            <th class="col">DOB</th>
            <th class="col">Gender</th>
            <th class="col">ID Card</th>
            <th class="col">Phone Number</th>
            <th class="col">Address</th>
            <th class="col">Email</th>
            <th class="col">Customer Name</th>
            <th class="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="customer" items="${customerList}" varStatus="status">
            <tr>
                <th scope="row"><c:out value="${status.count}"/></th>
                <td>${customer.name()}</td>
                <td>${customer.birthDay()}</td>
                <c:if test="${customer.gender}">
                    <td>Nữ</td>
                </c:if>
                <c:if test="${!customer.gender}">
                    <td>Nam</td>
                </c:if>
                <td>${customer.getIdCard()}</td>
                <td>${customer.numberPhone()}</td>
                <td>${customer.getAddress()}</td>
                <td>${customer.mail()}</td>
                <td>${customer.getCustomerType().getName()}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<%@include file="/view/interface/footer.jsp" %>
</body>
</html>
