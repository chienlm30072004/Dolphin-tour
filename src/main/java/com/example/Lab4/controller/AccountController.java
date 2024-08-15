package com.example.Lab4.controller;


import com.example.Lab4.entity.Account;
import com.example.Lab4.entity.Cart;
import com.example.Lab4.repository.AccountRepository;
import com.example.Lab4.service.Accountservice;
import com.example.Lab4.service.SessionService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AccountController {
    private final AccountRepository accountRepository;
    private AccountRepository account;
    private SessionService sessionService;

    @Autowired
    public AccountController(AccountRepository account, SessionService sessionService, AccountRepository accountRepository) {
        this.account = account;
        this.sessionService = sessionService;
        this.accountRepository = accountRepository;
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/runrun")
    public String runrun(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session, Model model) {
        Account ac = account.findByUsernameAndPassword(username, password);
        if (ac != null) {
            if (ac.isQuyen()) {
                sessionService.set("accadm", ac);
                return "redirect:/indexAdmin";
            } else {
                sessionService.set("acc", ac);
                return "redirect:/view";
            }
        } else {
            model.addAttribute("Messagelog","Bạn Nhập Sai Tài Khoản Hoặc Mật Khẩu !");
            return "redirect:/login";
        }
    }

    @RequestMapping("/hienten")
    public String hienten(@RequestParam("username") String username,
                          @RequestParam("password") String password,
                          HttpSession session, Model model) {
        Account account = Accountservice.login(username, password);
        if (account != null) {
            session.setAttribute("loggedInUser", account.getFullname());
        }
        return null;
    }

    @RequestMapping("/edit/{id}")
    public String edit(Model model, @PathVariable("id") int id, HttpSession session) {
        Account ca = account.findById(id);

        session.setAttribute("id", ca);
        return "redirect:/viewadm";
    }

    @PostMapping("/create")
    public String create(@RequestParam("fullname") String fullname,
                         @RequestParam("username") String username,
                         @RequestParam("password") String password,
                         @RequestParam("quyen") String quyen) {
        Account newAccount = new Account();
        newAccount.setFullname(fullname);
        newAccount.setUsername(username);
        newAccount.setPassword(password);
        newAccount.setQuyen(newAccount.isQuyen());
        account.save(newAccount);
        return "redirect:/indexAdmin";
    }

    @PostMapping("/update")
    public String update(@RequestParam("fullname") String fullname,
                         @RequestParam("username") String username,
                         @RequestParam("password") String password,
                         @RequestParam("quyen") String quyen,
                         @RequestParam("id") int id,
                         HttpSession session) {
        Account ca = accountRepository.findById(id);
        if (ca != null) {
            ca.setFullname(fullname);
            ca.setUsername(username);
            ca.setPassword(password);
            ca.setQuyen(ca.isQuyen());
            accountRepository.save(ca);
        }
        System.out.println(fullname);
        return "redirect:/indexAdmin";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") int id) {
        account.deleteById(id);
        return "redirect:/indexAdmin";
    }
@GetMapping("/reset")
public String reset(HttpSession session){
        session.removeAttribute("id");
        return "redirect:/indexAdmin";
}
    @GetMapping("/indexAdmin")
    public String viewadmin() {
        sessionService.set("acc", accountRepository.findAll());
        return "redirect:/viewadm";
    }

    @GetMapping("/signup_view")
    public String signup_view() {
        return "signup";
    }


    @PostMapping("/signup")
    public String signup(@RequestParam String username, @RequestParam String password,
                         @RequestParam String sdt, @RequestParam String fullname,
                         @RequestParam String quyen, HttpSession session) {
        Account ac = new Account();
        Cart cartnew = new Cart();
        ac.setFullname(fullname);
        ac.setSdt(sdt);
        ac.setUsername(username);
        ac.setPassword(password);
        ac.setQuyen(quyen.equals("admin")); // Sử dụng giá trị của `quyen` để đặt quyền
        cartnew.setAccount(ac);
        ac.setCart(cartnew);

        Account rs = account.save(ac);
        if (rs != null) {
            return "redirect:/login";
        } else {
            return "redirect:/signup_view";
        }
    }

    @GetMapping("/logoutok")
    public String logoutok(HttpSession session) {
        Account ac = (Account) session.getAttribute("acc");
        if (ac != null) {
            session.removeAttribute("acc");
        }
        return "redirect:/view";
    }

    @GetMapping("/logoutok1")
    public String logoutok1(HttpSession session) {
        Account ac = (Account) session.getAttribute("accadm");
        if (ac != null) {
            session.removeAttribute("accadm");
        }
        return "redirect:/login";
    }

}



