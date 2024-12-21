<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "f" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .product-image {
            max-height: 400px;
            object-fit: cover;
        }
        .product-details {
            margin-top: 20px;
        }
        .price {
            font-size: 1.5rem;
            color: #28a745;
        }
    </style>
</head>
<body>

<div class="container py-5">
    <div class="row">
        <!-- Hình ảnh sản phẩm -->
        <div class="col-md-6">
            <img src="${p.img}" alt="Sản phẩm" class="img-fluid product-image">
        </div>
        <!-- Thông tin sản phẩm -->
        <div class="col-md-6">
            <h2 class="product-title">${p.title}</h2>
            <p class="text-muted">Mã sản phẩm: ${p.id}</p>
            <p class="price">Giá: <f:formatNumber value="${p.price}"/></p>

            <div class="d-flex justify-content-start">
                <button class="btn btn-success me-3">Thêm vào giỏ hàng</button>
                <button class="btn btn-primary">Mua ngay</button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

