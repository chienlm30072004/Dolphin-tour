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

    <script src="js/jquery.min.js"></script>

    <style>
        <%@include file="css/damn.css"%>
        header {
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
        .menucss{
            margin-top: 0% !important;
        }
        .fromuser{
            margin-top: 230px !important;
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
                        <li><a class="dropdown-item" href="#"><i class="bi bi-megaphone-fill"></i>Về Chúng
                            Tôi</a>
                        </li>
                        <li><a class="dropdown-item" href="#"><i class="bi bi-buildings-fill"></i>Thông Tin Công Ty</a>
                        </li>
                        <li><a class="dropdown-item" href="#"><i class="bi bi-image"></i>Ảnh & Video Đoàn</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-warning" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false"><i class="bi bi-list-task"></i>
                        TIN TỨC
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#"><i class="bi bi-book-fill"></i>CẨM NANG DU LỊCH</a></li>
                        <li><a class="dropdown-item" href="#"><i class="bi bi-amazon"></i>TIN TỨC</a></li>
                    </ul>
                </li>
                <%if (session.getAttribute("accadm") != null) {%>
                <li class="nav-item ">
                    <a class="nav-link text-warning">Xin chao: ${accadm.fullname}</a>
                </li>
                <li class="nav-item ">
                    <a href="/logoutok1" class="nav-link text-warning">Log out</a>
                </li>
                <%} else {%>
                <li class="nav-item ">
                    <a class="nav-link text-warning" href="/login"><i class="fas fa-user"></i> Login</a>
                </li>
                <li class="nav-item ">
                    <a href="/logoutok1" class="nav-link text-warning">Log out</a>
                </li>

                <%--                <li class="nav-item">--%>
                <%--                    <a class="nav-link text-warning" href="register">Register</a>--%>
                <%--                </li>--%>
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
<div class="container fromuser">
    <form action="/create" method="post">
        <div class="col-md-6 mb-3">
            <label for="id" class="form-label">Id:</label>
            <input type="text" id="id" name="id" class="form-control" value="${id.id}">
        </div>
        <div class="col-md-6 mb-3">
            <label for="fullname" class="form-label">Họ và tên:</label>
            <input type="text" id="fullname" name="fullname" class="form-control" value="${id.fullname}">
        </div>
        <div class="col-md-6 mb-3">
            <label for="username" class="form-label">Tài khoản:</label>
            <input type="text" id="username" name="username" class="form-control" value="${id.username}">
        </div>
        <div class="col-md-6 mb-3">
            <label for="password" class="form-label">Mật khẩu:</label>
            <input type="password" id="password" name="password" class="form-control" value="${id.password}">
        </div>
        <div class="col-md-6 mb-3">
            <label for="quyen" class="form-label">Quyền:</label>
            <select id="quyen" name="quyen">
                <option value="admin" ${id.quyen == 'admin' ? 'selected' : ''}>Quản trị viên</option>
                <option value="user" ${id.quyen == 'user' ? 'selected' : ''}>Người dùng</option>
            </select>
        </div>
        <br>
        <button type="submit" class="btn btn-danger">Create</button>
        <button class="btn btn-danger" formaction="/update">Update</button>
        <a class="btn btn-danger" href="/reset">Reset</a>

        <h1>Danh Sách Người Dùng</h1>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>ID</th>
                <th>Họ Tên</th>
                <th>Tài Khoản</th>
                <th>Mật Khẩu</th>
                <th>Quyền</th>
                <th>Chức năng</th>
            </tr>
            <c:forEach var="lolang" items="${acc}">
                <tr>
                    <td>${lolang.id}</td>
                    <td>${lolang.fullname}</td>
                    <td>${lolang.username}</td>
                    <td>${lolang.password}</td>
                    <td>${lolang.quyen ? "adm" : "user"}</td>
                    <td><a class="btn btn-danger me-2" href="/edit/${lolang.id}">Edit</a>
                        <a class="btn btn-danger" href="/delete/${lolang.id}">Delete</a></td>
                </tr>
            </c:forEach>
            </thead>
        </table>
    </form>
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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"></script>
</body>
</html>
