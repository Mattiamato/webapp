package ch.devmathis.webapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ch.devmathis.webapp.models.User;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {
	
	 User findByEmail(String email);
}