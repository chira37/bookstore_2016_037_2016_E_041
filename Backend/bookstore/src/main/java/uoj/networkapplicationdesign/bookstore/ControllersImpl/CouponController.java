package uoj.networkapplicationdesign.bookstore.ControllersImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import uoj.networkapplicationdesign.bookstore.ModelImpl.BookData;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Coupon;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.BookListService;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.CouponService;
import uoj.networkapplicationdesign.bookstore.payload.request.LoginRequest;
import uoj.networkapplicationdesign.bookstore.payload.response.MessageResponse;

import javax.validation.Valid;
import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api/coupon")
@RestController
public class CouponController {

	@Autowired

	private CouponService couponService;

	@PostMapping(value="/addCoupon")
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> addCoupon(@RequestBody Coupon coupon) {
		try {
			couponService.addCoupon(coupon);
			return ResponseEntity.ok( new MessageResponse("Coupon is added successfully!"));
		}
		catch (Exception e){
			return ResponseEntity.badRequest().body(new MessageResponse("Fail to add the coupon"));
		}

	}

	@GetMapping(value="/getAllCoupon")
	@PreAuthorize("hasRole('ADMIN')")
	public List<Coupon> getAllCoupon() {
		return couponService.getAllCoupon();
	}

	@GetMapping(value="/getCoupon/{code}")
	public Coupon getCoupon(@PathVariable String code) {
		return couponService.getCoupon(code);
	}

	@DeleteMapping(value="/deleteCoupon/{id}")
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<?> deleteCoupon(@PathVariable int id) {
		try {
			couponService.deleteCoupon(id);
			return ResponseEntity.ok( new MessageResponse("Coupon is deleted successfully!"));
		}
		catch (Exception e){
			return ResponseEntity.badRequest().body(new MessageResponse("Fail to deleted the coupon"));
		}
	}



}

