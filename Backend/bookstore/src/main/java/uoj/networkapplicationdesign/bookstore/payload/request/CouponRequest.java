package uoj.networkapplicationdesign.bookstore.payload.request;

import javax.validation.constraints.NotBlank;

public class CouponRequest {
    @NotBlank
    int id;

    @NotBlank
    String code;

    @NotBlank
    int discount;

    @NotBlank
    String expireDate;

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
