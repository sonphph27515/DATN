package com.example.websitebanquanao.services;


import com.example.websitebanquanao.entities.KichCo;
import com.example.websitebanquanao.entities.MauSac;
import com.example.websitebanquanao.entities.SanPham;
import com.example.websitebanquanao.entities.SanPhamChiTiet;
import com.example.websitebanquanao.infrastructures.requests.SanPhamChiTietRequest;
import com.example.websitebanquanao.infrastructures.responses.SanPhamChiTietResponse;
import com.example.websitebanquanao.repositories.SanPhamChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class SanPhamChiTietService {
    @Autowired
    private SanPhamChiTietRepository sanPhamChiTietRepository;

    // admin
    public List<SanPhamChiTietResponse> getAll() {
        return sanPhamChiTietRepository.getAll();
    }

    public Page<SanPhamChiTietResponse> getPage(int page, int pageSize) {
        Pageable pageable = PageRequest.of(page - 1, pageSize);
        return sanPhamChiTietRepository.getPage(pageable);
    }

    public List<SanPhamChiTietResponse> getlisttam() {
        return sanPhamChiTietRepository.Getlisttam();
    }
    // mã sp tự tăng :
    public String maSPCount() {
        String code = "";
        List<SanPhamChiTiet> list = sanPhamChiTietRepository.findAll();
        if (list.isEmpty()) {
            code = "SP0001";
        } else {
            int max = 0;
            for (SanPhamChiTiet sp : list) {
                String ma = sp.getMaSanPham();
                if (ma.length() >= 4) {
                    int so = Integer.parseInt(ma.substring(2));
                    if (so > max) {
                        max = so;
                    }
                }
            }
            max++;
            if (max < 10) {
                code = "SP000" + max;
            } else if (max < 100) {
                code = "SP00" + max;
            } else if (max < 1000) {
                code = "SP0" + max;
            } else {
                code = "SP" + max;
            }
        }
        return code;
    }

    public boolean isDuplicate(UUID idSanPham, Integer idMauSac, Integer idKichCo) {
        return sanPhamChiTietRepository.checkTrung(idSanPham, idMauSac, idKichCo);
    }

    public Boolean add(SanPhamChiTietRequest sanPhamChiTietRequest) {
        List<Integer> listIdMauSac = sanPhamChiTietRequest.getIdMauSac();
        List<Integer> listIdKichCo = sanPhamChiTietRequest.getIdKichCo();

        SanPham sanPham = new SanPham();
        sanPham.setId(sanPhamChiTietRequest.getIdSanPham());

        for (Integer idMauSac : listIdMauSac) {
            for (Integer idKichCo : listIdKichCo) {
                if (isDuplicate(sanPham.getId(), idMauSac, idKichCo)) {
                    System.out.println("SanPhamChiTietService.add: Duplicate product with same ID, size, and color.");
                    return false;
                }

                MauSac mauSac = new MauSac();
                mauSac.setId(idMauSac);

                KichCo kichCo = new KichCo();
                kichCo.setId(idKichCo);

                SanPhamChiTiet sanPhamChiTiet = new SanPhamChiTiet();
                sanPhamChiTiet.setMaSanPham(maSPCount());
                sanPhamChiTiet.setGia(sanPhamChiTietRequest.getGia());
                sanPhamChiTiet.setSoLuong(sanPhamChiTietRequest.getSoLuong());
                sanPhamChiTiet.setMoTa(sanPhamChiTietRequest.getMoTa());
                sanPhamChiTiet.setTrangThai(sanPhamChiTietRequest.getTrangThai());
                sanPhamChiTiet.setIdSanPham(sanPham);
                sanPhamChiTiet.setIdMauSac(mauSac);
                sanPhamChiTiet.setIdKichCo(kichCo);

                if (sanPhamChiTietRequest.getNgay_tao() == null) {
                    sanPhamChiTiet.setNgay_tao(new Date());
                } else {
                    sanPhamChiTiet.setNgay_tao(sanPhamChiTietRequest.getNgay_tao());
                }
                sanPhamChiTiet.setNgay_sua(new Date());

                SanPhamChiTiet sanPhamChiTietSaved = sanPhamChiTietRepository.save(sanPhamChiTiet);

                String qrCodeData = String.valueOf(sanPhamChiTietSaved.getId());
                String filePath = "src/main/java/com/example/websitebanquanao/images/" + sanPhamChiTietSaved.getMaSanPham() + ".png";

                System.out.println("SanPhamChiTietService.add: " + sanPhamChiTietSaved.getId());
                System.out.println("File path: " + filePath);
            }
        }
        return true;
    }
    }