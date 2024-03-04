package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Url {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "actualurl", length = 2048) 
	private String actualurl;
	
	private String shorterurl;
	private int visits;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getActualurl() {
		return actualurl;
	}

	public void setActualurl(String actualurl) {
		this.actualurl = actualurl;
	}

	public String getShorterurl() {
		return shorterurl;
	}

	public void setShorterurl(String shorterurl) {
		this.shorterurl = shorterurl;
	}

	public int getVisits() {
		return visits;
	}

	public void setVisits(int visits) {
		this.visits = visits;
	}
}
