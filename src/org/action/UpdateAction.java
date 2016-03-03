package org.action;

import java.util.Map;

import javassist.expr.NewArray;

import org.HibernateSessionFactory;
import org.DAO.UserinfoDAO;
import org.apache.struts2.interceptor.SessionAware;
import org.been.Userinfo;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.interceptor.AuthenticationInterceptor;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateAction extends ActionSupport implements SessionAware{
	private Map session;private String username;
	private String pwd;
	private String email;
	private String city;
	private String address;
	private Userinfo userinfo;
	UserinfoDAO userinfoDAO = new UserinfoDAO();
	@Override
	public String execute() throws Exception {
		 userinfo = (Userinfo) session.get(AuthenticationInterceptor.USER_SESSION_KEY);
		if (userinfo!=null) {
			userinfo.setUsername(userinfo.getUsername());
			userinfo.setPwd(pwd);
			userinfo.setCity(city);
			userinfo.setAddress(address);
			Session session = HibernateSessionFactory.getSession();
			Transaction tx = session.beginTransaction();
			session.update(userinfo);
			tx.commit();
			session.close();
			
		}
		return "update";	
	}
	public void setSession(Map session) {
		this.session = session;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Userinfo getUserinfo() {
		return userinfo;
	}
	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
	

}
