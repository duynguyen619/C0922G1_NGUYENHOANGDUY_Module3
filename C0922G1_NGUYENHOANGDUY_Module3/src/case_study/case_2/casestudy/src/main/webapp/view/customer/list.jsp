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
    <%@include file="/view/interface/header.jsp" %>
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
        <div class="col-md-6">
            <form action="/customer?action=search" method="post" class="d-flex">
                <input class="form-control me-2" type="text" placeholder="Search Name" aria-label="search" name="name">
                <input class="form-control me-2" type="text" placeholder="Search Address" aria-label="search"
                       name="address">
                <input class="form-control me-2" type="text" placeholder="Search Email" aria-label="search"
                       name="email">
                <button class="btn btn-outline-secondary col-md-2" type="submit">Search</button>
            </form>
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
                <td>${customer.getName()}</td>
                <td>${customer.getDateOfBirth()}</td>
                <td>${customer.getGender()=='Man'?'Man':'Woman'}</td>
                <td>${customer.getIdCard()}</td>
                <td>${customer.getPhoneNumber()}</td>
                <td>${customer.getAddress()}</td>
                <td>${customer.getEmail()}</td>
                <td>${customer.getCustomerType().getName()}</td>
                <td>
                    <button onclick="infoEdit('${customer.getId()}','${customer.getName()}','${customer.getDateOfBirth()}',
                            '${customer.getGender()}','${customer.getIdCard()}','${customer.getPhoneNumber()}','${customer.getAddress()}',
                            '${customer.getEmail()}','${customer.getCustomerType().getId()}')"
                            class="btn btn-md btn-outline-secondary" data-bs-toggle="modal"
                            data-bs-target="#editCustomer"><i class="fas fa-edit"></i></button>
                    <button onclick="infoDelete('${customer.getId()}','${customer.getName()}')"
                            class="btn btn-md btn-danger ms-1 " data-bs-toggle="modal" data-bs-target="#deleteCustomer">
                        <i
                                class="fas fa-trash-alt"></i></button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="modal fade" id="deleteCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Customer</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/customer?action=delete" method="post">
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
<div class="modal fade" id="editCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Customer Information</h5>
            </div>
            <div class="modal-body">
                <form action="/customer?action=edit" method="post" id="myform">
                    <input type="text" id="id" name="id" hidden>
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" class="form-control" name="name" id="newName" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">DOB</label>
                        <input type="date" class="form-control" name="dateOfBirth" id="newDateOfBirth" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Gender: </label>
                        <label><input id="man" type="radio" name="gender" value="Man">Man</label>
                        <label><input id="woman" type="radio" name="gender" value="Woman">Woman</label>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">ID Card</label>
                        <input type="text" class="form-control" name="idCard" id="newIdCard" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Phone Number</label>
                        <input type="text" class="form-control" name="phoneNumber" id="newPhoneNumber" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Address</label>
                        <input type="text" class="form-control" name="address" id="newAddress" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="text" class="form-control" name="email" id="newEmail" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Customer Type Name</label>
                        <select class="form-select"
                                aria-label="Example select with button addon" name="customerTypeId"
                                id="newCustomerTypeId">
                            <c:forEach var="customerType" items="${customerTypeList}">
                                <option value="${customerType.getId()}">${customerType.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="submit" class="btn btn-danger" form="myform">Save changes</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="addCustomer" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Customer Information</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/customer?action=insert" method="post">
                <div class="modal-body">
                    <div class="mb-3 form-group">
                        <label class="form-label">Name</label>
                        <input type="text" value="${customer.getName()}" class="form-control" name="name" required>
                        <c:if test="${!errorMap.isEmpty}">
                            <p style="color: red">${errorMap.get("name")}</p>
                        </c:if>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">DOB</label>
                        <input type="date" value="${customer.getDateOfBirth()}" class="form-control"
                               name="dateOfBirth" required>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">Gender</label>
                        <select class="form-select" name="gender">
                            <option value="Man" ${customer.getGender()=="Man"?"checked":""}>Man</option>
                            <option value="Woman" ${customer.getGender()=="Woman"?"checked":""}>Woman</option>
                        </select>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">ID card</label>
                        <input type="text" value="${customer.getIdCard()}" class="form-control" name="idCard"
                               required>
                        <c:if test="${!errorMap.isEmpty}">
                            <p style="color: red">${errorMap.get("idCard")}</p>
                        </c:if>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">Phone number</label>
                        <input type="text" value="${customer.getPhoneNumber()}"
                               class="form-control" name="phoneNumber" required>
                        <c:if test="${!errorMap.isEmpty}">
                            <p style="color: red">${errorMap.get("phoneNumber")}</p>
                        </c:if>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">Address</label>
                        <input type="text" value="${customer.getAddress()}" class="form-control" name="address"
                               required>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">Email</label>
                        <input type="text" value="${customer.getEmail()}" pattern="[a-zA-Z]\w+@gmail\.com"
                               class="form-control" name="email"
                               required>
                        <c:if test="${!errorMap.isEmpty}">
                            <p style="color: red">${errorMap.get("email")}</p>
                        </c:if>
                    </div>
                    <div class="mb-3 form-group">
                        <label class="form-label">Customer type</label>
                        <select class="form-select" id="inputGroupSelect03"
                                aria-label="Example select with button addon" name="customerTypeName">
                            <c:forEach var="customerType" items="${customerTypeList}">
                                <option value="${customerType.getId()}">${customerType.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="Submit" class="btn btn-danger">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function infoDelete(id, name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;
    }
    function infoEdit(id, name, dateOfBirth, gender, idCard, phoneNumber, address, email, customerTypeId) {
        document.getElementById("id").value = id;
        document.getElementById("newName").value = name;
        document.getElementById("newDateOfBirth").value = dateOfBirth;
        document.getElementById("newIdCard").value = idCard;
        document.getElementById("newPhoneNumber").value = phoneNumber;
        document.getElementById("newAddress").value = address;
        document.getElementById("newEmail").value = email;
        document.getElementById("newCustomerTypeId").value = customerTypeId;
        debugger
        if (gender == "Man") {
            document.getElementById("man").checked = true;
            document.getElementById("woman").checked = false;
        } else {
            document.getElementById("man").checked = false;
            document.getElementById("woman").checked = true;
        }
    }
    setTimeout(function () {
        document.getElementById("mess").style.display = "none"
    }, 3000);
</script>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableCustomer').dataTable({
            dom: 'lrtip',
            lengthChange: false,
            pageLength: 10,
            bInfo: false,
            // "pagingType": 'full_numbers',
        });
    });
</script>
<%@include file="/view/interface/footer.jsp" %>
</body>
</html>
