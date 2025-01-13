<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="jakarta.tags.functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Admin</title>
    <link
            rel="icon"
            href=
                    "/../views/admin/css/logologin.jpg"
            type="image/x-icon"
    />
    <link href="/../views/admin/css/styles.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<style>
    .divider:after,
    .divider:before {
        content: "";
        flex: 1;
        height: 1px;
        background: #eee;
    }

    .h-custom {
        height: calc(100% - 73px);
    }

    @media (max-width: 450px) {
        .h-custom {
            height: 100%;
        }
    }

    /* Đảm bảo toàn bộ trang chiếm toàn bộ màn hình */
    body, html {
        height: 100%;
        margin: 0;
    }

    /* Căn giữa nội dung */
    .container {
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    /* Hộp đăng nhập */
    .col-md-8, .col-lg-6, .col-xl-4 {
        border: 1px solid #ccc; /* Màu viền xám nhạt */
        border-radius: 10px; /* Bo góc */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Bóng đổ nhẹ */
        background-color: #fff; /* Nền trắng */
        padding: 30px; /* Thêm padding vào trong hộp */
    }

    /* Tiêu đề */
    .lead {
        font-size: 18px;
        font-weight: bold;
        color: #1877F2; /* Màu giống Facebook */
        text-align: center;
    }

    /* Các nút đăng nhập với mạng xã hội */
    .btn-floating {
        font-size: 24px;
        padding: 10px;
        border-radius: 50%;
        display: inline-block;
        background-color: #1877F2; /* Màu nền Facebook */
        color: white;
    }

    .btn-floating i {
        font-size: 20px; /* Tăng cỡ icon */
    }

    .btn-floating:hover {
        background-color: #155D8A; /* Màu khi hover */
    }

    /* Các ô nhập liệu */
    .form-outline input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .form-outline input:focus {
        border-color: #1877F2; /* Đổi màu viền khi focus */
    }

    /* Nút đăng nhập */
    button[type="submit"] {
        width: 100%;
        padding: 12px;
        background-color: #1877F2;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
    }

    button[type="submit"]:hover {
        background-color: #155D8A;
    }

    /* Các liên kết dưới nút đăng nhập */
    .text-danger {
        font-size: 14px;
        color: red;
        margin-bottom: 10px;
    }

    .text-center {
        text-align: center;
    }

    .divider {
        border-top: 1px solid #ccc;
        width: 100%;
    }

    .divider p {
        background-color: white;
        width: auto;
        position: relative;
        top: -12px;
        padding: 0 10px;
        font-weight: bold;
    }

    /* Để các button nằm ngang và có khoảng cách */
    .d-flex .btn {
        margin: 0 10px;
    }

    /* Căn giữa form */
    .form-outline {
        text-align: left;
    }
</style>

<section class="vh-100">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-6 col-lg-6 col-xl-5 d-flex justify-content-end align-items-center" style="border: none; border-radius: 0; box-shadow: none;">
                <img src="/../views/admin/css/logologin.jpg"
                     class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1" style="margin-right: 250px; border: 1px solid #ccc; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
                <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                    <p class="lead fw-normal mb-0 me-3">Đăng nhập với</p>
                    <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="fab fa-google"></i>
                    </button>

                    <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="fab fa-facebook"></i>
                    </button>

                    <button type="button" class="btn btn-primary btn-floating mx-1">
                        <i class="fab fa-instagram"></i>
                    </button>
                </div>

                <div class="divider d-flex align-items-center my-4">
                    <p class="text-center fw-bold mx-3 mb-0">Hoặc</p>
                </div>
                <form:form modelAttribute="nv" action="/check-login-admin" method="post">
                    <!-- Email input -->
                    <div class="form-outline mb-4">
                        <form:input path="email" type="email" id="form3Example3" class="form-control form-control-lg"
                                    placeholder="Vui lòng nhập email" />
<%--                        <label class="form-label" for="form3Example3">Email</label>--%>
                    </div>

                    <!-- Password input -->
                    <div class="form-outline mb-3">
                        <form:input path="matKhau" type="password" id="form3Example4"
                                    class="form-control form-control-lg" placeholder="Mật khẩu"/>
<%--                        <label class="form-label" for="form3Example4">Mật khẩu</label>--%>
                    </div>

                    <div class="text-danger"> <!-- Display error message here -->
                            ${sessionScope.error}
                    </div>

                    <div class="text-center text-lg-start mt-4 pt-2">
                        <button type="submit" class="btn btn-primary btn-lg"
                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Đăng nhập
                        </button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <div class="d-flex flex-column flex-md-row text-center text-md-start justify-content-left py-2 px-2 px-xl-5">
    <!-- Copyright -->
        <div class="text-black mb-3 mb-md-0 fs-4 fw-bold">
            DATN_SD108_FA24
        </div>
        <!-- Copyright -->

        <!-- Right -->
<%--        <div>--%>
<%--            <a href="#!" class="text-black me-4">--%>
<%--                <i class="fab fa-google"></i>--%>
<%--            </a>--%>
<%--            <a href="#!" class="text-black me-4">--%>
<%--                <i class="fab fa-facebook"></i>--%>
<%--            </a>--%>
<%--            <a href="#!" class="text-black me-4">--%>
<%--                <i class="fab fa-instagram"></i>--%>
<%--            </a>--%>
<%--        </div>--%>
        <!-- Right -->
    </div>
</section>
<!-- Bootstrap core JS-->
<script src="/../js/bootstrap.min.js"></script>
<!-- Core theme JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
<!-- Bao gồm các tập lệnh Spring form và các tập lệnh khác -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>


</body>

</html>
