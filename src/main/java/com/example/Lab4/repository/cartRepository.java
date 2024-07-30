package com.example.Lab4.repository;

import com.example.Lab4.entity.Account;
import com.example.Lab4.entity.cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface cartRepository extends JpaRepository<cart, Integer> {


}
