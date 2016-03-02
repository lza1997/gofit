package org.been;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Foodinfo entity. @author MyEclipse Persistence Tools
 */

public class Foodinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private Foodtype foodtype;
	private String foodName;
	private String intro;
	private Double price;
	private String picture;
	private String city;
	private Integer salenum;
	private Timestamp date;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Foodinfo() {
	}

	/** minimal constructor */
	public Foodinfo(Foodtype foodtype, String foodName, Double price,
			String city, Timestamp date) {
		this.foodtype = foodtype;
		this.foodName = foodName;
		this.price = price;
		this.city = city;
		this.date = date;
	}

	/** full constructor */
	public Foodinfo(Foodtype foodtype, String foodName, String intro,
			Double price, String picture, String city, Integer salenum,
			Timestamp date, Set orders) {
		this.foodtype = foodtype;
		this.foodName = foodName;
		this.intro = intro;
		this.price = price;
		this.picture = picture;
		this.city = city;
		this.salenum = salenum;
		this.date = date;
		this.orders = orders;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Foodtype getFoodtype() {
		return this.foodtype;
	}

	public void setFoodtype(Foodtype foodtype) {
		this.foodtype = foodtype;
	}

	public String getFoodName() {
		return this.foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getIntro() {
		return this.intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getSalenum() {
		return this.salenum;
	}

	public void setSalenum(Integer salenum) {
		this.salenum = salenum;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}