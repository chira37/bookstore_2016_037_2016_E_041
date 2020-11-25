package uoj.networkapplicationdesign.bookstore.ServicesImpl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.ShoppingCartDAO;
import uoj.networkapplicationdesign.bookstore.ModelImpl.ShoppingCart;

import java.util.ArrayList;
import java.util.List;

@Service
public class ShoppingCartService{

    @Autowired
    private ShoppingCartDAO shoppingCartDAO;

    public ShoppingCart addToCart(ShoppingCart item) {

        return shoppingCartDAO.save(item);
    }

    public void removeFromCart(int userID, int bookID){
        shoppingCartDAO.delete(shoppingCartDAO.findByUserIDEqualsAndBookIDEquals(userID, bookID));
    }

    public void removeAllFromCart(int userID){
        shoppingCartDAO.deleteAll(shoppingCartDAO.findAllByUserIDEquals(userID));
    }

    public List<Integer> getCartItems(int userID)  {
        List<Integer> cartItems = new ArrayList<Integer>();
        shoppingCartDAO.findAllByUserIDEquals(userID).forEach(item-> cartItems.add(item.getBookID()));
        return cartItems;
    }

    public void updateCart(int userID, List<ShoppingCart> itemList){
        shoppingCartDAO.deleteAll(shoppingCartDAO.findAllByUserIDEquals(userID));
        shoppingCartDAO.saveAll(itemList);
    }

}
