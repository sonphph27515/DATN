package com.example.websitebanquanao.services;

import com.example.websitebanquanao.entities.HoaDon;
import com.example.websitebanquanao.infrastructures.responses.GioHangUserResponse;
import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileOutputStream;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Currency;
import java.util.List;
import java.util.Locale;

@Service
public class CreatePDF {

    public void exportPDFBill(HoaDon hoaDon, List<GioHangUserResponse> listHoaDonChiTiet, String tongTien) {
        try {
            String fileName = hoaDon.getMa() + ".pdf";
            String filePath = "src/main/java/com/example/websitebanquanao/bills" + "/" + fileName;

            BaseFont bf = BaseFont.createFont("Roboto/Roboto-Medium.ttf", BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
            Font font = new Font(bf, 10, Font.NORMAL);
            Font font2 = new Font(bf, 15, Font.BOLD);

            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(filePath));
            document.open();

            String tenKhachHang = hoaDon.getNguoiNhan();
            if (tenKhachHang == null) {
                tenKhachHang = "Khách lẻ";
            }
            String diaChi = hoaDon.getDiaChi() + ", " + hoaDon.getXaPhuong() + ", " + hoaDon.getQuanHuyen() + ", " + hoaDon.getTinhThanhPho();
            ;
            if (diaChi == null || hoaDon.getDiaChi() == null) {
                diaChi = "Khách mua tại cửa hàng";
            }
            // thêm logo và căn giữa
            Image image = Image.getInstance("src/main/java/com/example/websitebanquanao/images/logologin.jpg");
            image.setAlignment(Element.ALIGN_CENTER);
            image.scaleAbsolute(100, 100);
            document.add(image);
            document.add(new Paragraph("Hoá đơn store WinterClothes8386", font2));
            document.add(new Paragraph("----------------------------------------------------------------------------------------------------------------------------------"));

            document.add(new Paragraph("Mã hoá đơn: " + hoaDon.getMa(), font));
            document.add(new Paragraph("Tên khách hàng: " + tenKhachHang, font));
            document.add(new Paragraph("SĐT: " + hoaDon.getSoDienThoai(), font));
            document.add(new Paragraph("Địa chỉ: " + diaChi, font));
            document.add(new Paragraph("Ghi chú: " + hoaDon.getGhiChu(), font));
            document.add(new Paragraph("Nhân viên: " + (hoaDon.getIdNhanVien() != null ? hoaDon.getIdNhanVien().getHoVaTen() : "Không có nhân viên"), font));
            document.add(new Paragraph("Ngày tạo: " + hoaDon.getNgayTao(), font));

            document.add(new Paragraph("----------------------------------------------------------------------------------------------------------------------------------"));
            document.add(new Paragraph(" "));

            PdfPTable table = new PdfPTable(5);
            PdfPCell cell = new PdfPCell(new Paragraph("Danh sách sản phẩm", font2));
            cell.setColspan(5);
            cell.setHorizontalAlignment(Element.ALIGN_CENTER);
            cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
            table.addCell(cell);
            table.addCell(new Paragraph("STT", font2));
            table.addCell(new Paragraph("Tên sản phẩm", font2));
            table.addCell(new Paragraph("Số lượng", font2));
            table.addCell(new Paragraph("Đơn giá", font2));
            table.addCell(new Paragraph("Thành tiền", font2));
            Locale usa = new Locale("en", "US");
            DecimalFormat dollarFormat = (DecimalFormat) NumberFormat.getNumberInstance(usa);
            int count = 0;
            for (GioHangUserResponse hoaDonChiTiet : listHoaDonChiTiet) {
                count++;
                table.addCell(new Paragraph(String.valueOf(count + 1), font));
                table.addCell(new Paragraph(hoaDonChiTiet.getTenSanPham() + "/" + hoaDonChiTiet.getTenMauSac() + "/" + hoaDonChiTiet.getTenKichCo(), font));
                table.addCell(new Paragraph(hoaDonChiTiet.getSoLuong().toString(), font));
                table.addCell(new Paragraph(dollarFormat.format(hoaDonChiTiet.getGia()), font));
                BigDecimal gia = hoaDonChiTiet.getGia();
                int soLuong = hoaDonChiTiet.getSoLuong();
                BigDecimal tongTien1 = gia.multiply(BigDecimal.valueOf(soLuong));
                table.addCell(new Paragraph(dollarFormat.format(tongTien1), font));
            }

            document.add(table);
            document.add(new Paragraph("----------------------------------------------------------------------------------------------------------------------------------"));
            document.add(new Paragraph("Tổng tiền: " + String.format("%,.0f", hoaDon.getTongTien()), font2));
            String tienGiam = (hoaDon.getTienGiam() == null || hoaDon.getTienGiam().compareTo(BigDecimal.ZERO) == 0)
                    ? "Không có giảm giá" : dollarFormat.format(hoaDon.getTienGiam());
            document.add(new Paragraph("Giảm giá: " + tienGiam, font2));
            //document.add(new Paragraph("Giảm giá: " + String.format("%,.2f", hoaDon.getTienGiam()), font2));
            BigDecimal tienThanhToan = hoaDon.getPhiVanChuyen().add(BigDecimal.valueOf(Float.parseFloat(tongTien)));

            if (hoaDon.getPhiVanChuyen() != null) {
                document.add(new Paragraph("Phí vận chuyển: " + String.format("%,.0f", hoaDon.getPhiVanChuyen()), font2));
            }
            document.add(new Paragraph("Tiền thanh toán: " + String.format("%,.0f", BigDecimal.valueOf(Float.valueOf(String.valueOf(tienThanhToan)))), font2));
            // kiem tra

            document.add(new Paragraph("----------------------------------------------------------------------------------------------------------------------------------"));
            document.add(new Paragraph("Cảm ơn quý khách đã mua hàng tại WinterClothes8386!", font2));
            document.close();

            document.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }



}
