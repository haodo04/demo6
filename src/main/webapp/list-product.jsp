<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Sản Phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h1 class="text-center mb-4">Danh Sách Sản Phẩm</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <!-- Sản phẩm 1 -->
<%--        cú pháp giúp ta không cần  getAttribute--%>
        <c:forEach var="p" items="${data}">
        <div class="col">
            <div class="card h-100">
                <img src="${p.img}" class="card-img-top" alt="Sản Phẩm 1">
                <div class="card-body">
                    <h5 class="card-title">Mã: ${p.id}</h5>
                    <p class="card-text">Tên: ${p.title}</p>
                    <p class="text-danger">Giá: <f:formatNumber value="${p.price}"/> </p>
                    <a href="detail?pid=${p.id}"><button class="btn btn-primary">Chi tiết</button></a>
                </div>
            </div>
        </div>
        </c:forEach>

        <!-- Lập lại cho các sản phẩm khác -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 2">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP002</h5>
                    <p class="card-text">Tên: Sản Phẩm 2</p>
                    <p class="text-danger">Giá: 200,000 đ</p>
                </div>
            </div>
        </div>

        <!-- ... Tiếp tục cho 15 sản phẩm ... -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 3">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP003</h5>
                    <p class="card-text">Tên: Sản Phẩm 3</p>
                    <p class="text-danger">Giá: 300,000 đ</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 4">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP004</h5>
                    <p class="card-text">Tên: Sản Phẩm 4</p>
                    <p class="text-danger">Giá: 400,000 đ</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 5">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP005</h5>
                    <p class="card-text">Tên: Sản Phẩm 5</p>
                    <p class="text-danger">Giá: 500,000 đ</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 6">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP006</h5>
                    <p class="card-text">Tên: Sản Phẩm 6</p>
                    <p class="text-danger">Giá: 450,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 7">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP007</h5>
                    <p class="card-text">Tên: Sản Phẩm 7</p>
                    <p class="text-danger">Giá: 350,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 8">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP008</h5>
                    <p class="card-text">Tên: Sản Phẩm 8</p>
                    <p class="text-danger">Giá: 250,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 9">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP009</h5>
                    <p class="card-text">Tên: Sản Phẩm 9</p>
                    <p class="text-danger">Giá: 340,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 10">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP0010</h5>
                    <p class="card-text">Tên: Sản Phẩm 10</p>
                    <p class="text-danger">Giá: 360,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 11">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP0011</h5>
                    <p class="card-text">Tên: Sản Phẩm 11</p>
                    <p class="text-danger">Giá: 430,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 12">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP0012</h5>
                    <p class="card-text">Tên: Sản Phẩm 12</p>
                    <p class="text-danger">Giá: 300,000 đ</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 13">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP0013</h5>
                    <p class="card-text">Tên: Sản Phẩm 13</p>
                    <p class="text-danger">Giá: 300,000 đ</p>
                </div>
            </div>
        </div>


        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 14">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP0014</h5>
                    <p class="card-text">Tên: Sản Phẩm 14</p>
                    <p class="text-danger">Giá: 300,000 đ</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/200x150" class="card-img-top" alt="Sản Phẩm 15">
                <div class="card-body">
                    <h5 class="card-title">Mã: SP0015</h5>
                    <p class="card-text">Tên: Sản Phẩm 15</p>
                    <p class="text-danger">Giá: 300,000 đ</p>
                </div>
            </div>
        </div>
        <!-- Thêm 12 sản phẩm nữa -->
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

