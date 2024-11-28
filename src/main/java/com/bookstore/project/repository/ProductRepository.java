package com.bookstore.project.repository;

import java.util.List;

import org.antlr.v4.runtime.atn.SemanticContext.OR;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.bookstore.project.domain.Product;
import com.bookstore.project.domain.User;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product product);

    Page<Product> findAll(Pageable page);

    // List<Product> findByTitleLikeOrAuthorLike(String title, String author);

    @Query("SELECT u FROM Product u WHERE LOWER(u.title) LIKE LOWER(CONCAT('%', :name, '%')) OR LOWER(u.author) LIKE LOWER(CONCAT('%', :name, '%')) OR LOWER(u.description) LIKE LOWER(CONCAT('%', :name, '%')) OR LOWER(u.genre) LIKE LOWER(CONCAT('%', :name, '%')) OR LOWER(u.publisher) LIKE LOWER(CONCAT('%', :name, '%'))")
    List<Product> searchByName(@Param("name") String name);
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
