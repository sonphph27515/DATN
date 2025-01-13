<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="mt-5" style="height: 400px">
    <h3 style="text-align: center; margin-bottom: 40px">Tra cứu hóa đơn</h3>
    <div  style="display: flex; justify-content: flex-end; ">
        <div style="width: 40% ; margin-right: 450px">
            <form action="/tra-cuu" method="get">
            <div class="input-group mb-3" >
                <input name="maHd" type="text" class="form-control" placeholder="Nhập mã hóa đơn" aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Tìm Kiếm</button>
            </div>
            </form>
        </div>
    </div>
    <c:if test="${not empty maHd}">
        <div style="color: red; text-align: center; margin-top: 40px">
            Không tìm thấy hóa đơn với mã đã nhập.
        </div>
    </c:if>
</div>
