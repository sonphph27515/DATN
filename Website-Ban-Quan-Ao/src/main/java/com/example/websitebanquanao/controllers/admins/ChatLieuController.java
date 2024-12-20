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




    @GetMapping("get/{id}")
    @ResponseBody
    public ResponseEntity<ChatLieuResponse> getChatLieu(@PathVariable("id") Integer id) {
        return ResponseEntity.ok(chatLieuService.getById(id));
    }

}
