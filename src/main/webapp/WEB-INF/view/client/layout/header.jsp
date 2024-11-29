<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Navbar start -->
<style>
    .primary-color {
    background-color: #2c3e50 !important;
}

.btn-primary {
    background-color: #2c3e50 !important;
    color: #FFF;
}

.nav-link-custom {
    text-transform: uppercase;
    font-weight: bold;
    color: #EBF7A1 !important;
    transition: all 300ms;
}
.nav-link-custom:hover {
    color: #aaff00 !important;
}

.total {
    color: gray !important;
}

.login-register-container {
        background-color: #f8f9fa; /* Màu nền nhẹ */
        padding: 10px; /* Khoảng cách bên trong */
        border-radius: 5px; /* Bo góc nhẹ */
    }
    .login-register-container a {
        font-size: 1.25rem; /* Kích thước chữ lớn hơn */
        margin-right: 15px; /* Khoảng cách giữa các liên kết */
        text-decoration: none; /* Bỏ gạch chân */
        color: #007bff; /* Màu xanh đậm */
    }
    .login-register-container a:hover {
        color: #0056b3; /* Màu xanh đậm hơn khi hover */
    }
</style>

<div class="pt-3 pb-3">
    <div class="header container d-flex flex-row justify-content-between align-items-center">
        <!-- Icon -->
        <div class="d-flex align-items-center">
            <a href="/" style="color: #2c3e50 !important;"><i class="bi bi-shop fs-1 me-2"></i></a>
            <p class="h3 mb-0">ChillShop</p>
        </div>

        <!-- Cục tìm kiếm -->
        <!-- <div class="col-6 mx-3">
            <c:if test="${not empty pageContext.request.userPrincipal}">
                <form action="/search" method="get">
                    <div class="input-group">
                        <input type="text" name="name" class="form-control" key="key" placeholder="Nhập tên sách" aria-label="Nhập tên sách"
                            aria-describedby="button-addon2">
                        <button class="btn btn-primary" id="button-addon2">Tìm kiếm</button>
                    </div>
                </form>
            </c:if>
        </div> -->

        <!-- Cục tài khoản -->
        <div class="d-flex flex-row gap-3">
            <c:if test="${not empty pageContext.request.userPrincipal}">
                <div class="d-flex flex-row gap-3">
                    <div class="d-flex flex-row align-items-center gap-2">
                        <div class="dropdown my-auto">
                            <div href="#" class="dropdown" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
                                aria-expanded="false">
                                <i class="bi bi-person-circle fs-2"></i>
                            </div>
                            <ul class="dropdown-menu dropdown-menu-end p-4" aria-labelledby="dropdownMenuLink">
                                <li class="d-flex align-items-center flex-column" style="min-width: 300px;">
                                    <img style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden;"
                                        src="/images/avatar/${sessionScope.avatar}" />
                                    <div class="text-center my-3">
                                        <c:out value="${sessionScope.fullName}" />
                                    </div>
                                </li>
                                <li><a class="dropdown-item" href="#">Quản lý tài khoản</a></li>
                                <li><a class="dropdown-item" href="/order-history">Lịch sử mua hàng</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li>
                                    <form method="post" action="/logout">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button class="dropdown-item">Đăng xuất</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <div>Tài khoản</div>
                    </div>
                    <div class="d-flex flex-row align-items-center gap-2">
                        <a href="/cart" style="text-decoration: none; color: inherit;"><i class="bi bi-bag-fill fs-2"></i></a>
                        <div>
                            <div>Giỏ hàng</div>
                            <div class="total">${sessionScope.sum}</div>
                        </div>
                    </div>
                </div>
            </c:if>

            <c:if test="${empty pageContext.request.userPrincipal}">
                <div class="d-flex align-items-center login-register-container">
                    <a href="/login" class="text-primary">Đăng nhập</a>
                    <a href="/register" class="text-primary">Đăng kí</a>
                </div>
            </c:if>
        </div>
    </div>
</div>

<!-- Cục nav -->
<nav class="navbar navbar-expand-lg navbar-light bg-light primary-color">
    <div class="container d-flex flex-row justify-content-start">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav gap-4">
                <li class="nav-item">
                    <a class="nav-link nav-link-custom" aria-current="page" href="/">Trang Chủ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-custom" aria-current="page" href="/products">Sản Phẩm</a>
                </li>
            </ul>
        </div>
    </div>
</nav>