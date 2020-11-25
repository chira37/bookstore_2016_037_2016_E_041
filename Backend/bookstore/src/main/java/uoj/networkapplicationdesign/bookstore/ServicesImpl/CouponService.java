package uoj.networkapplicationdesign.bookstore.ServicesImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.BookListDAO;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.CouponDAO;
import uoj.networkapplicationdesign.bookstore.ModelImpl.BookData;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Coupon;

import java.util.List;

@Service
public class CouponService {

    @Autowired
    private CouponDAO couponDAO;


    public List<Coupon> getAllCoupon(){
        return couponDAO.findAll();
    }

    public void addCoupon(Coupon coupon){
        couponDAO.save(coupon);
    }

    public void deleteCoupon(int id){
        couponDAO.delete(couponDAO.findById(id).get());
    }

    public Coupon getCoupon(String code){
        return couponDAO.findByCodeEquals(code);
    }

}
