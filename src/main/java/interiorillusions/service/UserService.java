package interiorillusions.service;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import interiorillusions.dao.impl.UserDaoImpl;
import interiorillusions.model.User;

@Service
@Transactional
public class UserService {
	
		@Autowired
		UserDaoImpl dao;
		
		public void addUser(User u){
			dao.addUser(u);
		} 
		
		public ArrayList<User>getUser(){
			return dao.getAllUser();
		}
		
	}

