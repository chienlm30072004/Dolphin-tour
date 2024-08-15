package com.example.Lab4.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem { // Đổi tên lớp từ cart_cart_item thành CartItem
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product; // Đổi tên lớp thành Product
    private int qty;
    @ManyToOne
    @JoinColumn(name = "cart_id")
    private Cart cart; // Đổi tên lớp thành Cart
    public void incrementQuantity() {
        this.qty++;
    }
    public void decrementQuantity() {
        this.qty--;
    }
}
