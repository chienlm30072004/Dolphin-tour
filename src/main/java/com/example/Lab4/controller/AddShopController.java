package com.example.Lab4.controller;
import com.example.Lab4.entity.Account;
import com.example.Lab4.entity.product;
import com.example.Lab4.repository.AccountRepository;
import com.example.Lab4.repository.productRepository;
import com.example.Lab4.service.SessionService;
import com.example.Lab4.service.cartService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
public class AddShopController {
    private productRepository repository;
    private AccountRepository accountRepository;
    private cartService cartService;
    private SessionService sessionService;

    @Autowired
    public AddShopController(productRepository repository, AccountRepository accountRepository, cartService service, SessionService sessionService) {
        this.repository = repository;
        this.accountRepository = accountRepository;
        this.cartService = service;
        this.sessionService = sessionService;
    }

    @GetMapping("/result")
    public String result(Model model) {
        LocalDateTime now = LocalDateTime.now();
        model.addAttribute("now", now.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss")));// Cung cấp giá trị 'now' cho JSP
        Account account = sessionService.get("acc");
        if (account != null) {
            model.addAttribute("mycart", cartService.getItems(account.getId())); // Thêm dữ liệu giỏ hàng vào model
            model.addAttribute("totalprice", cartService.getAmount(account.getId())); // Thêm tổng giá vào model
        }
        return "result"; // Trả về tên của JSP
    }

    @GetMapping("/addcart/{id}")
    public String addCart(@PathVariable int id, HttpSession session) {
        Account account = sessionService.get("acc");
        product p = repository.getById(id);
        if (account == null) {
            System.out.println("Chưa Đăng Nhập!");
            return "redirect:/login";
        }if(account.isQuyen()){
             return "redirect:/viewadm";
        }else
        {
            cartService.addItem(account.getId(), p.getId());
            System.out.println("ok");
        }
        return "redirect:/view";
    }
    @GetMapping("/clear")
    public String clearCart() {
        Account account = sessionService.get("acc");
        int id = account.getId();
        cartService.clear(id);
        return "redirect:/result";
    }
    @GetMapping("/confirm-payment")
    public String confirmPayment(HttpSession session, Model model) {
        Account account = sessionService.get("acc");
        if (account != null) {
            // Xóa giỏ hàng của người dùng
            cartService.clear(account.getId());
            // Xóa thông tin người dùng khỏi session
            model.addAttribute("message", "Thanh toán thành công!");
        } else {
            model.addAttribute("message", "Có lỗi xảy ra! Vui lòng thử lại.");
        }
        return "paymentSucess"; // Trả về tên của JSP
    }
    @RequestMapping("/dropitem/{id}")
    public String delete(@PathVariable int id, HttpSession session) {

        return "redirect:/result";
    }
}
