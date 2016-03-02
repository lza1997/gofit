package org.been;

import java.util.HashSet;
import java.util.Set;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String pwd;
	private String email;
	private String city;
	private String address;
	private String level="user";
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** minimal constructor */
	public Userinfo(String username, String pwd, String email, String city) {
		this.username = username;
		this.pwd = pwd;
		this.email = email;
		this.city = city;
	}

	/** full constructor */
	public Userinfo(String username, String pwd, String email, String city,
			String address, String level, Set orders) {
		this.username = username;
		this.pwd = pwd;
		this.email = email;
		this.city = city;
		this.address = address;
		this.level = level;
		this.orders = orders;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLevel() {
		return this.level;
	}

	public void setLevel(String level) {
		this.level = "user";
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}