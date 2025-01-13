package com.example.websitebanquanao.infrastructures.filters;

import com.example.websitebanquanao.infrastructures.responses.KhachHangResponse;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Optional;
import java.util.UUID;

public class UserFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        HttpSession session = httpRequest.getSession();
        KhachHangResponse khachHang = Optional.ofNullable((KhachHangResponse) session.getAttribute("khachHang"))
                .orElse(KhachHangResponse.builder().id(UUID.fromString("00000000-0000-0000-0000-000000000000")).build());

        if (httpRequest.getRequestURI().equals(httpRequest.getContextPath() + "/dang-nhap")) {
            chain.doFilter(request, response);
        } else if (khachHang == null) {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/dang-nhap");
        } else {
            chain.doFilter(request, response);
        }
    }
}
