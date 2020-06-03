package com.ananya.creditmanagement.service;

import java.util.List;
import java.util.Optional;

import com.ananya.creditmanagement.model.History;
import com.ananya.creditmanagement.model.User;


public interface UserService {
	public List<User> findAll();
		public void save(User theuser);

	public User findById(Long id);

	public User findByName(String name);
	public List<History> findAllT();

	public void save(History h);
	
	public History findBySender(String sender,String receiver,int amount);

}
