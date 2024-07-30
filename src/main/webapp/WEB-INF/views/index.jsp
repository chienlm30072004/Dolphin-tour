<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet"/>
    <script src="js/jquery.min.js"></script>

    <style>
        <%@include file="css/damn.css"%>
        header {
            <%--background-image: url('<c:url value="/imgaes/banner.webp"/>');--%>
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 60px 0;
            height: 300px;
        }

        .vai {
            margin-top: 10px;
            background-color: cadetblue;
            margin-bottom: 10px;
        }

        .ct {
            margin-bottom: 2px;
        }
    </style>
</head>
<body>

<!-- Navigation Menu -->
<nav class="navbar menucss navbar-expand-lg navbar-light bg-light bg-dark ">
    <div class="container">
        <img class="logo" src="img/logo.png" alt="">
        <a class="navbar-brand text-warning" href="#"></a>
        <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-warning" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="bi bi-airplane-engines-fill"></i>
                        DU LỊCH NƯỚC NGOÀI
                    </a>
                    <ul class="dropdown-menu col-ms-3">
                        <li><a class="dropdown-item hover-hsla" href="TravelSpain.html"><i
                                class="bi bi-globe-asia-australia"></i>DU LỊCH TÂY BA
                            NHA</a></li>
                        <ul class="dropdown-submenu">
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thủ đô Madrid</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thành phố Barcelona sôi
                                động</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thành phố Cordoba cổ
                                kính</a></li>
                        </ul>
                        <li><a class="dropdown-item col-ms-3" href="#"><i class="bi bi-globe-asia-australia"></i>DU
                            LỊCH BỒ ĐÀO
                            NHA</a></li>
                        <ul class="dropdown-submenu">
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thung lũng Douro</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thành cổ Guimarães</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Vùng tự trị Azores</a>
                            </li>
                        </ul>
                        <li><a class="dropdown-item col-ms-3" href="#"><i class="bi bi-globe-asia-australia"></i>DU
                            LỊCH ĐỨC</a>
                        </li>
                        <ul class="dropdown-submenu">
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thủ đô Berlin</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>München (Thành phố
                                Munich)</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Cologne (Köln)</a></li>
                        </ul>

                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-warning" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="bi bi-send"></i></i>
                        DU LỊCH TRONG NƯỚC
                    </a>
                    <ul class="dropdown-menu col-ms-3">
                        <li><a class="dropdown-item hover-hsla" href="#"><i class="bi bi-globe-asia-australia"></i>Du
                            Lịch Thành
                            Phố Đà Nẵng</a></li>
                        <ul class="dropdown-submenu">
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Bà Nà Hills</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Bán Đảo Sơn Trà</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thác Hoà Phú Thành</a>
                            </li>
                        </ul>
                        <li><a class="dropdown-item col-ms-3" href="#"><i class="bi bi-globe-asia-australia"></i>Du
                            Lịch Thành
                            Phố Đà Lạt</a></li>
                        <ul class="dropdown-submenu">
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Samten Hills</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Cao Nguyên Hoa</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Thung Lũng Vàng</a>
                            </li>
                        </ul>
                        <li><a class="dropdown-item col-ms-3" href="#"><i class="bi bi-globe-asia-australia"></i>Du
                            Lịch Thành
                            Phố Hạ Long </a></li>
                        <ul class="dropdown-submenu">
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Vịnh Hạ Long</a></li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>Đảo Tuần Châu</a>
                            </li>
                            <li><a class="dropdown-item" href="#"><i class="bi bi-backpack3"></i>NÚI BÀI THƠ</a></li>
                        </ul>

                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-warning" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="bi bi-airplane"></i></i>
                        COMBO DU LỊCH
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#"><i class="bi bi-transparency"></i>Combo Phổ Biến Hiện
                            Nay</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-warning" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="bi bi-person-circle"></i>
                        GIỚI THIỆU
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="aboutus.html"><i class="bi bi-megaphone-fill"></i>Về Chúng
                            Tôi</a>
                        </li>
                        <li><a class="dropdown-item" href="#"><i class="bi bi-buildings-fill"></i>Thông Tin Công Ty</a>
                        </li>
                        <li><a class="dropdown-item" href="#"><i class="bi bi-image"></i>Ảnh & Video Đoàn</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link text-warning" href="/result"><i class="fas fa-shopping-cart"></i>Giỏ Hàng</a>
                    </a>

                </li>
                <%if (session.getAttribute("acc") != null) {%>
                <li class="nav-item ">
                    <a class="nav-link text-warning">Xin chao: ${acc.fullname}</a>
                </li>
                <li class="nav-item ">
                    <a href="/logoutok" class="nav-link text-warning">Log out</a>
                </li>
                <%} else {%>
                <li class="nav-item ">
                    <a class="nav-link text-warning" href="/login"><i class="fas fa-user"></i> Login</a>
                </li>
                <%}%>
            </ul>
        </div>
    </div>
