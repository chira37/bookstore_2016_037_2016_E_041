package uoj.networkapplicationdesign.bookstore.ControllersImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Coupon;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Log;
import uoj.networkapplicationdesign.bookstore.ModelImpl.ShoppingCart;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.LogService;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.ShoppingCartService;
import uoj.networkapplicationdesign.bookstore.payload.response.MessageResponse;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api/log")
@RestController
public class LogController {

    @Autowired
    private LogService logService;

    @PostMapping(value="/addLog")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<?> addCoupon(@RequestBody Log log) {
        try {
            logService.addLog(log);
            return ResponseEntity.ok( new MessageResponse("Log is added successfully!"));
        }
        catch (Exception e){
            return ResponseEntity.badRequest().body(new MessageResponse("Fail to add the Log"));
        }

    }

    @GetMapping(value="/getAllLog")
    @PreAuthorize("hasRole('ADMIN')")
    public List<Log> addCoupon() {
        return logService.getAllLog();
    }


}

