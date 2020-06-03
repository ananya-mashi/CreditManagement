package com.ananya.creditmanagement.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ananya.creditmanagement.model.History;


public interface TRepo extends JpaRepository<History,Long> {

public List<History> findAllByOrderByIdDesc();

}
