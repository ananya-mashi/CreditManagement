package com.ananya.creditmanagement.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="user")

public class User {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;

	
	@Column(unique=true)
	private String name;

	private String email;

	@Column(name="current_credit")
	private int currentCredit;
	
	private int amount;
public User() {
	
}

	public User(Long id, String name, String email, int currentCredit, int amount) {
	super();
	this.id = id;
	this.name = name;
	this.email = email;
	this.currentCredit = currentCredit;
	this.amount = amount;
}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getCurrentCredit() {
		return currentCredit;
	}

	public void setCurrentCredit(int currentCredit) {
		this.currentCredit = currentCredit;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", currentCredit=" + currentCredit
				+ ", amount=" + amount + "]";
	}

	
	


}
