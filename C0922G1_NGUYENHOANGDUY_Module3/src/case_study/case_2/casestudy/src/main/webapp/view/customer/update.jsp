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
<form method="post" action="/customer?action=update">
  <p>ID</p>
  <input type="hidden" name="id" value="${customer.id}">
  <p>Name</p>
  <input name="name" value="${customer.name}">
  <p>Date</p>
  <input name="dateOfBirth" value="${customer.dateOfBirth}">
  <p>Gender</p>
  <input  name="gender" value="${customer.gender}">
  <p>ID Card</p>
  <input name="idCard" value="${customer.idCard}">
  <p>Number Phone</p>
  <input name="phoneNumber" value="${customer.phoneNumber}">
  <p>Email</p>
  <input name="email" value="${customer.email}">
  <p>Address</p>
  <input name="address" value="${customer.address}">
  <button type="submit">Save</button>
</form>
</body>
</html>
