package com.bookstore.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.bookstore.project.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product product);
}

// package com.bookstore.project.repository;

// import java.util.List;
// import org.springframework.data.jpa.repository.JpaRepository;
// import org.springframework.stereotype.Repository;

// import com.bookstore.project.domain.User;

// @Repository
// public interface UserRepository extends JpaRepository<User, Long> {
// User save(User dovanan);

// void deleteById(long id);

// List<User> findByEmail(String email);

// User findById(long id);

// List<User> findAll();
// }
