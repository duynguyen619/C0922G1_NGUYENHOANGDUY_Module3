<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 10/01/2023
  Time: 9:27 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Employee Details</title>
</head>
<body>
<%@include file="/view/interface/header.jsp" %>
<div class="container">
    <p id="mess" class="text-center text-danger fs-4 ">${mess}</p>
</div>
<div class="container mt-2">
    <div class="row col-md-2">
        <button class="btn btn-outline-primary">Add Employee <i class="fas fa-plus"></i></button>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <p class="text-center fs-2 fw-bold ">All Employee Details</p>
    </div>
    <div class="row table-responsive">
        <table class="table table-bordered table-striped align-middle ">
            <thead>
            <tr>
                <th class="col">No.</th>
                <th class="col">Name</th>
                <th class="col">DOB</th>
                <th class="col">ID Card</th>
                <th class="col">Salary</th>
                <th class="col">Phone Number</th>
                <th class="col">Email</th>
                <th class="col">Address</th>
                <th class="col">Position Name</th>
                <th class="col">Education Degree Name</th>
                <th class="col">Division Name</th>
                <th class="col">User Name</th>
                <th class="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="employee" items="${employeeList}" varStatus="status">
                <tr>
                    <th scope="row">${status.count}</th>
                    <td>${employee.name}</td>
                    <td>${employee.dateOfBirth}</td>
                    <td>${employee.idCard}</td>
                    <td>${employee.salary}</td>
                    <td>${employee.phoneNumber}</td>
                    <td>${employee.email}</td>
                    <td>${employee.address}</td>
                    <td>${employee.getPosition().getName()}</td>
                    <td>${employee.getEducationDegree().getName()}</td>
                    <td>${employee.getDivision().getName()}</td>
                    <td>${employee.getUser().getUserName()}</td>
                    <td>
                        <button class="btn btn-md btn-outline-secondary"><i class="fas fa-edit"></i></button>
                        <button onclick="infoDelete('${employee.getId()}','${employee.getName()}')" class="btn btn-md btn-outline-danger ms-1" data-bs-toggle="modal" data-bs-target="#deleteEmployee"><i
                                class="fas fa-trash-alt"></i></button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Modal delete-->
<div class="modal fade" id="deleteEmployee" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Employee</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/employee?action=delete" method="post">
                <div class="modal-body">
                    <input hidden type="text" id="deleteId" name="deleteId">
                    <span>Do you want to delete </span><span id="deleteName" class="text-danger"></span> ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-md btn-primary">Delete</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function infoDelete(id,name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;
    }
    setTimeout(function () {
        document.getElementById("mess").style.display="none";
    },3000)
</script>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>

<%@include file="/view/interface/footer.jsp" %>
</body>
</html>
