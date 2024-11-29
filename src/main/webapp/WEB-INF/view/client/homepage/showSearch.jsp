<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Thế Giới Sách</title>
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/client/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/client/css/style.css" rel="stylesheet">

    <style>
.page-link.active,
        .page-link:hover {
    background-color: #2c3e50 !important; /* Dark blue color */
    color: #FFF !important; /* White text */
}
    .primary-color {
    background-color: #2c3e50 !important;
}

.btn-primary{
    background-color: #2c3e50 !important;
    color: #FFF;
}

.text-primary {
    color: #2c3e50 !important;
}

        
    .fixed-size {
        width: 100%;                
        height: 450px;              
        object-fit: cover;        
        object-position: center;    
        border-radius: 10px;       
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); 
        background-color: #ffffff;  
    }


    .fruite-item {
        border: 1px solid #e0e0e0;
        border-radius: 10px;
        overflow: hidden;
        transition: transform 0.2s ease-in-out;
    }

    
    .fruite-item:hover {
        transform: translateY(-5px);
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    }
</style>

    </style>
</head>
<body>

    <!-- Spinner Start -->
    <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <jsp:include page="../layout/headerProduct.jsp"/>

    <!-- Modal Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content rounded-0">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tìm kiếm sách</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center">
                    <div class="input-group w-75 mx-auto d-flex">
                        <input type="search" class="form-control p-3" placeholder="Nhập tên sách, tác giả, thể loại..." aria-describedby="search-icon-1">
                        <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Search End -->

    <!-- Sách Nổi Bật Start -->
    <div class="container-fluid book-highlight py-5">
        <div class="container py-5">
            <div class="tab-class text-center">
                
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-lg-12">
                                <div class="row g-4">
                                    <c:forEach var="product" items="${products}">
                                        <div class="col-md-6 col-lg-4 col-xl-3">
                                            <div class="rounded position-relative fruite-item">
                                                <div class="fruite-img">
                                                    <img src="/images/product/${product.coverImage}" class="img-fluid w-100 rounded-top fixed-size" alt="">
                                                </div>
                                               
                                                <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                    <h4 style="font-size: 15px;"><a href="/product/${product.id}" style="color: #2c3e50 !important;">${product.title}</a></h4>
                                                    <p style="font-size: 13px;">${product.genre}</p>
                                                    <p style="font-size: 13px;">${product.author}</p>
                                                    <div class="d-flex flex-lg-wrap justify-content-center flex-column">
                                                        <p style="font-size: 15px; text-align: center; width: 100%;" class="text-dark fw-bold mb-3">
                                                            <fmt:formatNumber type="number" value="${product.price}"/> đ
                                                        </p>
                                                        <form action="/add-product-to-cart/${product.id}" method="post">
                                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                                            <button class="btn border border-secondary rounded-pill px-3 text-primary">
                                                                <i class="fa fa-shopping-bag me-2 text-primary">

                                                                </i> Add to cart
                                                            </button>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>
                                    </c:forEach>
                                    
                                
                            </div>
                        </div>
                    </div>
                </div>      
            </div>
        </div>
    </div>
    <!-- Sách Nổi Bật End-->
    <jsp:include page="../layout/footer.jsp"/>

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/client/lib/easing/easing.min.js"></script>
    <script src="/client/lib/waypoints/waypoints.min.js"></script>
    <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
    <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/client/js/main.js"></script>
</body>
</html>
