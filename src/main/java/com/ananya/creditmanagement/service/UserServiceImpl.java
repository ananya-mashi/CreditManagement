package com.ananya.creditmanagement.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.ananya.creditmanagement.dao.TRepo;
import com.ananya.creditmanagement.dao.UserRepository;
import com.ananya.creditmanagement.model.History;
import com.ananya.creditmanagement.model.User;

@Service
public class UserServiceImpl implements UserService{
 
	private UserRepository userrepo;
	private TRepo t;

	
	@Autowired
	public UserServiceImpl(UserRepository theuserrepo,TRepo tr){
		userrepo=theuserrepo;
		t=tr;
	}
	
	@Override
	public List<User> findAll() {
	return userrepo.findAll();
	}
	@Override
	public void save(User theuser) {
		userrepo.save(theuser);
		
	}
	
	
	@Override
	public User findByName(String name) {
		Optional<User> result=userrepo.findByName(name);
		User user=null;
		if(result.isPresent()){
			user=result.get();
		}
		return user;
	
	}
	@Override
	public User findById(Long id) {

		
			// TODO Auto-generated method stub
			Optional<User> result = userrepo.findById(id);
			User user=null;
			if(result.isPresent()){
				user=result.get();
			}
			return user;
		
			
		
	}@Override
	public void save(History h) {
		t.save(h);
		
	}

	@Override
	public List<History> findAllT() {
	return t.findAllByOrderByIdDesc();
	}

	

	@Override
	public History findBySender(String sender,String receiver,int amount) {
		
			History h=new History(t.count()+1,sender,receiver,amount);
			t.save(h);
			return h;
			
	}
		
}

