package com.bookstore.project.controller.admin;

import java.util.List;
import java.util.Optional;
import java.io.*;
import java.io.IOException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;

import jakarta.servlet.ServletContext;
import jakarta.validation.Valid;
import com.bookstore.project.domain.User;
import com.bookstore.project.repository.UserRepository;
import com.bookstore.project.service.UploadService;
import com.bookstore.project.service.UserService;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model,
            @RequestParam(name = "page", defaultValue = "1") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            } else {

            }
        } catch (Exception e) {

        }
        Pageable pageable = PageRequest.of(page - 1, 5);
        Page<User> usersPage = this.userService.fetchPageAbleUsers(pageable);
        List<User> list = usersPage.getContent();
        model.addAttribute("users", list);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", usersPage.getTotalPages());
        List<User> users = this.userService.getAllUsers();
        System.out.println(">>> check users: " + users);
        model.addAttribute("users1", users);
        // return "admin/user/table-user";
        return "admin/user/show";
    }

    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        System.out.println("check path id = " + id);
        model.addAttribute("id", id);
        model.addAttribute("user", this.userService.getUserById(id));
        // return "admin/user/show";// link jsp
        return "admin/user/detail";// link jsp
    }

    // update
    @RequestMapping("/admin/user/update/{id}")
    public String getUserUpdatePage(Model model, @PathVariable long id) {
        User currentUser = this.userService.getUserById(id);
        model.addAttribute("newUser", currentUser);
        return "admin/user/update";// link jsp
    }

    @PostMapping("/admin/user/update")
    public String handleUserUpdate(Model model, @ModelAttribute("newUser") User dovanan) {
        User currentUser = this.userService.getUserById(dovanan.getId());
        if (currentUser != null) {
            currentUser.setAddress(dovanan.getAddress());
            currentUser.setFullName(dovanan.getFullName());
            currentUser.setPhone(dovanan.getPhone());
            this.userService.handelSaveUser(currentUser);
        }
        return "redirect:/admin/user";
    }

    // create
    @GetMapping("/admin/user/create") // link tren thanh url
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";// link jsp
    }

    @PostMapping(value = "/admin/user/create")
    public String handleCreateUser(Model model,
            @ModelAttribute("newUser") @Valid User dovanan,
            BindingResult newUserbindingResult,
            @RequestParam("File") MultipartFile file) {

        // validate
        List<FieldError> errors = newUserbindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(error.getField() + " - " + error.getDefaultMessage());
        }

        if (newUserbindingResult.hasErrors()) {
            return "admin/user/create";
        }
        // neu hop le
        String avatar = this.uploadService.handelSaveUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(dovanan.getPassword());

        dovanan.setAvatar(avatar);
        dovanan.setPassword(hashPassword);
        dovanan.setRole(this.userService.getRoleByName(dovanan.getRole().getName()));// lay id ???
        // System.out.println("run here" + dovanan);
        this.userService.handelSaveUser(dovanan);
        return "redirect:/admin/user";// redirect ve link url
    }

    // delete
    @GetMapping("/admin/user/delete/{id}")
    public String getUserDeletePage(Model model, @PathVariable long id) {
        model.addAttribute("newUser", new User());
        // User user = new User();
        // user.setId(id);
        // model.addAttribute("newUser", user);
        model.addAttribute("id", id);
        return "admin/user/delete";// link jsp
    }

    @PostMapping("/admin/user/delete")
    public String handleDeleteUser(Model model, @ModelAttribute("newUser") User dovanan) {
        System.out.println("run hereeeeeee");
        this.userService.deleteAUser(dovanan.getId());
        return "redirect:/admin/user";
    }

}
