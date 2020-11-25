package uoj.networkapplicationdesign.bookstore.ControllersImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uoj.networkapplicationdesign.bookstore.ModelImpl.UserProfile;
import uoj.networkapplicationdesign.bookstore.ServicesImpl.UserProfileService;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("api/userprofile")
@RestController
public class UserProfileController {

    @Autowired
    private UserProfileService userProfileService;

    @GetMapping(value="/addUserProfile")
    public UserProfile addUserProfile() {
        UserProfile person = new UserProfile("shehan","1234","shehan@gmail.com",
                "Karal,Gona",true,"4562");
        return userProfileService.addUserProfile(person);
    }

    @GetMapping(value="/viewUserProfileList")
    public List< UserProfile > viewUserProfileList() {
        return userProfileService.getAllUserProfiles();
    }




}

