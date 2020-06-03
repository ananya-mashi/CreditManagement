package com.ananya.creditmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="transaction")
public class History {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;

	
	private String sender;

	private String receiver;


	private int amount;
	

	public History() {
		
	}

	public History(Long id, String sender, String receiver, int amount) {
		super();
		this.id = id;
		this.sender = sender;
		this.receiver = receiver;
		this.amount = amount;
	}


	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getSender() {
		return sender;
	}


	public void setSender(String sender) {
		this.sender = sender;
	}


	public String getReceiver() {
		return receiver;
	}


	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}

	@Override
	public String toString() {
		return "History [id=" + id + ", sender=" + sender + ", receiver=" + receiver + ", amount=" + amount + "]";
	}

	

}
