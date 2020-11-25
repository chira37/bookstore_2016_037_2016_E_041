package uoj.networkapplicationdesign.bookstore.ModelImpl;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "coupon")
public class Coupon {


    @Id
    int id;
    String code;
    int discount;
    String expireDate;

    public Coupon(){

    }

    public Coupon(int id, String code, int discount, String expireDate) {
        this.id = id;
        this.code = code;
        this.discount = discount;
        this.expireDate = expireDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(String expireDate) {
        this.expireDate = expireDate;
    }
}
