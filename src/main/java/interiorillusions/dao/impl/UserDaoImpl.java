package interiorillusions.dao.impl;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import interiorillusions.dao.UserDao;
import interiorillusions.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired 
	SessionFactory sessionFactory;
	public void addUser(User u){
		//insert user
		Session session=sessionFactory.openSession();
		session.save(u);//insert
		session.flush();
	}
	public ArrayList<User> getAllUser() {
		// TODO Auto-generated method stub
		return null;
	}
	

}
