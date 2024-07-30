<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/12/2024
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    body {
        background: url('img/loginbackground.jpg') no-repeat;
    }
    .body {
        background-color: #f8f9fa;
    }
    .auth-form {
        max-width: 400px;
        margin: 50px auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>
<body class="container">
<div class="row justify-content-center">
    <h1 class="text-center mt-3 text-danger">Login</h1>
    <form class="col-sm-5" action="/runrun" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Username</label>
            <input type="text" name="username" class="form-control" id="exampleInputEmail1"
                   aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1">
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" name="remember" value="true" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Remember</label>
        </div>

        <button type="submit" class="btn btn-primary">Login</button>
        <a href="/view" class="btn btn-primary">Trở Về Trang Chủ</a>
    </form>
</div>
<h3 class="text-danger">${Messagelog}</h3>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
