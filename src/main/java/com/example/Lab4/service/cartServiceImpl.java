package com.example.Lab4.service;

import com.example.Lab4.entity.Account;
import com.example.Lab4.entity.Cart;
import com.example.Lab4.entity.CartItem;
import com.example.Lab4.entity.Product;
import com.example.Lab4.repository.AccountRepository;
import com.example.Lab4.repository.CartItemRepository;
import com.example.Lab4.repository.cartRepository;
import com.example.Lab4.repository.productRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Service
@Transactional
public class cartServiceImpl implements cartService {
    private AccountRepository accountRepository;
    private productRepository productRepository;
    private cartRepository cartRepository;
    private CartItemRepository cartItemRepository;

    @Autowired
    public cartServiceImpl(AccountRepository accountRepository, productRepository productRepository, cartRepository cartRepository, CartItemRepository cartItemRepository) {
        this.accountRepository = accountRepository;
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartItemRepository = cartItemRepository;
    }

    @Override
    public void addItem(int account_id, int product_id) {
        Account ac = accountRepository.findById(account_id);
        if (ac != null) {
            Cart cart = ac.getCart();
            if (cart == null) {
                cart = new Cart();
                ac.setCart(cart);
            }
            Product pr = productRepository.findById(product_id).orElse(null);
            if (pr != null) {
                List<CartItem> cartItems = cart.getCartItems();
                if (cartItems == null) {
                    cartItems = new ArrayList<>();
                    cart.setCartItems(cartItems);
                }
                CartItem cartItem = findCartItemByBookId(cartItems, pr.getId());

                if (cartItem == null) {
                    cartItem = new CartItem();
                    cartItem.setProduct(pr);
                    cartItem.setQty(1);
                    cartItem.setCart(cart);
                    cartItems.add(cartItem);
                } else {
                    cartItem.incrementQuantity();
                }

                cartRepository.save(cart); // Lưu giỏ hàng
                accountRepository.save(ac); // Lưu tài khoản
            } else {
                System.out.println("Product not found");
            }
        } else {
            System.out.println("Account not found");
        }
    }

    @Override
    public void deleteItem(int cartId) {
            cartRepository.deleteById(cartId);// Lưu lại giỏ hàng sau khi xóa
    }

    @Override
    public void clear(int accountId) {
        Account account = accountRepository.findById(accountId);
        if (account != null) {
            Cart cart = account.getCart();
            if (cart != null) {
                cart.getCartItems().clear();
                cartRepository.save(cart); // Lưu lại giỏ hàng sau khi xóa
            }
        }
    }

    @Override
    public Cart updateItem(int userId, int bookId, int qty) {
        Account account = accountRepository.findById(userId);
        if (account != null) {
            Cart cart = account.getCart();
            if (cart != null) {
                List<CartItem> cartItems = cart.getCartItems();
                CartItem cartItem = findCartItemByBookId(cartItems, bookId);
                if (cartItem != null) {
                    if (qty > 0) {
                        cartItem.setQty(qty);
                    } else {
                        cartItems.remove(cartItem);
                    }
                    cartRepository.save(cart);
                    return cart;
                }
            }
        }
        return null;
    }

    @Override
    public Collection<CartItem> getItems(int account_id) {
        Account ac = accountRepository.getById(account_id);
        Cart cart = ac.getCart();
        if (cart != null) {
            return cart.getCartItems();
        }
        return List.of();
    }

    @Override
    public int getCount(int account_id) {
        Account user = accountRepository.getById(account_id);
        Cart cart = user.getCart();
        if (cart != null) {
            return cart.getCartItems().size();
        }
        return 0;
    }

    @Override
    public double getAmount(int userId) {
        Account user = accountRepository.getById(userId);
        Cart cart = user.getCart();
        if (cart != null) {
            return cart.getCartItems().stream()
                    .mapToDouble(item -> item.getProduct().getPrice() * item.getQty())
                    .sum();
        }
        return 0;
    }

    @Override
    public void increaseQuantity(int userId, int bookId) {
        Account account = accountRepository.getById(userId);
        if (account != null) {
            Cart cart = account.getCart();
            if (cart != null) {
                CartItem cartItem = findCartItemByBookId(cart.getCartItems(), bookId);
                if (cartItem != null) {
                    cartItem.incrementQuantity();
                    cartRepository.save(cart);
                }
            }
        }
    }

    @Override
    public void decreaseQuantity(int userId, int bookId) {
        Account account = accountRepository.getById(userId);
        if (account != null) {
            Cart cart = account.getCart();
            if (cart != null) {
                CartItem cartItem = findCartItemByBookId(cart.getCartItems(), bookId);
                if (cartItem != null && cartItem.getQty() > 1) {
                    cartItem.decrementQuantity();
                    cartRepository.save(cart);
                } else if (cartItem != null && cartItem.getQty() == 1) {
                    cart.getCartItems().remove(cartItem);
                    cartRepository.save(cart);
                }
            }
        }
    }

    private CartItem findCartItemByBookId(List<CartItem> cartItems, int bookId) {
        for (CartItem cartItem : cartItems) {
            if (cartItem.getProduct().getId() == bookId) {
                return cartItem;
            }
        }
        return null;
    }
}

