package interiorillusions.dao;

import java.util.ArrayList;

import interiorillusions.model.User;

public interface UserDao {
	void addUser(User u);
	ArrayList<User>getAllUser();

}
