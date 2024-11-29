package com.bookstore.project.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriComponentsBuilder;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

import com.bookstore.project.domain.Order;
import com.bookstore.project.domain.Product;
import com.bookstore.project.domain.User;
import com.bookstore.project.domain.dto.RegisterDTO;
import com.bookstore.project.service.OrderService;
import com.bookstore.project.service.ProductService;
import com.bookstore.project.service.UserService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class HomePageController {
    private final ProductService productService;
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final OrderService orderService;

    public HomePageController(ProductService productService, UserService userService, PasswordEncoder passwordEncoder,
            OrderService orderService) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.orderService = orderService;
    }

    @GetMapping("/")
    public String getHomePage(Model model,
            @RequestParam(name = "page", defaultValue = "1") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            } else {

            }
        } catch (Exception e) {

        }
        Pageable pageable = PageRequest.of(page - 1, 4);
        Page<Product> prs = this.productService.fetchPageAbleProducts(pageable);
        List<Product> products = prs.getContent();
        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", prs.getTotalPages());
        return "client/homepage/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(@ModelAttribute("registerUser") @Valid RegisterDTO registerDTO,
            BindingResult bindingResult) {
        // neu co loi tra ve terminal
        List<FieldError> errors = bindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }
        // neu co loi tra ve view
        if (bindingResult.hasErrors()) {
            return "client/auth/register";
        }
        User user = this.userService.registerDTOtoUser(registerDTO);
        String hashPassword = this.passwordEncoder.encode(user.getPassword());
        user.setPassword(hashPassword);
        user.setRole(this.userService.getRoleByName("USER"));
        this.userService.handelSaveUser(user);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {

        return "client/auth/login";
    }

    @GetMapping("/access-deny")
    public String getDenyPage(Model model) {

        return "client/auth/deny";
    }

    @GetMapping("/order-history")
    public String getOrderHistoryPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);
        List<Order> orders = this.orderService.fetchOrderByUser(currentUser);
        model.addAttribute("orders", orders);
        return "client/cart/order-history";
    }

    @GetMapping("/products")
    public String getProductPage(Model model, @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            } else {

            }
        } catch (Exception e) {

        }
        Pageable pageable = PageRequest.of(page - 1, 8);
        Page<Product> prs = this.productService.fetchSubPageAbleProducts(pageable);
        List<Product> products = prs.getContent();
        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", prs.getTotalPages());
        return "client/product/show";
    }

    @GetMapping("/search")
    public String searchUser(@RequestParam("name") String name, Model model) {
        List<Product> products = productService.searchProductsByName(name);
        model.addAttribute("products", products);
        model.addAttribute("key", name);
        return "client/homepage/showSearch";
    }

    // @GetMapping("/search")
    // public String searchBooks(@RequestParam(value = "query", required = false)
    // String query, Model model) {
    // if (query == null || query.isEmpty()) {
    // query = "";
    // }
    // List<Product> books = productService.searchBooks(query);
    // model.addAttribute("products", books);
    // return "client/homepage/show";
    // }

    // @PostMapping("/search")
    // public String handleBooks(@RequestParam(value = "query", required = false)
    // String query, Model model) {
    // if (query == null || query.isEmpty()) {
    // query = "";
    // }
    // List<Product> books = productService.searchBooks(query);
    // String redirectUrl = UriComponentsBuilder.fromUriString("/")
    // .queryParam("query", query)
    // .toUriString();
    // return "redirect:" + redirectUrl;
    // }

}
