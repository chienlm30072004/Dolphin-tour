package com.example.Lab4.repository;

import com.example.Lab4.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface productRepository extends JpaRepository<Product, Integer> {
        List<Product> findByContentContaining(String search);

}
