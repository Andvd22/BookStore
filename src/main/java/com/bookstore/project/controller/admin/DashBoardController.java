package com.bookstore.project.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bookstore.project.service.UserService;
import com.bookstore.project.service.ProductService;

@Controller

public class DashBoardController {

    private final UserService userService;
    private final ProductService productService;

    public DashBoardController(UserService userService, ProductService productService) {
        this.userService = userService;
        this.productService = productService;
    }

    @GetMapping("/admin")
    public String getDashBoard(Model model) {
        model.addAttribute("countUsers", userService.countUsers());
        model.addAttribute("countProducts", userService.countProducts());
        model.addAttribute("countOrders", userService.countOrders());
        model.addAttribute("countqtyProducts", productService.fetchProductQuantities());
        return "admin/dashboard/show";
    }
}
