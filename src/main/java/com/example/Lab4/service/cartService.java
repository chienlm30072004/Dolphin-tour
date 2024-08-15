package com.example.Lab4.service;

import com.example.Lab4.entity.Cart;
import com.example.Lab4.entity.CartItem;

import java.util.Collection;

public interface cartService{
    public void addItem(int user_id, int book_id);

    void deleteItem(int cartId);

    public Cart updateItem(int user_id, int book_id, int qty);

    void clear(int accountId);

    public Collection<CartItem> getItems(int user_id);

    public int getCount(int user_id);


    double getAmount(int userId);

    public void increaseQuantity(int userId, int bookId);

    public void decreaseQuantity(int userId, int bookId);

}
