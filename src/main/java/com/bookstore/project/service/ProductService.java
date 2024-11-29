package com.bookstore.project.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jakarta.servlet.http.HttpSession;
import com.bookstore.project.domain.Cart;
import com.bookstore.project.domain.CartDetail;
import com.bookstore.project.domain.Order;
import com.bookstore.project.domain.OrderDetail;
import com.bookstore.project.domain.Product;
import com.bookstore.project.domain.User;
import com.bookstore.project.repository.CartDetailRepository;
import com.bookstore.project.repository.CartRepository;
import com.bookstore.project.repository.OrderDetailRepository;
import com.bookstore.project.repository.OrderRepository;
import com.bookstore.project.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserService userService;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;

    public ProductService(ProductRepository productRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UserService userService,
            OrderDetailRepository orderDetailRepository, OrderRepository orderRepository) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.userService = userService;
        this.orderDetailRepository = orderDetailRepository;
        this.orderRepository = orderRepository;
    }

    public Product handelSaveProduct(Product product) {
        Product anric = this.productRepository.save(product);
        return anric;
    }

    public List<Product> fetchProducts() {
        return this.productRepository.findAll();
    }

    public Page<Product> fetchSubPageAbleProducts(Pageable page) {
        return this.productRepository.findAll(page);
    }

    public Page<Product> fetchPageAbleProducts(Pageable page) {
        return this.productRepository.findAll(page);
    }

    public int fetchProductQuantities() {
        int qty = 0;
        List<Product> products = fetchProducts();
        List<Integer> quantities = new ArrayList<>();
        for (Product product : products) {
            qty += product.getQuantity();
        }
        return qty;
    }

    public Optional<Product> fetchProductById(long id) {
        return this.productRepository.findById(id);
    }

    public void deleteProduct(long id) {
        this.productRepository.deleteById(id);
    }

    public void handleAddProductToCart(String email, long productId, HttpSession session, long quantity) {
        // check user đã có cart hay chưa ? nếu chưa -> tạo mới
        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);
            if (cart == null) {
                // tạo mới cart
                Cart otherCart = new Cart();
                otherCart.setUser(user);
                otherCart.setSum(0);

                cart = this.cartRepository.save(otherCart);
            }

            // lưu cart_detail
            // tìm product by id
            Optional<Product> productOptional = this.productRepository.findById(productId);
            if (productOptional.isPresent()) {
                Product realProduct = productOptional.get();
                // check sản phẩm đã từng được thêm vào giỏ hàng trước đây chưa ?
                CartDetail oldDetail = this.cartDetailRepository.findByCartAndProduct(cart, realProduct);
                if (oldDetail == null) {
                    CartDetail cd = new CartDetail();
                    cd.setCart(cart);
                    cd.setProduct(realProduct);
                    cd.setPrice(realProduct.getPrice());
                    cd.setQuantity(quantity);

                    this.cartDetailRepository.save(cd);

                    // update cart (sum)
                    int s = cart.getSum() + 1;
                    cart.setSum(s);
                    this.cartRepository.save(cart);
                    session.setAttribute("sum", s);
                } else {
                    oldDetail.setQuantity(oldDetail.getQuantity() + quantity);
                    this.cartDetailRepository.save(oldDetail);
                }

            }
        }

    }

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handleDeleteCartDetail(long cartDetailId, HttpSession session) {
        Optional<CartDetail> cartDetailOptional = this.cartDetailRepository.findById(cartDetailId);
        if (cartDetailOptional.isPresent()) {
            CartDetail cartDetail = cartDetailOptional.get();

            Cart currenCart = cartDetail.getCart();
            // delete cart
            this.cartDetailRepository.deleteById(cartDetailId);

            // update cart
            if (currenCart.getSum() > 1) {
                int s = currenCart.getSum() - 1;
                currenCart.setSum(s);
                session.setAttribute("sum", s);
                this.cartRepository.save(currenCart);
            } else {
                this.cartRepository.delete(currenCart);
                // this.cartRepository.deleteById(currenCart.getId());
                session.setAttribute("sum", 0);
            }
        }
    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cartDetail : cartDetails) {
            Optional<CartDetail> cdOptional = this.cartDetailRepository.findById(cartDetail.getId());
            if (cdOptional.isPresent()) {
                CartDetail currentCartDetail = cdOptional.get();
                currentCartDetail.setQuantity(cartDetail.getQuantity());
                this.cartDetailRepository.save(currentCartDetail);
            }
        }
    }

    @Transactional
    public void handlePlaceOrder(User user, HttpSession session, String receiverName, String receiverAddress,
            String receiverPhone) {

        // B1: Lấy giỏ hàng của người dùng
        Cart cart = this.cartRepository.findByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart.getCartDetails();
            if (cartDetails != null) {
                // Tạo đơn hàng
                Order order = new Order();
                order.setUser(user);
                order.setReceiverName(receiverName);
                order.setReceiverAddress(receiverAddress);
                order.setReceiverPhone(receiverPhone);
                order.setStatus("PENDING");

                // Tính tổng giá trị đơn hàng
                double sum = 0;
                for (CartDetail cd : cartDetails) {
                    sum += cd.getPrice();
                }
                order.setTotalPrice(sum);

                // Lưu đơn hàng vào cơ sở dữ liệu một lần duy nhất
                // Chỉ cần gọi save một lần, không cần gọi lại sau khi thêm chi tiết đơn hàng
                order = this.orderRepository.save(order);

                // Tạo chi tiết đơn hàng (OrderDetail)
                for (CartDetail cd : cartDetails) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setOrder(order); // Liên kết chi tiết với đơn hàng
                    orderDetail.setProduct(cd.getProduct());
                    orderDetail.setPrice(cd.getPrice());
                    orderDetail.setQuantity(cd.getQuantity());
                    this.orderDetailRepository.save(orderDetail); // Lưu chi tiết đơn hàng
                }

                // B2: Xóa các chi tiết giỏ hàng và giỏ hàng sau khi đặt hàng
                for (CartDetail cd : cartDetails) {
                    this.cartDetailRepository.deleteById(cd.getId());
                }
                this.cartRepository.deleteById(cart.getId());

                // B3: Cập nhật lại session
                session.setAttribute("sum", 0);
            }
        }
    }

    public List<Product> searchProductsByName(String name) {
        return productRepository.searchByName(name);
    }

    // public List<User> searchUsersByName(String name) {
    // return userRepository.searchByName(name);
    // }

    // public List<Product> searchBooks(String query) {
    // // Chuyển query thành chữ thường (case-insensitive)
    // String searchQuery = "%" + query.toLowerCase() + "%";

    // // Tìm kiếm sách theo tên hoặc tác giả
    // return productRepository.findByTitleLikeOrAuthorLike(searchQuery,
    // searchQuery);
    // }
}
