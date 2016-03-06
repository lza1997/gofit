package org.action;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.HibernateSessionFactory;
import org.DAO.FoodinfoDAO;
import org.DAO.OrderDAO;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.been.Foodinfo;
import org.been.Foodtype;
import org.been.Order;
import org.been.Userinfo;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.interceptor.AuthenticationInterceptor;

import com.alipay.util.httpClient.HttpRequest;
import com.opensymphony.xwork2.ActionSupport;

public class CartAction extends ActionSupport implements SessionAware{
	private Order order;
	private List<Order> orders;
	private String address;
	private String phonenum;
	private String buynumber;
	private Integer id;
	private Foodtype foodtype;
	private String foodName;
	private String intro;
	private Double price;
	private String picture;
	private String city;
	private Integer salenum;
	private Timestamp date;
	private List<Foodinfo> foodinfos;
	private Foodinfo foodinfo;
	private double totalmoney=0.0;
	private List<Order> haveorderList;
	private Map sessionMap = new HashMap();
	private Map<Integer, Integer> foodmap;
	FoodinfoDAO foodinfoDAO = new FoodinfoDAO();
	OrderDAO orderDAO = new OrderDAO();
	
	public String add() throws Exception {
		Integer number = Integer.parseInt(buynumber);
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		foodinfo = foodinfoDAO.findById(id);
		tx.commit();
		session.close();
		foodmap = (Map)sessionMap.get("cart");
		if (foodmap==null) {
			foodmap = new HashMap<Integer, Integer>();
			foodmap.put(id, number);
		}else if (foodmap.get(id)==null) {
			foodmap.put(id, number);
		}else {
			foodmap.put(id, foodmap.get(id)+number);
		} 
		//锟芥到session锟斤拷
		sessionMap.put("cart", foodmap);
		return "add" ;
	}
	
	public String  view() throws Exception{
		foodmap = (Map<Integer, Integer>) sessionMap.get("cart");
		userinfo = (Userinfo) sessionMap.get(AuthenticationInterceptor.USER_SESSION_KEY);
		if (foodmap==null) {
			return "enpty" ;
		}
		orders = new ArrayList<Order>();
		for (Map.Entry<Integer, Integer> entry : foodmap.entrySet()) {  
			Session session = HibernateSessionFactory.getSession();
			Transaction tx = session.beginTransaction();
			foodinfo = foodinfoDAO.findById(entry.getKey());
			tx.commit();
			session.close();
			Order order1 = new Order();
			order1.setAddress(userinfo.getAddress());
			order1.setCity(userinfo.getCity());
			order1.setFoodinfo(foodinfo);
			order1.setProductnum(entry.getValue().shortValue());
			order1.setUserinfo(userinfo);
			order1.setMoney(order1.getProductnum()*foodinfo.getPrice());
			System.out.println(order1.getMoney());
			totalmoney=totalmoney+order1.getMoney();
			orders.add(order1);
		    System.out.println(foodinfo.getFoodName() +" : " +  entry.getValue());  
		}  
		sessionMap.put("order", orders);
		return "view" ;
	}
	
	public String remove() throws Exception{
		foodmap = (Map<Integer, Integer>) sessionMap.get("cart");
		foodmap.remove(id);
		orders = new ArrayList<Order>();
		userinfo = (Userinfo) sessionMap.get(AuthenticationInterceptor.USER_SESSION_KEY);
		for (Map.Entry<Integer, Integer> entry : foodmap.entrySet()) {  
			Session session = HibernateSessionFactory.getSession();
			Transaction tx = session.beginTransaction();
			foodinfo = foodinfoDAO.findById(entry.getKey());
			tx.commit();
			session.close();
			Order order1 = new Order();
			order1.setAddress(userinfo.getAddress());
			order1.setCity(userinfo.getCity());
			order1.setFoodinfo(foodinfo);
			order1.setProductnum(entry.getValue().shortValue());
			order1.setUserinfo(userinfo);
			order1.setMoney(order1.getProductnum()*foodinfo.getPrice());
			System.out.println(order1.getMoney());
			totalmoney=totalmoney+order1.getMoney();
			orders.add(order1);
		    System.out.println(foodinfo.getFoodName() +" : " +  entry.getValue());  
		}  
		sessionMap.put("order", orders);
		return "remove" ;
	}
	
	public String ordershow() throws Exception{
		userinfo = (Userinfo) sessionMap.get(AuthenticationInterceptor.USER_SESSION_KEY);
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		haveorderList =  session.createQuery("from Order where userid = '"+userinfo.getId()+"'")
	               .list();
		tx.commit();
		session.close();
		return "ordershow";
	}
	
	public String neworder()throws Exception {
		orders = (List<Order>) sessionMap.get("order");
		Iterator<Order> iterator = orders.iterator();
		while (iterator.hasNext()) {
			Order order = (Order) iterator.next();
			foodinfo = order.getFoodinfo();
			foodinfo.setSalenum(foodinfo.getSalenum()+order.getProductnum());
			order.setAddress(address);
			order.setPhonenum(phonenum);
			Date date = new Date();//锟斤拷锟较低呈憋拷锟�
			String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);//锟斤拷时锟斤拷锟绞阶拷锟斤拷煞锟斤拷Timestamp要锟斤拷母锟绞�
			Timestamp goodsCdate =Timestamp.valueOf(nowTime);//锟斤拷时锟斤拷转锟斤拷
			order.setOrderdate(goodsCdate);
			String orderNumber = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			order.setOrdernum(orderNumber);
			order.setStatus("锟斤拷锟斤拷");
			totalmoney=totalmoney+order.getMoney();
			Session session = HibernateSessionFactory.getSession();
			Transaction tx = session.beginTransaction();
			session.update(foodinfo);
			orderDAO.save(order);
			tx.commit();
			session.close();
			sessionMap.remove("cart");
			HttpServletRequest request = ServletActionContext.getRequest();
		    ServletContext servletContext = ServletActionContext.getServletContext();
		  
		}
		return "order";
		
	}
	
	public List<Order> getHaveorderList() {
		return haveorderList;
	}

	public void setHaveorderList(List<Order> haveorderList) {
		this.haveorderList = haveorderList;
	}

	public double getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(double totalmoney) {
		this.totalmoney = totalmoney;
	}
	
	public String getBuynumber() {
		return buynumber;
	}

	public void setBuynumber(String buynumber) {
		this.buynumber = buynumber;
	}
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	
	public Map<Integer, Integer> getFoodmap() {
		
		return foodmap;
	}

	public void setFoodmap(Map<Integer, Integer> foodmap) {
		this.foodmap = foodmap;
	}

	private Userinfo userinfo;
	
	
	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	
	public List<Foodinfo> getFoodinfos() {
		return foodinfos;
	}

	public void setFoodinfos(List<Foodinfo> foodinfos) {
		this.foodinfos = foodinfos;
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
	
	public Foodinfo getFoodinfo() {
		return foodinfo;
	}
	public void setFoodinfo(Foodinfo foodinfo) {
		this.foodinfo = foodinfo;
	}
	public Map getSessionMap() {
		return sessionMap;
	}

	public void setSessionMap(Map sessionMap) {
		this.sessionMap = sessionMap;
	}

	public void setSession(Map map) {
		this.sessionMap = map;
		
	}
}

