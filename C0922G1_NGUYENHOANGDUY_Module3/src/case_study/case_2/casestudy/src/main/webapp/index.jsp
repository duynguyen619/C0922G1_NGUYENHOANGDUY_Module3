<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/imgvtool.png"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/Furama.jpg"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/uu-dai-diem-den-mua-he-tu-furama-resort-da-nang-1.jpg"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/dc72a1c6782f83f8003f4f50a1ff7348.jpg"
                     class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<div class="b"><img src="https://furamavietnam.com/wp-content/uploads/2019/02/Ariyana-Tourism-Complex-02-2.png"
                    width="120%"
                    height="150%"></div>
</body>
</html>