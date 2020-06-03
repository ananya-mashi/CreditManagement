package com.ananya.creditmanagement.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ananya.creditmanagement.model.User;

public interface UserRepository extends JpaRepository<User,Long> {

	Optional<User> findById(Long id);

	Optional<User> findByName(String name);
	
}
