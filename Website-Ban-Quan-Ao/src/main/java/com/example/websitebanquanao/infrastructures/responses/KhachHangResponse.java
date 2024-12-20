package com.example.websitebanquanao.infrastructures.responses;

import lombok.*;

import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class KhachHangResponse {
    private UUID id;
    private String hoVaTen;
    private String soDienThoai;
    private String email;
    private String diaChi;
    private String xaPhuong;
    private String quanHuyen;
    private String tinhThanhPho;
    private Integer trangThai;
}
