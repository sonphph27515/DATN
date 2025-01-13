package com.example.websitebanquanao.infrastructures.responses;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SanPhamDetailResponse {
    private UUID id;
    private Integer idLoai;
    private Integer idThuongHieu;
    private Integer idChatLieu;
    private String ten;
    private Date ngayTao;
    private String anh;
    private String tenLoai;
    private String tenThuongHieu;
    private String tenChatLieu;
    private Integer trang_thai;

    private List<AnhSanPhamResponse> anhSanPhams;

}
