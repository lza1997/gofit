package org.action;

import org.HibernateSessionFactory;
import org.DAO.UserinfoDAO;
import org.been.Userinfo;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport  {

	private static final long serialVersionUID = 1L;
	private String username;
	private String pwd;
	private String email;
	private String city;
	private String address;
	private Userinfo userinfo = new Userinfo();
	UserinfoDAO userinfoDAO = new UserinfoDAO();
	
	@Override
	public String execute() throws Exception {
		userinfo.setUsername(username);
		userinfo.setPwd(pwd);
		userinfo.setEmail(email);
		userinfo.setCity(city);
		userinfo.setAddress(address);
		Session session = HibernateSessionFactory.getSession();
		Transaction tx = session.beginTransaction();
		userinfoDAO.save(userinfo);
		tx.commit();
		session.close();
		System.out.println("OK");
		return "regist" ;
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
	
}
