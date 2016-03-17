package org.test;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.HibernateSessionFactory;
import org.DAO.FoodinfoDAO;
import org.DAO.FoodtypeDAO;
import org.DAO.OrderDAO;
import org.DAO.UserinfoDAO;
import org.been.Foodinfo;
import org.been.Foodtype;
import org.been.Order;
import org.been.Userinfo;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Test {
	private static String currentTime(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(new Date(System.currentTimeMillis()));
		return date;
	}
	private static void addType() {
		FoodtypeDAO ftd = new FoodtypeDAO();
		Foodtype ft = new Foodtype();
		ft.setId(1);
		ft.setTypename("����ʳƷ");
		ftd.save(ft);
	}
	private static void deleteType() {
		FoodtypeDAO ftd = new FoodtypeDAO();
		
		List fts = ftd.findByTypename("����ʳƷ");
		Foodtype ft = null;
		Iterator<Foodtype> it = fts.iterator();
		while(it.hasNext()){
			ft = it.next();
			ftd.delete(ft);
		}
	}
	private static void qurryType(){
		FoodtypeDAO ftd = new FoodtypeDAO();
		
		List fts = ftd.findAll();
		Foodtype ft = null;
		Iterator<Foodtype> it = fts.iterator();
		while(it.hasNext()){
			ft = it.next();
			System.out.println(ft.getTypename());
		}
	}
	private static void addFood(){
		FoodinfoDAO  fd = new FoodinfoDAO();
		Foodinfo f = new Foodinfo();
		f.setId(4);
		f.setFoodName("ը����");
		f.setFoodtype(new FoodtypeDAO().findById(4));
		f.setIntro("�ϱ�������");
		f.setPrice(6.5);
		f.setCity("����");
		//f.setDate();
	}
	
	public static  Userinfo getuser() {
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		UserinfoDAO userinfoDAO = new UserinfoDAO();
		Userinfo userinfo = userinfoDAO.findById(1);
		tx.commit();
		session.close();
		return userinfo;
	}
	
	public static  Order getLastOrder(Userinfo userinfo) {
		Session session1 = HibernateSessionFactory.getSession();
		Set<Order> orders = null;
		orders = userinfo.getOrders();
		Iterator<Order> iterator = orders.iterator();
		Order order = null;
		while (iterator.hasNext()) {
			order = (Order) iterator.next();
			break;
		}
		session1.clear();
		session1.close();
		return order;
	}
	
	public static void main(String[] args) {
		UserinfoDAO userinfoDAO = new UserinfoDAO();
		Userinfo userinfo = userinfoDAO.findById(54);
		Order order = getLastOrder(userinfo);
		System.out.println(order.getAddress());
		Order order1 = getLastOrder(userinfo);
		System.out.println(order1.getAddress());
		Order order2 = getLastOrder(userinfo);
		System.out.println(order2.getAddress());
	}
}
