package org.been;

import java.sql.Timestamp;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer id;
	private Foodinfo foodinfo;
	private Userinfo userinfo;
	private Short productnum;
	private Double money;
	private String city;
	private String address;
	private String phonenum;
	private String ordernum;
	private String status;
	private Timestamp orderdate;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** full constructor */
	public Order(Foodinfo foodinfo, Userinfo userinfo, Short productnum,
			Double money, String city, String address, String phonenum,
			String ordernum, String status, Timestamp orderdate) {
		this.foodinfo = foodinfo;
		this.userinfo = userinfo;
		this.productnum = productnum;
		this.money = money;
		this.city = city;
		this.address = address;
		this.phonenum = phonenum;
		this.ordernum = ordernum;
		this.status = status;
		this.orderdate = orderdate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Foodinfo getFoodinfo() {
		return this.foodinfo;
	}

	public void setFoodinfo(Foodinfo foodinfo) {
		this.foodinfo = foodinfo;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Short getProductnum() {
		return this.productnum;
	}

	public void setProductnum(Short productnum) {
		this.productnum = productnum;
	}

	public Double getMoney() {
		return this.money;
	}

	public void setMoney(Double money) {
		this.money = money;
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

	public String getPhonenum() {
		return this.phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public String getOrdernum() {
		return this.ordernum;
	}

	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(Timestamp orderdate) {
		this.orderdate = orderdate;
	}

}