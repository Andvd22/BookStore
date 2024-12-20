<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="chillshop" />
                <meta name="author" content="" />
                <title>Manager Orders</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <style>
                    /* Global Color and Font Adjustments */
                    body {
                        font-family: 'Raleway', sans-serif;
                        background-color: #f4f6f9;
                    }
            
                    /* Header Styling */
                    .sb-nav-fixed .sb-topnav {
                        background-color: #1c2b36;
                    }
            
                    .sb-nav-fixed .sb-topnav h1 {
                        color: #fff;
                    }
            
                    /* Table Header */
                    table thead {
                        background-color: #008077;
                        color: #fff;
                    }
            
                    /* Buttons Styling */
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
            
                    /* Table Row Hover Effect */
                    table tbody tr:hover {
                        background-color: #f1f5f8;
                    }
            
                    
            
                    /* Breadcrumb */
                    .breadcrumb-item a {
                        color: #004080;
                    }
            
                    /* Card Styling */
                    .card {
                        border: none;
                        border-radius: 8px;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                    }
            
                    /* Table Text Adjustments */
                    table th, table td {
                        color: #333;
                        font-weight: 500;
                    }
            
                    
            
                    /* Link Hover Effects */
                    a:hover {
                        text-decoration: none;
                        color: #007bff;
                    }
                </style>
            </head>
            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Quản lý đơn hàng</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item"><a href="/admin">Bảng Điều Khiển</a></li>
                                    <li class="breadcrumb-item active">Đơn hàng</li>
                                </ol>
                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <div class="d-flex">
                                                <h3>Table Orders</h3>
                                            </div>
                                            <hr />
                                            <table class=" table table-bordered table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Total Price</th>
                                                        <th>User</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="order" items="${orders}">
                                                        <c:set var="totalPrice" value="0" />
            <c:forEach var="orderDetail" items="${order.orderDetails}">
                <c:set var="totalPrice" value="${totalPrice + (orderDetail.price * orderDetail.quantity)}" />
            </c:forEach>
                                                        <tr>
                                                            <th>${order.id}</th>
                                                            <td>
                                                                <fmt:formatNumber type="number"
                                                                    value="${totalPrice}" /> đ
                                                            </td>
                                                            <td>${order.user.fullName}</td>
                                                            <td>${order.status}</td>
                                                            <td>
                                                                <a href="/admin/order/${order.id}"
                                                                    class="btn btn-success">View</a>
                                                                <a href="/admin/order/update/${order.id}"
                                                                    class="btn btn-warning  mx-2">Update</a>
                                                                <a href="/admin/order/delete/${order.id}"
                                                                    class="btn btn-danger">Delete</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>                                                 
                                                </tbody>
                                            </table>
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination justify-content-center">
                                                    <li class="page-item">
                                                        <a class="${(1) eq currentPage ? 'disabled page-link' : 'page-link'}" href="/admin/order?page=${currentPage-1}" aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>

                                                    <c:set var="validTotalPages" value="${totalPages}" />
<c:if test="${totalPages <= 1}">
    <c:set var="validTotalPages" value="1" />
</c:if>
            
                                                   <c:forEach begin="0" end = "${validTotalPages-1}" varStatus="loop">
                                                    <li class="page-item"><a class="${(loop.index + 1) eq currentPage ? 'active page-link' : 'page-link'}"
                                                            href="/admin/order?page=${loop.index +1}">${loop.index +1}</a></li>
                                                    </c:forEach>
            
                                                        <a class="${(validTotalPages) eq currentPage ? 'disabled page-link' : 'page-link'}" href="/admin/order?page=${currentPage+1}" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>