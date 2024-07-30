package com.example.Lab4.controller;


import com.example.Lab4.repository.view1repository;
import com.example.Lab4.repository.view2Repository;
import com.example.Lab4.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class CartController {
    private view1repository view1repository;
    private view2Repository view2Repository;
    private ProductService productService;
    @Autowired
    public CartController(view1repository view1repository, view2Repository view2Repository, ProductService productService) {
        this.view1repository = view1repository;
        this.view2Repository = view2Repository;
        this.productService = productService;
    }
    @GetMapping("/view")
    public String view(Model model, HttpSession session) {
        session.setAttribute("products",  productService.findAll());
        model.addAttribute("cart2", view1repository.findAll());
        model.addAttribute("cart3", view2Repository.findAll());
        return "index";
    }
    @RequestMapping("/viewadm3")
    public String view3(Model model) {
        model.addAttribute("cart2", view1repository.findAll());
        model.addAttribute("cart3", view2Repository.findAll());
        return "indexofadm";
    }
    @RequestMapping("/viewadm")
    public String view1(Model model) {
        return "indexAdmin";
    }
    @RequestMapping("/viewadm2")
    public String view2(Model model) {
        return "indexofadm";
    }
    @RequestMapping("/viewadm4")
    public String view4(Model model) {
        return "indexAdmin";
    }


}
