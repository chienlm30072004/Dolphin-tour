package com.example.Lab4.repository;

import com.example.Lab4.entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface cartRepository extends JpaRepository<Cart, Integer> {
}
