package com.example.Lab4.service;
import com.example.Lab4.entity.Product;
import com.example.Lab4.repository.productRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private productRepository productRepository;
    public List<Product> findAll() {
        return productRepository.findAll();
    }
    public List<Product> findBySearch(String search) {
        return productRepository.findByContentContaining(search);
    }
}

