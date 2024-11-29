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

    .form-control:hover,
.form-control:focus {
    border-color: #2c3e50 !important; 
    box-shadow: 0 0 5px rgba(44, 62, 80, 0.5) !important;
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
                <div class="row g-4">
                    <div class="col-lg-4 text-start">
                        
                    </div>
                    <div class="col-lg-8 text-end">
                        <ul class="nav nav-pills d-inline-flex text-center mb-5">
                            <li class="nav-item">
                                <a class="d-flex m-2 py-2 bg-light rounded-pill active" data-bs-toggle="pill" href="/products">
                                   
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- <div class="row g-4 fruite">
                    <div class="col-12 col-md-4">
                        <div class="row g-4">
                            <div class="col-12">
                                <div class="mb-2"><b>Tác giả</b></div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="author-1" value="J.K. ROWLING">
                                    <label class="form-check-label" for="author-1">J.K. Rowling</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="author-2" value="J.R.R. TOLKIEN">
                                    <label class="form-check-label" for="author-2">J.R.R. Tolkien</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="author-3" value="GEORGE R.R. MARTIN">
                                    <label class="form-check-label" for="author-3">George R.R. Martin</label>
                                </div>
                                
                            </div>
                            <div class="col-12">
                                <div class="mb-2"><b>Thể loại</b></div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="category-1" value="FANTASY">
                                    <label class="form-check-label" for="category-1">Fantasy</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="category-2" value="SCIENCE-FICTION">
                                    <label class="form-check-label" for="category-2">Science Fiction</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="category-3" value="MYSTERY">
                                    <label class="form-check-label" for="category-3">Mystery</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="category-4" value="ROMANCE">
                                    <label class="form-check-label" for="category-4">Romance</label>
                                </div>
                                
                            </div>
                            <div class="col-12">
                                <div class="mb-2"><b>Giới hạn tuổi</b></div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="age-1" value="TỰ_DO">
                                    <label class="form-check-label" for="age-1">Tự do</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="age-2" value="DƯỚI-18">
                                    <label class="form-check-label" for="age-2">Dưới 18 tuổi</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="age-3" value="18-30">
                                    <label class="form-check-label" for="age-3">Từ 18 - 30 tuổi</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="age-4" value="30-50">
                                    <label class="form-check-label" for="age-4">Từ 30 - 50 tuổi</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="checkbox" id="age-5" value="TRÊN-50">
                                    <label class="form-check-label" for="age-5">Trên 50 tuổi</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mb-2"><b>Sắp xếp theo</b></div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="sort-1" value="gia-tang-dan" name="radio-sort">
                                    <label class="form-check-label" for="sort-1">Giá tăng dần</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="sort-2" value="gia-giam-dan" name="radio-sort">
                                    <label class="form-check-label" for="sort-2">Giá giảm dần</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" id="sort-3" value="khong-sap-xep" name="radio-sort">
                                    <label class="form-check-label" for="sort-3">Không sắp xếp</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button class="btn border-secondary rounded-pill px-4 py-3 text-primary text-uppercase mb-4">
                                    Lọc Sản Phẩm
                                </button>
                            </div>
                        </div>
                    </div>
                </div> -->
                


                <div class="col-12 col-md-12 text-center">
                        
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
                                    <div class="pagination d-flex justify-content-center mt-5">
                                        <li class="page-item">
                                            <a class="${1 eq currentPage ? 'disabled page-link' : 'page-link'}"
                                                href="/products?page=${currentPage - 1}" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <c:forEach begin="0" end="${totalPages - 1}" varStatus="loop">
                                            <li class="page-item">
                                                <a class="${(loop.index + 1) eq currentPage ? 'active page-link' : 'page-link'}"
                                                    href="/products?page=${loop.index + 1}">
                                                    ${loop.index + 1}
                                                </a>
                                            </li>
                                        </c:forEach>
                                        <li class="page-item">
                                            <a class="${totalPages eq currentPage ? 'disabled page-link' : 'page-link'}"
                                                href="/products?page=${currentPage + 1}" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
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
