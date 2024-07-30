package com.example.Lab4.service;
import com.example.Lab4.entity.product;
import com.example.Lab4.repository.productRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private productRepository productRepository;
    public List<product> findAll() {
        return productRepository.findAll();
    }
    public List<product> findBySearch(String search) {
        return productRepository.findByContentContaining(search);
    }
}

