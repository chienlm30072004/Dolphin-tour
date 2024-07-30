package com.example.Lab4.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @OneToOne
    @JoinColumn(name = "account_id")
    private Account account;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<cartItem> cartItems = new ArrayList<>();
}
