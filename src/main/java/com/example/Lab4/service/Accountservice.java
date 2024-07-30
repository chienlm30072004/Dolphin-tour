package com.example.Lab4.service;

import com.example.Lab4.entity.Account;

public class Accountservice {
    public static Account login(String username, String password) {
        if ("user".equals(username) && "password".equals(password)) {
            Account account = new Account();
            account.getUsername();
            account.getPassword();
            account.getFullname();
            return account;
        }
        return null;
    }
}
