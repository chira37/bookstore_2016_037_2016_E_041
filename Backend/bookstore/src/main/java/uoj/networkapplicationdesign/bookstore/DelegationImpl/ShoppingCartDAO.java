package uoj.networkapplicationdesign.bookstore.DelegationImpl;


import org.springframework.data.jpa.repository.JpaRepository;
import uoj.networkapplicationdesign.bookstore.ModelImpl.ShoppingCart;

import java.util.List;


public interface ShoppingCartDAO extends JpaRepository<ShoppingCart, Integer> {
    List<ShoppingCart> findAllByUserIDEquals(int userId);
    ShoppingCart findByUserIDEqualsAndBookIDEquals(int userId, int bookId);
}

