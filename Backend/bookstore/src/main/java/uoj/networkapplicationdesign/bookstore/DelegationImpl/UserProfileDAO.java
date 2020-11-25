package uoj.networkapplicationdesign.bookstore.DelegationImpl;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uoj.networkapplicationdesign.bookstore.ModelImpl.UserProfile;

import java.util.Optional;

@Repository
public interface UserProfileDAO extends JpaRepository<UserProfile, Integer> {
    Optional<UserProfile> findByUsername(String username);

    Boolean existsByUsername(String username);
    Boolean existsByEmailAddress(String email);

}
