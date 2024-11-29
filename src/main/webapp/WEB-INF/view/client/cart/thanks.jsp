<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Giỏ hàng - Bookstore</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
            rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="/client/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="/client/css/style.css" rel="stylesheet">
        <link crossorigin="anonymous" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" rel="stylesheet"/>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&amp;display=swap" rel="stylesheet"/>
  <style>
   body {
            font-family: 'Roboto', sans-serif;
            text-align: center;
            background-color: #ffffff;
            color: #1a1a1a;
        }
        .logo {
            margin-top: 20px;
        }
        .logo img {
            width: 50px;
        }
        .success-icon {
            font-size: 100px;
            color: #4CAF50;
        }
        .order-success {
            font-size: 36px;
            font-weight: 700;
            color: #1a1a1a;
        }
        .order-message {
            font-size: 18px;
            color: #1a1a1a;
        }
        .btn-custom {
            border: 2px solid #1a1a1a;
            color: #1a1a1a;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 10px;
            text-decoration: none;
        }
        .btn-custom:hover {
            background-color: #1a1a1a;
            color: #ffffff;
        }
        .social-icons {
            margin-top: 20px;
        }
        .social-icons a {
            color: #1a1a1a;
            font-size: 24px;
            margin: 0 10px;
            text-decoration: none;
        }
  </style>
    </head>

<body>
    <jsp:include page="../layout/header.jsp" />


                <div class="container" style="margin-top: 100px;">
                    <div class="row ">
                        <div class="col-12">
                            <div style="background-color: #f4f4f9;;" role="alert">
                                <div class="logo">
                                    <img alt="Company Logo" height="50" src="https://storage.googleapis.com/a1aa/image/stUdWjycY1KEJBtVCQEAikypck2h7lcXCweCT6tEN4NtF56JA.jpg" width="50"/>
                                    <h1>
                                     Web1trang
                                    </h1>
                                   </div>
                                   <div class="container mt-5">
                                    <div class="row justify-content-center">
                                     <div class="col-md-6">
                                      <i class="fas fa-box-open success-icon">
                                      </i>
                                      <h2 class="order-success">
                                       Đặt hàng thành công!
                                      </h2>
                                      <p class="order-message">
                                       <i class="fas fa-bell" style="color: #FFA500;">
                                       </i>
                                       Cảm ơn bạn đã đặt hàng, bộ phận chăm sóc khách hàng của chúng tôi sẽ liên hệ với bạn trong vòng 24h để xác nhận, hãy để ý điện thoại bạn nhé!
                                      </p>
                                      <a class="btn-custom" href="#">
                                       Quay về trang chủ
                                       <i class="fas fa-arrow-right">
                                       </i>
                                      </a>
                                      <a class="btn-custom" href="#">
                                       Xem sản phẩm khác
                                       <i class="fas fa-arrow-right">
                                       </i>
                                      </a>
                                     </div>
                                    </div>
                                    <div class="social-icons">
                                     <p>
                                      Theo dõi chúng tôi trên:
                                     </p>
                                     <a href="#">
                                      <i class="fab fa-facebook-f">
                                      </i>
                                     </a>
                                     <a href="#">
                                      <i class="fab fa-youtube">
                                      </i>
                                     </a>
                                     <a href="#">
                                      <i class="fab fa-tiktok">
                                      </i>
                                     </a>
                                     <a href="#">
                                      <i class="fab fa-instagram">
                                      </i>
                                     </a>
                                    </div>
                                   </div>
                            </div>
                        </div>
                    </div>
                </div>

                <jsp:include page="../layout/footer.jsp" />
                
                <!-- Back to Top -->
                <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                    class="fa fa-arrow-up"></i></a>


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