</nav>

<!-- Header -->
<header class="da text-white text-center ">
    <div id="carouselExampleIndicators" class="carousel slide mt-2" data-bs-ride="carousel" data-bs-interval="2000">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/run1.png" class="d-block w-100 h-100 mx-auto" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/run2.png" class="d-block w-100 h-100 mx-auto" alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/run3.png" class="d-block w-100 h-100 mx-auto" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next " type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</header>
<!-- search sort -->
<div class="func container">
    <div class="row">
        <div class="col-md-6">
            <form action="/products" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Search" name="search" value="${search}">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit">Search</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-6">
            <form action="/products" method="post">
                <div class="input-group mb-3">
                    <select class="custom-select" name="sortType">
                        <option value="content" ${sortBy eq 'content' ? 'selected' : ''}>A-Z</option>
                        <option value="price" ${sortBy eq 'price' ? 'selected' : ''}>Price</option>
                    </select>
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit">Sort</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<hr>
<!-- Main Content Body -->
<h4 class="ms-4 text-info">Những Tour Du Lịch Phổ Biến.</h4>
<div class="container mt-4 ">
    <div class="row">
        <div class="col-md-8">
            <article class="col-sm-12">
                <div class="row">
                    <c:forEach var="product" items="${products}">
                        <div class="col-sm-4">
                            <div class="card text-center">
                                <div class="card-header">
                                        ${product.content}
                                </div>
                                <div class="card-body">
                                    <img class="img-fluid img-thumbnail mx-auto" src="/img/${product.img}">
                                    <div>
                                        <button type="button" class="ct btn btn-dark">Chi Tiết</button>
                                    </div>
                                    <a class="btn btn-dark" href="/addcart/${product.id}">Thêm Giỏ Hàng</a>
                                </div>
                                <div class="card-footer"><i class="bi bi-cash-coin"></i> <fmt:formatNumber
                                        value="${product.price}" type="currency" pattern="#,###,### VNĐ"/></div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </article>
        </div>
            <!-- Your content goes here -->

        <div class="col-md-4">
            <section class="slider">
                <div class="slider-content">
                    <div class="slider-content-left">
                        <div class="slider-content-left-top-container">
                            <div class="slider-content-left-top ">
                                <a><img src="img/slide1.png" alt=""></a>
                                <p>-LÝ DO LỰA CHỌN DOLPHIN TOUR
                                    Dolphin Tour–Thành lập từ 2014 - Đơn vị có hệ thống bán trải rộng khắp Hà Nội và Sài
                                    Gòn.
                                </p>
                                <a href=""><img src="img/slide2.png" alt=""></a>
                                <p>-Dolphin Tour–Thành lập từ 2014-Đơn vị có hệ thống bán trải rộng khắp Hà Nội và Sài
                                    Gòn, đảm bảo
                                    giá thành sát với nhu cầu của khách hàng nhất.</p>
                                <a href=""><img src="img/slide3.jpg" alt=""></a>
                                <p>-Các bữa ăn chất lượng, mức ăn cho khách cao nhất từ 18 EUR- 24 EUR, kết hợp phong
                                    phú giữa thực
                                    đơn Á (Trung Quốc, Việt Nam, Thái, Hàn).</p>
                                <a href=""><img src="img/slide4.png" alt=""></a>
                                <p>-Dolphin Tou –Thành lập từ 2014-Đơn vị có hệ thống bán trải rộng khắp Hà Nội và Sài
                                    Gòn, đảm bảo
                                    giá thành sát với nhu cầu của khách hàng nhất.</p>
                                <a href=""><img src="img/left56.jpg" alt=""></a>
                                <p>-ĐÀI LOAN - là một lục địa trên một hòn đảo xanh, không chỉ được biết đến như con
                                    rồng của chấu Á
                                    mà còn là điểm đến du lịch hấp dẫn với rừng núi, biển cả, sông hồ, chùa chiềng.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
