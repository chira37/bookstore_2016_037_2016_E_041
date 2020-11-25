package uoj.networkapplicationdesign.bookstore.ControllersImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.ShoppingCartDAO;
import uoj.networkapplicationdesign.bookstore.ModelImpl.ShoppingCart;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.ShoppingCartService;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api/cart")
@RestController
public class ShoppingCartController {

    @Autowired
    private ShoppingCartService shoppingCartService;



    @PutMapping(value="/addToCart/{userID}/{bookID}")
    @PreAuthorize("hasRole('USER')")
    public ShoppingCart addToCart(@PathVariable int userID, @PathVariable int bookID) {
        ShoppingCart item = new ShoppingCart(userID, bookID);
        return shoppingCartService.addToCart(item);
    }

    @DeleteMapping(value="/removeFromCart/{userID}/{bookID}")
    @PreAuthorize("hasRole('USER')")
    public void removeFromCart(@PathVariable int userID, @PathVariable int bookID) {
        shoppingCartService.removeFromCart(userID, bookID);
    }

    @PutMapping(value="/updateCart/{userID}")
    @PreAuthorize("hasRole('USER')")
    public void updateCart(@PathVariable int userID, @RequestBody List<Integer> bookIDs) {
        List<ShoppingCart> itemList = new ArrayList<ShoppingCart>();
        bookIDs.forEach(bookID-> itemList.add(new ShoppingCart(userID, bookID)) );
        shoppingCartService.updateCart(userID, itemList);
    }

    @DeleteMapping(value="/removeAllFromCart/{userID}")
    @PreAuthorize("hasRole('USER')")
    public void removeAllFromCart(@PathVariable int userID) {
        shoppingCartService.removeAllFromCart(userID);
    }

    @GetMapping(value="/getCartItems/{userID}")
    @PreAuthorize("hasRole('USER')")
    public List<Integer> getCartItems(@PathVariable int userID) {

        return shoppingCartService.getCartItems(userID);
    }


}

