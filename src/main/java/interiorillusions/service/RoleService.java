package interiorillusions.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import interiorillusions.dao.impl.RoleDaoImpl;
import interiorillusions.model.Role;

@Service
@Transactional


public class RoleService {
@Autowired
RoleDaoImpl dao;
public void addRole(Role r){
	dao.addRole(r);
	
}
}
