package com.example.Lab4.service;
import com.example.Lab4.service.cartService;
import com.example.Lab4.entity.cart;
import com.example.Lab4.entity.cartItem;

import java.util.Collection;

public interface cartService{
    public void addItem(int user_id, int book_id);

    public void removeItem(int user_id, int book_id);

    public cart updateItem(int user_id, int book_id, int qty);

    void clear(int accountId);

    public Collection<cartItem> getItems(int user_id);

    public int getCount(int user_id);


    double getAmount(int userId);

    public void increaseQuantity(int userId, int bookId);

    public void decreaseQuantity(int userId, int bookId);

}
