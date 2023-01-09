<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 09/01/2023
  Time: 11:07 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="mt-2 sticky row" style="background: #75b798 ; margin-top:  -0.5rem">
  <nav class="navbar navbar-light">
    <div class="container-fluid">
      <a class="navbar-brand text-light ps-5 click col-l-2" href="">Home</a>
      <a class="navbar-brand text-light click col-l-2" href="">Empolyee</a>
      <a class="navbar-brand text-light click col-l-2" href="">Customers</a>
      <a class="navbar-brand text-light click col-l-2" href="">Service</a>
      <a class="navbar-brand text-light click col-l-2" href="">Contract</a>
      <form class="d-flex m-0 col-l-2">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light" type="submit">Search</button>
      </form>
    </div>
  </nav>
</div>
<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/imgvtool.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/Furama.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/uu-dai-diem-den-mua-he-tu-furama-resort-da-nang-1.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="row" style="height: 92%;margin-top: 0%">
  <div class="col-md-3 px-0">
    <ul class="list-group vh-100 overflow-scroll" style="border: 2px solid #7952b3">
      <li class="list-group-item" aria-current="true">item one</li>
      <li class="list-group-item">item two</li>
      <li class="list-group-item">item three</li>
      <li class="list-group-item">item four</li>
    </ul>
  </div>
</div>
</body>
</html>
