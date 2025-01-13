<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-8 offset-2 mt-5">
    <div class="d-flex">
        <p class="d-flex">
        <div class="col-9">
            <p class="me-2 text-uppercase">Mã hoá đơn: ${hoaDon.ma} |
                <span class="text-uppercase ms-1">
                <c:if test="${hoaDon.trangThai == 0}">
                    <span class="text-secondary">Chờ thanh toán</span>
                </c:if>
                <c:if test="${hoaDon.trangThai == 1}">
                    <span class="text-success">Đã hoàn thành</span>
                </c:if>
                <c:if test="${hoaDon.trangThai == 2 && hoaDon.ngayThanhToan ==null}">
                    <span class="text-secondary">Chờ xác nhận</span>
                </c:if>
                 <c:if test="${hoaDon.trangThai == 2 && hoaDon.ngayThanhToan !=null}">
                     <span class="text-success">Đã thanh toán chuyển khoản</span>
                 </c:if>
                <c:if test="${hoaDon.trangThai == 4}">
                    <span class="text-success">Đã Xác Nhận / Đang giao</span>
                </c:if>
                <c:if test="${hoaDon.trangThai == 5 }">
                    <span class="text-danger">Đã huỷ</span>
                </c:if>
<%--                <c:if test="${hoaDon.trangThai == 10}">--%>
<%--                    <span class="text-secondary">Đã huỷ/Chờ hoàn tiền</span>--%>
<%--                </c:if>--%>
            </span>
            </p>
        </div>
        <div class="col-3">

        </div>
    </div>
    <br>
    <c:if test="${hoaDon.hinhThucThanhToan.ten == 'Chuyển khoản' }">
        <div class="row">
            <hr>
            <div class="col-9">
            </div>
            <div class="col-3">
                <c:if test="${hoaDon.ngayThanhToan == null && hoaDon.hinhThucThanhToan.ten == 'Chuyển khoản'}">
                    <div>
                        <form action="/submit-payment/${id}" method="post">
                            <c:choose>
                                <c:when test="${hoaDon.trangThai == 5 }">