</div>
<h4 class="text-center mt-2">Thư Viện Của Chúng Tôi</h4>
<!--  -->
<ul class="nav nav-tabs" id="myTabs">
    <li class="nav-item">
        <a class="nav-link active bg-light" id="tab1-tab" data-bs-toggle="tab" href="#tab1"><i
                class="bi bi-images"></i>Phong Cảnh</a>
    </li>
    <li class="nav-item">
        <a class="nav-link bg-light" id="tab2-tab" data-bs-toggle="tab" href="#tab2"><i
                class="bi bi-person-vcard"></i>Khách Đoàn</a>
    </li>
</ul>
<!-- Bootstrap Tab Content -->
<div class="tab-content" id="myTabsContent">
    <!-- Tab 1 Content -->
    <div class="tab-pane fade show active" id="tab1">
        <div class="row">
            <c:forEach var="item" items="${cart2}">
                <div class="cc col-md-3 ps-3">
                    <div class="card-header image-caption"><i class="bi bi-balloon-fill"></i>
                            ${item.content}
                        <img class="img-fluid img-thumbnail mx-auto" src="/img/${item.img}">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- Tab 2 Content -->
    <div class="tab-pane fade" id="tab2">
        <div class="row">
            <c:forEach var="item" items="${cart3}">
                <div class="cc col-md-3 ps-3">
                    <div class="card-header image-caption"><i class="bi bi-balloon-fill"></i>
                            ${item.content}
                        <img class="img-fluid img-thumbnail mx-auto" src="/img/${item.img}">
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <h4 class="text-center tintuc">Tin Tức,Cẩm Nang</h4>
    <div class="row">
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Tất Tần Tật Mọi Điều Cần Biết Về Xin Visa
                Du Lịch
                Hàn Quốc.</p>
            <img src="img/tintuc1.jpg" class="img-fluid">
        </div>
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Top 10 Địa Điểm Tuyệt Đẹp Dành Cho Tín Đồ
                Mê Du
                Lịch Mỹ.</p>
            <img src="img/tintuc2.jpg" class="img-fluid">
        </div>
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Khám Phá Mùa Thu Hàn Quốc-Gợi Ý Địa Điểm
                Vui
                Chơi,Lịch Trình Hấp.</p>
            <img src="img/tintuc3.png" class="img-fluid">
        </div>
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Thủ Tục Đi Du Lịch Mỹ Thăm Thân Nhân Và
                Những Lưu
                Ý Cần Biết.</p>
            <img src="img/tintuc4.jpg" class="img-fluid">
        </div>
    </div>
    <div class="row">
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Bí Quyết Du Lịch Hàn Quốc Tháng 11 - Lãng
                Mạn Mùa
                Lá Đỏ.</p>
            <img src="img/tintuc5.png" class="img-fluid">
        </div>
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Chia Sẻ Kinh Nghiệm Du Lịch Hàn Quốc Mùa Lá
                Đỏ -
                Dolphin Tour.</p>
            <img src="img/tintuc6.png" class="img-fluid">
        </div>
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>HIỂU ĐÚNG, LÀM ĐÚNG CHỨNG MINH TÀI CHÍNH ĐI
                DU
                LỊCH MỸ.</p>
            <img src="img/tintuc7.jpg" class="img-fluid">
        </div>
        <div class="ccc col-md-3 ps-3">
            <p class="image-caption"><i class="bi bi-balloon-heart-fill"></i>Xin Visa Mỹ Cho Cả Gia Đình - Hướng Dẫn,
                Kinh
                Nghiệm Và.</p>
            <img src="img/tintuc8.jpg" class="img-fluid">
        </div>
    </div>
    <!-- Footer -->
    <footer class="fter text-white py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-3 ps-3">
                    <h5>Liên Hệ</h5>
                    <p class="chu"><i class="bi bi-building-fill"></i>Trụ Sở Chính</p>
                    <p><i class="bi bi-telephone-fill"></i> Hotline Tour: 0915 436 699</p>
                    <p><i class="bi bi-telephone-fill"></i> Hotline VMB: 0915 436 699</p>
                    <p><i class="bi bi-envelope"></i> Email: sales.han@dolphingroup.vn</p>
                    <hr class="custom-hr">
                    <h5><i class="bi bi-buildings-fill"></i>Văn Phòng Điều Hành, Vé Máy Bay</h5>
                    <p>Địa Chỉ: Tầng 3, toà nhà Dolphin Building | 115-117 Trần Khát Chân, Hai Bà Trưng, Hà Nội</p>
                    <p><i class="bi bi-telephone-fill"></i>Tel: 0243 933 9717 / 18</p>
                    <p><i class="bi bi-telephone-fill"></i>Hotline tour: 0915 43 6699</p>
                    <p><i class="bi bi-telephone-fill"></i>Hotline VMB: 0944 88 5599</p>
                    <p><i class="bi bi-envelope"></i>Email: phongve.han@dolphingroup.vn</p>
                    <p>
                    <h5>Kết Nối</h5>
                    <a href="#" class="text-white"><i class="bi bi-facebook"></i></a>
                    <a href="#" class="text-white"><i class="bi bi-twitter"></i></a>
                    <a href="#" class="text-white"><i class="bi bi-linkedin"></i></a>
                    <a href="#" class="text-white"><i class="bi bi-instagram"></i></a>
                    </p>
                </div>

                <div class="col-md-3 ps-3">
                    <h5><i class="bi bi-buildings-fill"></i>CHI NHÁNH HỒ CHÍ MINH</h5>
                    <p>Địa chỉ: Số 96 Nguyễn Văn Thủ, P.Đakao, Q.1, TP.HCM</p>
                    <p><i class="bi bi-telephone-fill"></i>Tel: 028 3911 5656 / 5151</p>
                    <p><i class="bi bi-telephone-fill"></i>TOUR SGN: 088 623 3366</p>
                    <p><i class="bi bi-telephone-fill"></i>VMB SGN: 088 626 3355</p>
                    <p><i class="bi bi-envelope"></i>Email: sales.sgn@dolphingroup.vn</p>
                    <hr class="custom-hr">
                </div>

                <div class="col-md-3 ps-3">
                    <h5><i class="bi bi-menu-app"></i>MENU</h5>
                    <p> Trang chủ</p>
                    <p> Giới Thiệu</p>
                    <p> Tin Tức</p>
                    <p> Tuyển Dụng</p>
                    <p> Chăm Sóc Khách Hàng</p>
                    <p> Chính Sách Hoàn Hủy Dịch Vụ</p>
                    <p> Đặt Vé Máy Bay</p>
                    <p> Đại Lý</p>
                    <p> FAQ</p>
                    <h5><i class="bi bi-menu-app"></i>KHÁM PHÁ</h5>
                    <p> Cẩm Nang Du Lịch Châu Âu</p>
                </div>

                <div class="col-md-3 ps-3">
                    <h5><i class="bi bi-amd"></i>FANPAGE</h5>
                    <p>Địa chỉ: Số 96 Nguyễn Văn Thủ, P.Đakao, Q.1, TP.HCM</p>
                    <p><i class="bi bi-telephone-fill"></i>Tel: 028 3911 5656 / 5151</p>
                    <p><i class="bi bi-telephone-fill"></i>TOUR SGN: 088 623 3366</p>
                    <p><i class="bi bi-telephone-fill"></i>VMB SGN: 088 626 3355</p>
                    <p><i class="bi bi-envelope"></i>Email: sales.sgn@dolphingroup.vn</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap Scripts -->
    <script src="../views/js/script.js"></script>
    <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"
    ></script>
    <script type="module">
        import {Input, initMDB} from "mdb-ui-kit";

        document.addEventListener("DOMContentLoaded", () => {
            initMDB({Input});
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
            integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"></script>
</body>
</html>
