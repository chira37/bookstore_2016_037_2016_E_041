package uoj.networkapplicationdesign.bookstore.DelegationImpl;


import org.springframework.data.jpa.repository.JpaRepository;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Coupon;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Log;


public interface LogDAO extends JpaRepository<Log, Integer> {

}