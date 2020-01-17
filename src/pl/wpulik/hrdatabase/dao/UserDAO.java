package pl.wpulik.hrdatabase.dao;

import java.util.List;

import pl.wpulik.hrdatabase.model.User;

public interface UserDAO {
	
	public User create(User user);
	
	public List <User> read(String lastname);
	
	public User readById(Long primaryKey);
	
	public User getUserByUsername(String username);
	
	public boolean update(User user);
	
	public boolean delete(Long id);

}
