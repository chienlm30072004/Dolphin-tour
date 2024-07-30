package com.example.Lab4.repository;

import com.example.Lab4.entity.product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface productRepository extends JpaRepository<product, Integer> {
        List<product> findByContentContaining(String search);

}
