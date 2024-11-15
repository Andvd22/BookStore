<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Dự án bookshop" />
    <meta name="author" content="bookshop" />
    <title>Dashboard - bookshop</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>

    <style>
        /* Table and Button Styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
        }

        h1, h3 {
            color: #1c2b36;
        }

        /* Breadcrumb Link Color */
        .breadcrumb-item a {
            color: #004080;
            text-decoration: none;
        }

        .breadcrumb-item a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Button Styling */
        .btn-primary {
            background-color: #004080;
            border-color: #004080;
            color: #fff;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-warning {
            background-color: #ffca28;
            border-color: #ffca28;
            color: #333;
        }

        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }

        /* Table Styling */
        .table thead {
            background-color: #008077;
            color: #fff;
        }

        table tbody tr:hover {
            background-color: #f1f5f8;
        }

        .table th, .table td {
            color: #333;
            font-weight: 500;
        }

    

        /* Border Radius for Buttons */
        .btn {
            border-radius: 5px;
        }
    </style>
</head>

<body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp"/>
    <div id="layoutSidenav">
        <jsp:include page="../layout/sidebar.jsp"/>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Quản Lý Sản Phẩm</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="/admin">Bảng Điều Khiển</a></li>
                        <li class="breadcrumb-item active">Sản Phẩm</li>
                    </ol>
                    <div class="mt-5">
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <div class="d-flex justify-content-between">
                                    <h3>Danh Sách Sản Phẩm</h3>
                                    <a href="/admin/product/create" class="btn btn-primary">Thêm Sản Phẩm</a>
                                </div>
                                <hr />
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Title</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Publisher</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="product" items="${products}">
                                            <tr>
                                                <th>${product.id}</th>
                                                <td>${product.title}</td> 
                                                <td><fmt:formatNumber type="number" value="${product.price}"/> đ</td>
                                                <td>${product.publisher}</td> 
                                                <td>
                                                    <a href="/admin/product/${product.id}" class="btn btn-success">Xem</a>
                                                    <a href="/admin/product/update/${product.id}" class="btn btn-warning">Cập Nhật</a>
                                                    <a href="/admin/product/delete/${product.id}" class="btn btn-danger">Xóa</a>
                                                </td>
                                            </tr>
                                        </c:forEach>                     
                                    </tbody> 
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <jsp:include page="../layout/footer.jsp"/>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>
