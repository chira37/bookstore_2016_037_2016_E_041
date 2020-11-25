package uoj.networkapplicationdesign.bookstore.ModelImpl;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "shoppingcart")
public class ShoppingCart  {

    @Id
    @GeneratedValue
    int itemNO;
    int userID;
    int bookID;

    public ShoppingCart() {
        this.userID = 0;
        this.bookID = 0;
    }

    public ShoppingCart(int userID, int bookID) {
        this.userID = userID;
        this.bookID = bookID;
    }

    public int getItemNO() {
        return itemNO;
    }

    public void setItemNO(int itemNO) {
        this.itemNO = itemNO;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }
}
