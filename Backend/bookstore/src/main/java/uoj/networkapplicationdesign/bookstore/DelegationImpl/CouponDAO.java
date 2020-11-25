package uoj.networkapplicationdesign.bookstore.DelegationImpl;


import org.springframework.data.jpa.repository.JpaRepository;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Coupon;
import uoj.networkapplicationdesign.bookstore.ModelImpl.ShoppingCart;


public interface CouponDAO extends JpaRepository<Coupon, Integer> {
    Coupon findByCodeEquals(String couponId);
}