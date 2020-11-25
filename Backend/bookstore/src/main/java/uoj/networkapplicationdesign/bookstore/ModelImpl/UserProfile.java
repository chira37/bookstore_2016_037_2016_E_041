package uoj.networkapplicationdesign.bookstore.ModelImpl;

import javax.persistence.*;

@Entity
@Table(name = "userprofile")
public class UserProfile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer userID;
    String username;
    String password;
    String emailAddress;
    String postalAddress;
    boolean membership;
    String promotionCode;

    public UserProfile() {
        this.username = "TestUser";
        this.password = null;
        this.emailAddress = null;
        this.postalAddress = null;
        this.membership = false;
        this.promotionCode = null;
    }

    public UserProfile(String username, String password, String emailAddress, String postalAddress, boolean membership, String promotionCode){
        this.username = username;
        this.password = password;
        this.emailAddress = emailAddress;
        this.postalAddress = postalAddress;
        this.membership = membership;
        this.promotionCode = promotionCode;



    }

}
