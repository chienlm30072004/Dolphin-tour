package com.example.Lab4.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class cartItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private product product;
    private int qty;
    @ManyToOne
    @JoinColumn(name = "cart_id")
    private cart cart;
    public void incrementQuantity() {
        this.qty++;
    }
    public void decrementQuantity() {
        this.qty--;
    }
}