<%--                                    || hoaDon.trangThai == 10--%>
                                    <button type="submit" class="btn btn-success col-12" disabled>Xác nhận thanh toán
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-success col-12">Xác nhận thanh toán</button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </c:if>
                <c:if test="${hoaDon.ngayThanhToan != null && hoaDon.hinhThucThanhToan.ten == 'Chuyển khoản'}">
                    <button class="btn btn-success col-12 mb-2" disabled>Đã thanh toán</button>
                </c:if>
            </div>
        </div>
    </c:if>

    <div class="mt-2 row">
        <hr>
        <div class="col-4 border-end">
            <p class="fw-bold text-uppercase">Địa chỉ nhận hàng</p>
            <p>Họ và tên : ${hoaDon.nguoiNhan}</p>
            <p>Số điện thoại : ${hoaDon.soDienThoai}</p>
            <p>Địa chỉ :${hoaDon.diaChi} , ${hoaDon.xaPhuong} , ${hoaDon.quanHuyen} , ${hoaDon.tinhThanhPho}</p>
        </div>
        <div class="col-4 border-end">
            <c:if test="${hoaDon.ngayTao != null}">
                <p>Ngày tạo: <span id="formattedDateNgayTao"></span>
                    <script>
                        var originalDate = "${hoaDon.ngayTao}";
                        var formattedDate = new Date(originalDate).toLocaleString();
                        document.getElementById("formattedDateNgayTao").textContent = formattedDate;
                    </script>
                </p>
            </c:if>
            <c:if test="${hoaDon.ngayThanhToan != null}">
                <p>Ngày thanh toán: <span id="formattedDateNgayThanhToan"></span>
                    <script>
                        var originalDate = "${hoaDon.ngayThanhToan}";
                        var formattedDate = new Date(originalDate).toLocaleString();
                        document.getElementById("formattedDateNgayThanhToan").textContent = formattedDate;
                    </script>
                </p>
            </c:if>
            <c:if test="${hoaDon.ngayVanChuyen != null}">
                <p>Ngày vận chuyển: <span id="formattedDateNgayVanChuyen"></span>
                    <script>
                        var originalDate = "${hoaDon.ngayVanChuyen}";
                        var formattedDate = new Date(originalDate).toLocaleString();
                        document.getElementById("formattedDateNgayVanChuyen").textContent = formattedDate;
                    </script>
                </p>
            </c:if>
            <c:if test="${hoaDon.ngayNhan != null}">
                <p>Ngày nhận: <span id="formattedDateNgayNhan"></span>
                    <script>
                        var originalDate = "${hoaDon.ngayNhan}";
                        var formattedDate = new Date(originalDate).toLocaleString();
                        document.getElementById("formattedDateNgayNhan").textContent = formattedDate;
                    </script>
                </p>
            </c:if>
        </div>
        <div class="col-4">
            <c:if test="${hoaDon.maVanChuyen != null}">
                <p class="text-uppercase">Đơn vị vận chuyển</p>
                <p>${hoaDon.maVanChuyen}</p>
                <p>${hoaDon.tenDonViVanChuyen}</p>
            </c:if>
        </div>
        <hr class="mt-3">
    </div>

    <div class="mt-4 mb-4">
        <table class="table text-center align-middle">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col" style="width: 150px;"><i class="fas fa-image"></i></th>
                <th scope="col">Sản phẩm</th>
                <th scope="col">Tổng</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listSanPhamTrongHoaDon}" var="sp" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>
                        <div id="carouselExampleSlidesOnly_${sp.idSanPham}"
                             class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
                            <div class="carousel-inner" style="width: 150px; height: 150px">
                                <c:forEach items="${listAnhSanPham}" var="anhSanPham" varStatus="status">
                                    <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
                                        <img src="${anhSanPham.duongDan}" class="d-block" id="custom-anh"
                                             style="width: 150px; height: 150px">
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </td>
                    <td>
                        <p>${sp.tenSanPham}</p>
                        <p>${sp.tenMauSac}/${sp.tenKichCo}/x${sp.soLuong}</p>
                    </td>
                    <td id="tongGia_${sp.id}_${sp.tenMauSac}_${sp.tenKichCo}">${sp.soLuong * sp.gia}</td>
                    <script>
                        var giaSanPhamElement = document.getElementById("tongGia_${sp.id}_${sp.tenMauSac}_${sp.tenKichCo}");
                        var giaSanPhamText = giaSanPhamElement.innerText;
                        var formattedGia = parseInt(giaSanPhamText.replace(/[^\d]/g, '')).toLocaleString('en-US');
                        giaSanPhamElement.innerText = formattedGia + " vnđ";
                    </script>
                </tr>
                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                <script>
                    $(document).ready(function () {
                        var idSanPham = '${sp.idSanPham}';
                        $.ajax({
                            url: '/get-anh-san-pham/' + idSanPham,
                            type: 'GET',
                            dataType: 'json',
                            success: function (data) {
                                // Xử lý phản hồi từ máy chủ và cập nhật danh sách ảnh
                                var listAnhSanPham = data;
                                var carouselInner = $('#carouselExampleSlidesOnly_${sp.idSanPham} .carousel-inner');
                                carouselInner.empty();

                                $.each(listAnhSanPham, function (index, anhSanPham) {
                                    var isActive = index === 0 ? 'active' : '';
                                    var carouselItem = '<div class="carousel-item ' + isActive + '">'
                                        + '<img src="' + anhSanPham.duongDan + '" class="d-block" id="custom-anh" style="width: 150px; height: 150px">'
                                        + '</div>';
                                    carouselInner.append(carouselItem);
                                });
                            },
                            error: function () {
                                console.log('Lỗi khi lấy danh sách ảnh sản phẩm');
                            }
                        });
                    });
                </script>
            </c:forEach>
            </tbody>
        </table>
        <div class="row">
            <div class="col-9 d-flex justify-content-end">Tổng tiền hàng</div>
            <div class="col-3">
                <p id="tongTien">${hoaDon.tongTien}</p>
            </div>
        </div>
        <hr>

        <div class="row">
            <div class="col-9 d-flex justify-content-end">Phí vận chuyển</div>
            <div class="col-3">
                <p id="phiVanChuyen">${hoaDon.phiVanChuyen}</p>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-9 d-flex justify-content-end">Phương thức Thanh toán</div>
            <div class="col-3">
                <c:if test="${hoaDon.hinhThucThanhToan.ten == 'Tiền mặt'}">
                    <span>Thanh toán khi nhận hàng</span>
                </c:if>
                <c:if test="${hoaDon.hinhThucThanhToan.ten == 'Chuyển khoản'}">
                    <span>Thanh toán bằng VNPay</span>
                </c:if>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-9 d-flex justify-content-end">Thanh Toán(Tính cả tiền ship)</div>
            <div class="col-3">
                <p>${hoaDon.thanhToan}</p>

            </div>

        </div>
    </div>
</div>