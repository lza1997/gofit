package org.action;

import java.util.List;
import java.util.Map;
import org.HibernateSessionFactory;
import org.DAO.FoodinfoDAO;
import org.apache.struts2.interceptor.SessionAware;
import org.been.Foodinfo;
import org.been.Userinfo;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.interceptor.AuthenticationInterceptor;


import com.opensymphony.xwork2.ActionSupport;

public class GetFoodList extends ActionSupport implements SessionAware{
	private List<Foodinfo> foodinfos;
	private Userinfo userinfo;
	private Map sessionMap;

	@Override
	public String execute() throws Exception {
		userinfo = (Userinfo) sessionMap.get(AuthenticationInterceptor.USER_SESSION_KEY);
		FoodinfoDAO foodinfoDAO = new FoodinfoDAO();
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		foodinfos = foodinfoDAO.findAll();
		tx.commit();
		session.close();
		return SUCCESS ;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	
	public List<Foodinfo> getFoodinfos() {
		return foodinfos;
	}

	public void setFoodinfos(List<Foodinfo> foodinfos) {
		this.foodinfos = foodinfos;
	}

	public void setSession(Map map) {
		this.sessionMap = map;
		
	}
	

}
