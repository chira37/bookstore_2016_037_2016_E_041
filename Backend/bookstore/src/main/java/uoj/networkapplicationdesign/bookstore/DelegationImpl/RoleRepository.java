package uoj.networkapplicationdesign.bookstore.DelegationImpl;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import uoj.networkapplicationdesign.bookstore.ModelImpl.ERole;
import uoj.networkapplicationdesign.bookstore.ModelImpl.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
	Optional<Role> findByName(ERole name);
}
