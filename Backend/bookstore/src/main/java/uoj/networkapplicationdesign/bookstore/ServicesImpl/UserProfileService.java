package uoj.networkapplicationdesign.bookstore.ServicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import uoj.networkapplicationdesign.bookstore.DelegationImpl.UserProfileDAO;
import uoj.networkapplicationdesign.bookstore.ModelImpl.UserProfile;
import java.util.List;

@Service
public class UserProfileService {

    @Autowired
    private UserProfileDAO userProfileDAO;

    public UserProfile addUserProfile(UserProfile userProfile) {
        return userProfileDAO.save(userProfile);
    }

    public List<UserProfile> getAllUserProfiles()  {
        return userProfileDAO.findAll();
    }

    public UserProfile getUserProfileByID(int id) {
        return userProfileDAO.findById(id).get();
    }

    public void deleteUserProfileByID(int id) {
        userProfileDAO.deleteById(id);
    }

}
