package com.example.Lab4.controller;

import com.example.Lab4.entity.product;
import com.example.Lab4.service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductService productService;
    @RequestMapping("/products")
    public String productList(@RequestParam(name = "search", required = false) String search,
            @RequestParam(name = "sortType", required = false) String sortType,
            HttpSession session) {
        List<product> products  ;
        if ((search == null || search.isEmpty()) && (sortType == null || sortType.isEmpty())) {
            products = productService.findAll();
            session.setAttribute("products", products);
        } else {
            // Xử lý tìm kiếm
            if (search != null && !search.isEmpty()) {
                products = productService.findBySearch(search);
            } else {
                products = productService.findAll();
            }

            // Xử lý sắp xếp
            if (sortType != null && !sortType.isEmpty()) {
                if (sortType.equals("price")) {
                    products.sort((p1, p2) -> Double.compare(p1.getPrice(), p2.getPrice()));
                } else if (sortType.equals("content")) {
                    products.sort((p1, p2) -> p1.getContent().compareToIgnoreCase(p2.getContent()));
                }
            }
        }
        session.setAttribute("products", products);
        session.setAttribute("search", search);
        session.setAttribute("sortType", sortType);
        return "index";
    }

}
