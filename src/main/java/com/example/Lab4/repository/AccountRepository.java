package com.example.Lab4.repository;
import com.example.Lab4.entity.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer> {
    public Account findByUsernameAndPassword(String username, String password);
    List<Account> findByQuyenFalse();
    public Account findById(int id);

}
