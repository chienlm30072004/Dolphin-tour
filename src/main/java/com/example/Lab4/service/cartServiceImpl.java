package com.example.Lab4.service;

import com.example.Lab4.entity.Account;
import com.example.Lab4.entity.cart;
import com.example.Lab4.entity.cartItem;
import com.example.Lab4.repository.AccountRepository;
import com.example.Lab4.repository.cartRepository;
import com.example.Lab4.repository.productRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import com.example.Lab4.entity.product;

@Service
@Transactional
public class cartServiceImpl implements cartService {
    private AccountRepository accountRepository;
    private productRepository productRepository;
    private cartRepository cartRepository;

    @Autowired
    public cartServiceImpl(AccountRepository account, productRepository product) {
        this.accountRepository = account;
        this.productRepository = product;
    }


    @Override
    public void addItem(int account_id, int product) {
        Account ac = accountRepository.getById(account_id);
        if (ac != null) {
            cart cart = ac.getCart();
            product pr = productRepository.getById(product);
            if (pr != null) {
                List<cartItem> cartItems = cart.getCartItems();
                if (cartItems == null) {
                    cartItems = new ArrayList<>();
                }
                cartItem cartItem = findCartItemByBookId(cartItems, product);
                if (cartItem == null) {
                    cartItem = new cartItem();
                    cartItem.setProduct(pr);
                    cartItem.setQty(1);
                    cartItem.setCart(cart);
                    cartItems.add(cartItem);
                    accountRepository.save(ac);
                    System.out.println("ok");
                } else {
                    cartItem.incrementQuantity();
                    System.out.println("+1");
                }
            } else {
                System.out.println("sp null");
            }
        } else {
            System.out.println("accout null");
        }
    }

    @Override
    public void removeItem(int userId, int bookId) {
//        user user = userService.getById(userId);
//        cart cart = user.getCart();
//        if (cart != null) {
//            List<cartItem> cartItems = cart.getCartItems();
//            cartItems.removeIf(cartItem -> cartItem.getBook().getId() == bookId);
//            userService.insert(user);
//        }
    }

    @Override
    public cart updateItem(int userId, int bookId, int qty) {
//        user user = userService.getById(userId);
//        cart cart = user.getCart();
//        if (cart != null) {
//            List<cartItem> cartItems = cart.getCartItems();
//            cartItem cartItem = findCartItemByBookId(cartItems, bookId);
//            if (cartItem != null) {
//                if (qty > 0) {
//                    cartItem.setQuantity(qty);
//                } else {
//                    cartItems.remove(cartItem);
//                }
//                userService.insert(user);
//            }
//        }
        return null;
//        return cart;
    }

    @Override
    public void clear(int accountId) {


    }


    @Override
    public Collection<cartItem> getItems(int account_id) {
        Account ac = accountRepository.getById(account_id);
        cart cart = ac.getCart();
        if (cart != null) {
            return cart.getCartItems();
        }
        return List.of();
    }

    @Override
    public int getCount(int account_id) {
        Account user = accountRepository.getById(account_id);
        cart cart = user.getCart();
        if (cart != null) {
            return cart.getCartItems().size();
        }
        return 0;
    }

    @Override
    public double getAmount(int userId) {
        Account user = accountRepository.getById(userId);
        cart cart = user.getCart();
        if (cart != null) {
            return cart.getCartItems().stream()
                    .mapToDouble(item -> item.getProduct().getPrice() * item.getQty())
                    .sum();
        }
        return 0;
    }

    @Override
    public void increaseQuantity(int userId, int bookId) {
//        user user = userService.getById(userId);
//        cart cart = user.getCart();
//        if (cart != null) {
//            List<cartItem> cartItems = cart.getCartItems();
//            cartItem cartItem = findCartItemByBookId(cartItems, bookId);
//            if (cartItem != null) {
//                cartItem.incrementQuantity();
//                userService.insert(user);
//            }
//        }
    }

    // New method to decrease the quantity of a cart item
    @Override
    public void decreaseQuantity(int userId, int bookId) {
//        user user = userService.getById(userId);
    }

    private cartItem findCartItemByBookId(List<cartItem> cartItems, int bookId) {
        for (cartItem cartItem : cartItems) {
            if (cartItem.getProduct().getId() == bookId) {
                return cartItem;
            }
        }
        return null;
    }
}
