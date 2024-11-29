<%@page contentType="text/html" pageEncoding="UTF-8" %>
<style>
    /* Tư Vấn Viên Button Styling */
    .btn-advisor {
        background-color: #2C3E50;
        color: #fff;
        padding: 10px 20px;
        font-size: 1.1em;
        border-radius: 50px;
        transition: all 0.3s ease;
        position: relative;
        text-decoration: none;
    }

    .btn-advisor:hover {
        background-color: #34495E;
        box-shadow: 0 10px 20px rgba(44, 62, 80, 0.6);
        transform: translateY(-3px);
    }

    .btn-advisor::after {
        content: 'Nhấn để tìm hiểu thêm!';
        position: absolute;
        top: -30px;
        right: 10px;
        background-color: #83c341;
        color: #fff;
        padding: 5px 10px;
        font-size: 0.8em;
        border-radius: 5px;
        opacity: 0;
        transition: opacity 0.3s ease;
    }

    .btn-advisor:hover::after {
        opacity: 1;
    }

    /* Liên Hệ Ngay Button Styling */
    .btn-contact-now {
        display: inline-block;
        background: linear-gradient(90deg, #8BC34A, #2C3E50);
        color: #fff;
        padding: 12px 35px;
        font-size: 1.1em;
        border-radius: 25px;
        transition: all 0.3s ease;
        text-decoration: none;
        box-shadow: 0 5px 15px rgba(44, 62, 80, 0.4);
        animation: pulse 1.5s infinite;
    }

    .btn-contact-now:hover {
        background: linear-gradient(90deg, #2C3E50, #8BC34A);
        transform: scale(1.05);
        box-shadow: 0 8px 20px rgba(44, 62, 80, 0.6);
    }

    /* Pulse Animation for Contact Now Button */
    @keyframes pulse {
        0% { box-shadow: 0 0 8px rgba(44, 62, 80, 0.4); }
        50% { box-shadow: 0 0 20px rgba(44, 62, 80, 0.8); }
        100% { box-shadow: 0 0 8px rgba(44, 62, 80, 0.4); }
    }
</style>


<!-- About Section Start -->
<div class="container-fluid py-5" style="background-color: #f2f4f7;">
    <div class="container py-5">
        <div class="row g-5 align-items-center">
            <div class="col-lg-6">
                <h2 class="mb-3" style="color: #8A6D4B;">Giới Thiệu Về Chúng Tôi</h2>
                <p style="color: #5B7F72;">
                    Tại ChillShop, chúng tôi mang đến cho bạn một kho tàng tri thức với hàng ngàn cuốn sách, truyện từ mọi lĩnh vực và thể loại. Chúng tôi tin rằng sách không chỉ là một nguồn kiến thức mà còn là cầu nối giúp con người tìm thấy niềm vui và sự thấu hiểu sâu sắc.
                </p>
                <p style="color: #5B7F72;">
                    Với sứ mệnh phát triển văn hóa đọc và nâng cao tri thức cộng đồng, ChillShop cam kết cung cấp các tựa sách, truyện chất lượng cao, cập nhật liên tục và đáp ứng nhu cầu của tất cả độc giả.
                </p>
                <!-- <a href="#" class="btn rounded-pill px-4" style="background-color: #2C3E50; color: white;">Liên hệ tư vấn viên của chúng tôi để biết thêm chi tiết</a> -->
                 <!-- Tư Vấn Viên Button with Link to "Liên hệ ngay" -->
                <a href="https://www.facebook.com/profile.php?id=100024168164454" class="btn-advisor" target="_blank">Để biết thêm chi tiết, tư vấn viên của chúng tôi sẽ hỗ trợ bạn</a> <!-- Linking down to the next button -->
                <br><br>
                <!-- Liên Hệ Ngay Button -->
                <a id="contact-now" href="https://m.me/100024168164454" class="btn-contact-now" target="_blank">Liên hệ ngay</a> <!-- Contact Now Button -->
            </div>
            <div class="col-lg-6 text-center">
                <img src="/client/img/about-image.jpg" alt="About Us" class="img-fluid rounded" style="max-width: 80%;">
            </div>
        </div>
    </div>
</div>
<!-- About Section End -->

<!-- Why Choose Us Section Start -->
<div class="container-fluid py-5" style="background-color: #f8f9fa;">
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="section-title mb-3" style="color: #8A6D4B;">Lý Do Chọn Chúng Tôi</h2>
            <p style="color: #5B7F72;">ChillShop không chỉ đơn thuần là một cửa hàng truyện mà còn là một nơi kết nối tri thức và con người.</p>
        </div>
        <div class="row g-4">
            <div class="col-md-6 col-lg-3">
                <div class="why-choose-us-item text-center rounded p-4 bg-white shadow-sm">
                    <div class="icon mb-3">
                        <i class="fas fa-book fa-3x" style="color: #8A6D4B;"></i>
                    </div>
                    <h5 style="color: #8A6D4B;">Kho Truyện Phong Phú</h5>
                    <p class="text-muted mb-0" style="color: #5B7F72;">Hơn 10,000 tựa sách từ mọi thể loại và lĩnh vực.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="why-choose-us-item text-center rounded p-4 bg-white shadow-sm">
                    <div class="icon mb-3">
                        <i class="fas fa-truck fa-3x" style="color: #8A6D4B;"></i>
                    </div>
                    <h5 style="color: #8A6D4B;">Giao Hàng Nhanh</h5>
                    <p class="text-muted mb-0" style="color: #5B7F72;">Giao hàng miễn phí cho đơn hàng từ 300K, nhận sách trong 24h.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="why-choose-us-item text-center rounded p-4 bg-white shadow-sm">
                    <div class="icon mb-3">
                        <i class="fas fa-shield-alt fa-3x" style="color: #8A6D4B;"></i>
                    </div>
                    <h5 style="color: #8A6D4B;">Thanh Toán An Toàn</h5>
                    <p class="text-muted mb-0" style="color: #5B7F72;">Bảo mật thông tin, hỗ trợ 1 phương thức thanh toán.</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="why-choose-us-item text-center rounded p-4 bg-white shadow-sm">
                    <div class="icon mb-3">
                        <i class="fas fa-thumbs-up fa-3x" style="color: #8A6D4B;"></i>
                    </div>
                    <h5 style="color: #8A6D4B;">Uy Tín Và Chất Lượng</h5>
                    <p class="text-muted mb-0" style="color: #5B7F72;">Truyện chính hãng 100% từ các nhà xuất bản uy tín.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Why Choose Us Section End -->
