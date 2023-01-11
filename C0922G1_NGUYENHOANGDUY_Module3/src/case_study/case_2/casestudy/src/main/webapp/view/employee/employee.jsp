<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/01/2023
  Time: 9:27 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <title>furama</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="furama.css">
    <style>
        a {
            text-decoration: none;
            color: white;
        }
    </style>


</head>
<body>
<div class="row bg-light">
    <div class="col-2 " style="padding: 10px">
        <a href="http://localhost:8080/"><img
                src="img/logo.png"
                height="100" width="100"/></a></div>
    <div class="col-3 box"><a
            href="https://www.tripadvisor.com/Hotel_Review-g298085-d302750-Reviews-Furama_Resort_Danang-Da_Nang.html">
        <img src="https://smartdata.tonytemplates.com/bestel/wp-content/uploads/2018/05/widget-tripadvisor-logo.png"
             height="30" width="100"/> </a>
        <p> 2,746 Reviews
        </p>
    </div>
    <div class="col-4">
        <p>
            <img src="https://e7.pngegg.com/pngimages/98/498/png-clipart-computer-icons-address-book-gps-tracking-angle-text.png"
                 height="50" width="50"/>
            103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam 7,0 km from
            Danang Airport</p>
    </div>
    <div class="col-3">
        <img src="https://tse4.mm.bing.net/th?id=OIP.zBov_4E-lB1WDZv942ufBQAAAA&pid=Api&P=0" height="20"
             width="20"/> 84-236-3847 333/888
        <br>
        <img src="https://tse2.mm.bing.net/th?id=OIP.RuPJf5uOjrbyyx1uwVI4lQHaHa&pid=Api&P=0" height="20"
             width="20"/> reservation@furamavietnam.com
    </div>
</div>
<div class="row " style="background: green;
    padding-top: 30px;
    padding-bottom: 20px;
    padding-left: 80px;">
    <div class="col-2"><a href="https://furamavietnam.com/the-resort/">Home</a></div>
    <div class="col-2"><a href="/employee">Employee</a></div>
    <div class="col-2"><a href="/customer">Customer</a></div>
    <div class="col-2"><a href="https://furamavietnam.com/the-resort/">Service</a></div>
    <div class="col-2"><a href="https://furamavietnam.com/the-resort/">Contract</a></div>
    <div class="col-2">
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit" style="background: chocolate; color: white">
                Search
            </button>
        </form>
    </div>
</div>
<a href="view/employee/add.jsp" style="color: darkred">Thêm mới</a>
<table class="table table-dark">
    <tr>
        <td>STT</td>
        <td>Name</td>
        <td>Date of birth</td>
        <td>Id Card</td>
        <td>Salary</td>
        <td>Phone Number</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="employee" items="${employeeList}" varStatus="count">
        <tr>
            <th>${count.count}</th>
            <th>${employee.name}</th>
            <th>${employee.dateOfBirth}</th>
            <th>${employee.idCard}</th>
            <th>${employee.salary}</th>
            <th>${employee.phoneNumber}</th>
            <th>${employee.email}</th>
            <th>${employee.address}</th>
            <th><a href="/employee?action=update&id=${employee.id}">Edit</a></th>
            <th><a href="/employee?action=delete&id=${employee.id}">Delete</a></th>
        </tr>
    </c:forEach>
</table>
<div class="b"><img src="https://furamavietnam.com/wp-content/uploads/2019/02/Ariyana-Tourism-Complex-02-2.png"
                    width="120%"
                    height="150%"></div>
