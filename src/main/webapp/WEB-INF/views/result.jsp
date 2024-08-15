<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Invoice</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .outside td, .outside th {
            white-space: nowrap; /* Ngăn ngừa xuống hàng */
        }
        .table td.quantity {
            text-align: center; /* Căn giữa nội dung cột số lượng */
        }
        .modal-content {
            padding: 20px;
        }
        .modal-body {
            overflow-x: auto;
        }
        .table th, .table td {
            text-align: left;
        }
        .pr {
            width: 30%;
        }
        .pt {
            width: 15%;
        }
    </style>
</head>
<body>
<div class="outside container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <table class="table table-striped">
                <thead class="table-dark">
                <tr>
                    <th>Id</th>
                    <th>Ảnh</th>
                    <th>Tên</th>
                    <th>Số Lượng</th>
                    <th>Giá</th>
                    <th>Chức năng</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${mycart}">
                    <tr>
                        <td>${item.id}</td>
                        <td>
                            <img style="width: 50px;height: 50px" src="/img/${item.product.img}">
                        </td>
                        <td>${item.product.content}</td>
                        <td>${item.qty}</td>
                        <td><fmt:formatNumber value="${item.product.price * item.qty}" type="currency"
                                              pattern="#,###,### VNĐ"/></td>
                        <td><a href="/dropitem/${item.id}" class="btn btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?')">Xóa</a></td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="d-flex justify-content-end">
                <div class="me-3">
                    <strong>Tổng Tiền:</strong> <fmt:formatNumber value="${totalprice}" type="currency"
                                                                  pattern="#,###,### VNĐ"/>
                </div>
                <a href="/clear" class="btn btn-warning me-2">Xóa Hết Sản Phẩm</a>
                <a href="#" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#invoiceModal">Thanh Toán</a>
                <a class="btn btn-warning" href="/view">Mua Thêm</a>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="invoiceModal" tabindex="-1" aria-labelledby="invoiceModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="invoiceModalLabel">Hóa Đơn</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Tên Tour</th>
                        <th class="pt">Số Lượng</th>
                        <th class="pr">Giá</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="item" items="${mycart}">
                        <tr>
                            <td>${item.product.content}</td>
                            <td class="quantity">${item.qty}</td>
                            <td><fmt:formatNumber value="${item.product.price * item.qty}" type="currency"
                                                  pattern="#,###,### VNĐ"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="invoice">
                    <div class="row">
                        <div class="col-6 text-end">
                            <strong>Tổng Tiền:</strong>
                        </div>
                        <div class="col-6">
                            <strong><fmt:formatNumber value="${totalprice}" type="currency" pattern="#,###,### VNĐ"/></strong>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-end">
                            <small><strong>Ngày Mua: ${now}</strong></small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                <a href="/confirm-payment" class="btn btn-primary">Xác Nhận Thanh Toán</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
