package org.action;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

import org.HibernateSessionFactory;
import org.DAO.FoodinfoDAO;
import org.been.Foodinfo;
import org.been.Foodtype;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

public class Foodview extends ActionSupport {
	
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
	private Foodinfo foodinfo;
	FoodinfoDAO foodinfoDAO = new FoodinfoDAO();
	
	@Override
	public String execute() throws Exception {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		foodinfo = foodinfoDAO.findById(id);
		tx.commit();
		session.close();
		return "view";
	}
	public Foodinfo getFoodinfo() {
		return foodinfo;
	}

	public void setFoodinfo(Foodinfo foodinfo) {
		this.foodinfo = foodinfo;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Foodtype getFoodtype() {
		return foodtype;
	}
	public void setFoodtype(Foodtype foodtype) {
		this.foodtype = foodtype;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getSalenum() {
		return salenum;
	}
	public void setSalenum(Integer salenum) {
		this.salenum = salenum;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Set getOrders() {
		return orders;
	}
	public void setOrders(Set orders) {
		this.orders = orders;
	}


}
