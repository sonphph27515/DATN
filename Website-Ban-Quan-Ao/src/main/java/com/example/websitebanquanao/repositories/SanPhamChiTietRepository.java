package com.example.websitebanquanao.repositories;

import com.example.websitebanquanao.entities.SanPhamChiTiet;
import com.example.websitebanquanao.infrastructures.responses.SanPhamChiTietResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface SanPhamChiTietRepository extends JpaRepository<SanPhamChiTiet, UUID> {

    @Query("select new com.example.websitebanquanao.infrastructures.responses.SanPhamChiTietResponse(s.id, s.maSanPham, s.idSanPham.id, s.idSanPham.ten, s.idMauSac.ten, s.idKichCo.ten, s.gia, s.soLuong, s.moTa, s.trangThai, s.ngay_sua, s.ngay_tao) from SanPhamChiTiet s where s.idSanPham.ten like %:tenSanPham% ORDER BY CASE WHEN s.trangThai = 1 THEN 0 ELSE 1 END")
    public Page<SanPhamChiTietResponse> getByTenSanPham(@Param("tenSanPham") String tenSanPham, Pageable pageable);

    @Query("select new com.example.websitebanquanao.infrastructures.responses.SanPhamChiTietResponse(s.id, s.maSanPham,s.idSanPham.id, s.idSanPham.ten, s.idMauSac.ten, s.idKichCo.ten, s.gia, s.soLuong, s.moTa, s.trangThai, s.ngay_sua, s.ngay_tao)  from SanPhamChiTiet s where s.trangThai = 1 ORDER BY s.idSanPham.ten desc")
    public List<SanPhamChiTietResponse> getAll();

    @Query("select new com.example.websitebanquanao.infrastructures.responses.SanPhamChiTietResponse(s.id, s.maSanPham,s.idSanPham.id, s.idSanPham.ten, s.idMauSac.ten, s.idKichCo.ten, s.gia, s.soLuong, s.moTa, s.trangThai, s.ngay_sua, s.ngay_tao)  from SanPhamChiTiet s ORDER BY CASE WHEN s.trangThai = 1 THEN 0 ELSE 1 END, s.idSanPham.ten desc ")
    public Page<SanPhamChiTietResponse> getPage(Pageable pageable);

    @Query("select new com.example.websitebanquanao.infrastructures.responses.SanPhamChiTietResponse(s.id, s.maSanPham,s.idSanPham.id, s.idSanPham.ten, s.idMauSac.ten, s.idKichCo.ten, s.gia, s.soLuong, s.moTa, s.trangThai, s.ngay_sua, s.ngay_tao)  from SanPhamChiTiet s where s.trangThai = 2 ORDER BY s.idSanPham.ten")
    public List<SanPhamChiTietResponse> Getlisttam();


    @Query("SELECT CASE WHEN COUNT(sp) > 0 THEN TRUE ELSE FALSE END FROM SanPhamChiTiet sp WHERE sp.idSanPham.id = :idSanPham AND sp.idMauSac.id = :idMauSac AND sp.idKichCo.id = :idKichCo")
    boolean checkTrung(@Param("idSanPham") UUID idSanPham, @Param("idMauSac") Integer idMauSac, @Param("idKichCo") Integer idKichCo);
}
