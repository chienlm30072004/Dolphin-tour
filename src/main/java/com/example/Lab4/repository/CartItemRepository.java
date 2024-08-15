    package com.example.Lab4.repository;

    import com.example.Lab4.entity.CartItem;
    import org.springframework.data.jpa.repository.JpaRepository;
    import org.springframework.stereotype.Repository;

    @Repository
    public interface CartItemRepository extends JpaRepository<CartItem, Integer> {

    }
