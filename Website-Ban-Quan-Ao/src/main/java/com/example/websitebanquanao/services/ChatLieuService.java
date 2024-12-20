package com.example.websitebanquanao.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ChatLieuService {
    @Autowired
    private ChatLieuRepository chatLieuRepository;

    // admin

    public List<ChatLieuResponse> getAll() {
        return chatLieuRepository.getAll();
    }

    public Page<ChatLieuResponse> getPage(int page, int pageSize) {
        Pageable pageable = PageRequest.of(page - 1, pageSize);
        return chatLieuRepository.getPage(pageable);
    }

    public void add(ChatLieuRequest chatLieuRequest) {
        ChatLieu chatLieu  = new ChatLieu();
        chatLieu.setTen(chatLieuRequest.getTen());

        java.util.Date currentDate = new java.util.Date();

        // Thiết lập ngày tạo là ngày hiện tại nếu chưa có, chuyển đổi sang java.sql.Date
        if (chatLieuRequest.getNgay_tao() == null) {
            chatLieu.setNgay_tao(new java.sql.Date(currentDate.getTime()));
        } else {
            chatLieu.setNgay_tao(chatLieuRequest.getNgay_tao());
        }

        // Thiết lập ngày sửa là ngày hiện tại, chuyển đổi sang java.sql.Date
        chatLieu.setNgay_sua(new java.sql.Date(currentDate.getTime()));


        chatLieu.setTrang_thai(chatLieuRequest.getTrang_thai());

        // Lưu đối tượng thương hiệu vào cơ sở dữ liệu
        chatLieuRepository.save(chatLieu);
        System.out.println("ThuongHieuService.add: " + chatLieu.getTen());
    }


    public void update(ChatLieuRequest  chatLieuRequest, Integer id){
        ChatLieu chatLieu = chatLieuRepository.findById(id).orElse(null);
        if (chatLieu != null){
            chatLieu.setTen(chatLieuRequest.getTen());
            chatLieu.setTrang_thai(chatLieuRequest.getTrang_thai());
            java.util.Date currentDate = new java.util.Date();
            chatLieu.setNgay_sua(new java.sql.Date(currentDate.getTime()));

            chatLieuRepository.save(chatLieu);
            System.out.println("chatLieuService.update: " + chatLieu.getTen());
        } else {
            System.out.println("chatLieuService.update: null");
        }
    }


    public void delete(int id) {
        ChatLieu thuongHieu = chatLieuRepository.findById(id).orElse(null);
        if (thuongHieu != null) {
            chatLieuRepository.deleteById(id);

            System.out.println("chatLieuService.delete: " + id);
        } else {
            System.out.println("chatLieuService.delete: null");
        }
    }

    public ChatLieuResponse getById(Integer id) {
        ChatLieuResponse thuongHieuResponse = chatLieuRepository.getByIdResponse(id);
        if (thuongHieuResponse != null) {
            System.out.println("chatLieu.getById: " + thuongHieuResponse.getTen());
            return thuongHieuResponse;
        } else {
            System.out.println("chatLieu.getById: null");
            return null;
        }
    }

    public boolean isTenValid(String ten) {
        return ten != null && !ten.trim().isEmpty(); }

    public ChatLieu findById(Integer id) {
        return chatLieuRepository.findById(id).orElse(null);
    }

}
