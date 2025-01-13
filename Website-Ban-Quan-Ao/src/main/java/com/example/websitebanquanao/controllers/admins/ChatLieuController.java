package com.example.websitebanquanao.controllers.admins;

import com.example.websitebanquanao.entities.ChatLieu;
import com.example.websitebanquanao.infrastructures.requests.ChatLieuRequest;
import com.example.websitebanquanao.infrastructures.responses.ChatLieuResponse;
import com.example.websitebanquanao.repositories.ChatLieuRepository;
import com.example.websitebanquanao.services.ChatLieuService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/admin/chat-lieu")
public class ChatLieuController {
    @Autowired
    private ChatLieuService chatLieuService;

    @Autowired
    private ChatLieuRequest chatLieuRequest;

    private static final String redirect = "redirect:/admin/chat-lieu/index";
    @Autowired
    private ChatLieuRepository chatLieuRepository;

    @GetMapping("index")
    public String index(@RequestParam(name = "page", defaultValue = "1") int page, Model model, @ModelAttribute("successMessage") String successMessage) {
        Page<ChatLieuResponse> chatLieuPage = chatLieuService.getPage(page, 5);
        model.addAttribute("clPage", chatLieuPage);
        model.addAttribute("cl", chatLieuRequest);
        model.addAttribute("successMessage", successMessage);
        model.addAttribute("view", "/views/admin/chat-lieu/index.jsp");
        return "admin/layout";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable("id") Integer id, RedirectAttributes redirectAttributes) {
        chatLieuService.delete(id);
        redirectAttributes.addFlashAttribute("successMessage", "Xóa chất liệu thành công");
        return redirect;
    }

    @PostMapping("store")
    public String store(@Valid @ModelAttribute("clb") ChatLieuRequest chatLieuRequest, BindingResult result, Model model, RedirectAttributes redirectAttributes) {

        String ten = chatLieuRequest.getTen().trim();

        if (ten.isEmpty() || !ten.equals(chatLieuRequest.getTen())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Tên không hợp lệ (không được có khoảng trắng ở đầu )");
            return redirect; // Replace with your actual redirect path
        }

        if (!chatLieuService.isTenValid(chatLieuRequest.getTen())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Tên toàn khoảng trắng không hợp lệ");
            return redirect;
        }

        if (result.hasErrors()) {
            model.addAttribute("view", "/views/admin/chat-lieu/index.jsp");
            return "admin/layout";
        }

        if (chatLieuRepository.existsByTen(chatLieuRequest.getTen())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Thêm mới không thành công - Chất liệu đã tồn tại");
            return redirect;
        }


        chatLieuService.add(chatLieuRequest);
        // Lưu thông báo thêm thành công vào session
        redirectAttributes.addFlashAttribute("successMessage", "Thêm chất liệu thành công");
        return redirect;
    }

    @PostMapping("update/{id}")
    public String update(@PathVariable("id") Integer id,
                         @Valid @ModelAttribute("clb") ChatLieuRequest chatLieuRequest,
                         BindingResult result,
                         Model model,
                         RedirectAttributes redirectAttributes) {
        ChatLieu existingChatLieu = chatLieuService.findById(id);
        if (existingChatLieu == null) {
            redirectAttributes.addFlashAttribute("errorMessage", "Chất liệu không tồn tại");
            return redirect;
        }
        String updatedTen = chatLieuRequest.getTen().trim();
        if (updatedTen.isEmpty() || !updatedTen.equals(chatLieuRequest.getTen().trim())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Tên không hợp lệ (không được có khoảng trắng ở đầu)");
            return redirect;
        }
        if (!chatLieuService.isTenValid(updatedTen)) {
            redirectAttributes.addFlashAttribute("errorMessage", "Tên toàn khoảng trắng không hợp lệ");
            return redirect;
        }
        if (chatLieuRepository.existsByTen(updatedTen) && !updatedTen.equals(existingChatLieu.getTen())) {
            redirectAttributes.addFlashAttribute("errorMessage", "Cập nhật không thành công - Tên chất liệu đã tồn tại");
            return redirect;
        }
        if (updatedTen.equals(existingChatLieu.getTen())) {
            chatLieuRequest.setTen(existingChatLieu.getTen());
        }

        // Thực hiện cập nhật
        chatLieuService.update(chatLieuRequest, id);
        redirectAttributes.addFlashAttribute("successMessage", "Cập nhật chất liệu thành công");
        return redirect;
    }


    @GetMapping("get/{id}")
    @ResponseBody
    public ResponseEntity<ChatLieuResponse> getChatLieu(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(chatLieuService.getById(id));
    }

}
