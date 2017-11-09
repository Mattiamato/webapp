package ch.devmathis.webapp.services;

import ch.devmathis.webapp.models.User;

public interface UserService {
	
	public User findUserByEmail(String email);
	
	public void saveUser(User user, String role);
}