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
</head>

<body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp"/>
    <div id="layoutSidenav">
        <jsp:include page="../layout/sidebar.jsp"/>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Manage Products</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                        <li class="breadcrumb-item active">Products</li>
                    </ol>
                    <div class="container mt-5">
                      <div class="row">
                          <div class="col-12 mx-auto">
                              <h3>Product detail - ID: ${id}</h3>
                              <hr />
                              <div class="card" style="width: 60%;">
                                  <div class="card-header">
                                    Product Information
                                  </div>
                                  <img src="/images/product/${product.coverImage}" alt="Cover Image" style="max-width:100%; height:auto;" />
                                  <ul class="list-group list-group-flush">
                                    <li class="list-group-item">ID: ${id}</li>
                                    <li class="list-group-item">Title: ${product.title}</li>
                                    <li class="list-group-item">Author: ${product.author}</li>
                                    <li class="list-group-item">Publisher: ${product.publisher}</li>
                                    <li class="list-group-item">Genre: ${product.genre}</li>
                                    <li class="list-group-item">Price: <fmt:formatNumber type="number" value="${product.price}"/> đ</li>
                                    <li class="list-group-item">Quantity: ${product.quantity}</li>
                                    <li class="list-group-item">Sold: ${product.sold}</li>
                                    <li class="list-group-item">Description: ${product.description}</li>
                                  </ul>
                              </div>
                              <a href="/admin/product" class="btn btn-success mt-3">Back</a>  
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
