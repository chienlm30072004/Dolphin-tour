package com.example.Lab4.repository;

import com.example.Lab4.entity.View1;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface view1repository extends JpaRepository<View1,Integer> {
}
